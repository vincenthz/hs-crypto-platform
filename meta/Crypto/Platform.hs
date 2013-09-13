-- |
-- Module      : Crypto.Platform
-- License     : BSD-style
-- Maintainer  : Vincent Hanquez <vincent@snarc.org>
-- Stability   : stable
-- Portability : good
--
module Crypto.Platform
    (
      -- * classes
      CPRG(..)
    , BlockCipher(..)
    , StreamCipher(..)
    , HashAlgorithm(..)

    -- * cryptographic random and psuedo random
    , EntropyPool(..)
    , createEntropyPool
    , SystemRNG
    , AESRNG

    -- * symmetric cryptographic hash
    , Digest(..)
    , hash
    , hashlazy
	, SHA3_512   
	, SHA3_384   
	, SHA3_256   
	, SHA3_224   
	, SHA512     
	, SHA384     
	, SHA256     
	, SHA224     
	, SHA1   
	, MD5    
	, MD4    
	, MD2    

    -- * symmetric cryptographic cipher
    , AES
    , AES128
    , AES192
    , AES256
    , Blowfish
    , Camellia128
    , DES
    , DES_EEE3
    , DES_EDE3
    , DES_EEE2
    , DES_EDE2
    ) where

import Crypto.Random (CPRG(..), SystemRNG, createEntropyPool, EntropyPool)
import Crypto.Random.AESCtr (AESRNG)

import Crypto.Cipher.Types
import Crypto.Cipher.AES
import Crypto.Cipher.DES
import Crypto.Cipher.TripleDES
import Crypto.Cipher.Blowfish
import Crypto.Cipher.Camellia

import Crypto.Hash
