haskell crypto platform
=======================

Goals
-----

Provide good access to cryptographic primitives and basic cryptographic
related primitives (ASN1, X509) from the haskell ecosystem.


ASN.1
-----

* asn1-types: all the ASN.1 types available for describing an ASN1 stream or objects.
* asn1-encoding: decoding and encoding binary serialization of ASN.1 types in BER and DER forms.
* asn1-parse: basic utility to parse an ASN.1 stream.

X.509
-----

* x509-types: X509 certificate and CRL, parsing and type definitions
* x509-validation: X509 signature, fingerprint and root of trust validation
* x509-store: a meta object to handle collection of X509 certificate
* x509-system: all the routine for system dependent handling of X509's CA gathering

Symmetric ciphers
-----------------

* crypto-cipher-types: provide basic types to write Stream and Block ciphers
  classes, with automatic support for basic mode (cbc, ctr, xts) with only a
  few function mandatory.
* crypto-cipher-tests: basic functions to derive easy to write block-cipher
  tests for block-cipher properties and easy testing of KATs (known answer
  tests)
* crypto-cipher-benchs: basic functions to derive easy to write benchmarks for
  encryption and decryption for block ciphers and their different mode of use
* crypto-cipher-aes: AES support. optimised with AESNI instructions when available
* crypto-cipher-blowfish: Blowfish support with all possible key size
* crypto-cipher-des: DES and 3DES support
* crypto-cipher-rc4: RC4 support
* crypto-cipher-camellia: Camellia support (128 bit only)

Hash
----

* cryptohash: Various fast cryptographic hash algorithms and HMAC
    * SHA: SHA1, SHA2 (224, 256, 384, 512, 512t), SHA3
    * Skein: 256, 512
    * RIPEDMD160
    * MD2, MD4, MD5
    * Whirlpool
    * Tiger
    * hmac
* siphash: fast hashing/MAC for safe hash table.

Asymettric ciphers (i.e. public key)
-----------------------------------

* crypto-pubkey-types

    public and private key types to provide RSA, DSA, DH types and basic ECC types
    with ASN1 serialization, to read and write keys from disk

* crypto-pubkey : public key implementation

    * RSA support with PKCS15 (encryption and signature), OAEP encryption, PSS signature
    * DSA (Digital Signature Algorithm) support
    * Basic DH (Diffie Hellman) support
    * ElGamal support

Random and pseudo random
------------------------

Random and Pseudo random generation

* crypto-random:

    Provide base types for Crypto pseudo random generation, and entropy gathering.

    CPRG trades predictability for a more user friendly interface with better default security.

    Entropy gathering has been adapted from the entropy package, and can gather source
    of entropy dynamically between different backends. supported backends:

    * RDRand: x86-64 random instruction to provide entropy available in Intel CPU (ivy bridge or greater)
    * /dev/random and /dev/urandom on unixes
    * CryptGenRandom cryptographic random generation on windows

    A System RNG that returns system entropy only is available too.

* cprng-aes: provide a CPRNG using AES in counter mode.
