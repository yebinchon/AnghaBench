#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char const uint8_t ;
typedef  int /*<<< orphan*/  salt ;
typedef  int /*<<< orphan*/  r ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  gcry_cipher_hd_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCRY_CIPHER_AES ; 
 int /*<<< orphan*/  GCRY_CIPHER_MODE_CTR ; 
 int /*<<< orphan*/  SRTP_AUTH ; 
 int /*<<< orphan*/  SRTP_CRYPT ; 
 int /*<<< orphan*/  SRTP_SALT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,char const*,int,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC5 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9 (void)
{
    static const uint8_t key[16] =
        "\xE1\xF9\x7A\x0D\x3E\x01\x8B\xE0\xD6\x4F\xA3\x2C\x06\xDE\x41\x39";
    static const uint8_t salt[14] =
        "\x0E\xC6\x75\xAD\x49\x8A\xFE\xEB\xB6\x96\x0B\x3A\xAB\xE6";

    static const uint8_t good_cipher[16] =
        "\xC6\x1E\x7A\x93\x74\x4F\x39\xEE\x10\x73\x4A\xFE\x3F\xF7\xA0\x87";
    static const uint8_t good_salt[14] =
        "\x30\xCB\xBC\x08\x86\x3D\x8C\x85\xD4\x9D\xB3\x4A\x9A\xE1";
    static const uint8_t good_auth[94] =
        "\xCE\xBE\x32\x1F\x6F\xF7\x71\x6B\x6F\xD4\xAB\x49\xAF\x25\x6A\x15"
        "\x6D\x38\xBA\xA4\x8F\x0A\x0A\xCF\x3C\x34\xE2\x35\x9E\x6C\xDB\xCE"
        "\xE0\x49\x64\x6C\x43\xD9\x32\x7A\xD1\x75\x57\x8E\xF7\x22\x70\x98"
        "\x63\x71\xC1\x0C\x9A\x36\x9A\xC2\xF9\x4A\x8C\x5F\xBC\xDD\xDC\x25"
        "\x6D\x6E\x91\x9A\x48\xB6\x10\xEF\x17\xC2\x04\x1E\x47\x40\x35\x76"
        "\x6B\x68\x64\x2C\x59\xBB\xFC\x2F\x34\xDB\x60\xDB\xDF\xB2";

    static const uint8_t r[6] = { 0, 0, 0, 0, 0, 0 };
    gcry_cipher_hd_t prf;
    uint8_t out[94];

    FUNC8 ("AES-CM key derivation test...");
    FUNC6 (" master key:  ");
    FUNC7 (key, sizeof (key));
    FUNC6 (" master salt: ");
    FUNC7 (salt, sizeof (salt));

    if (FUNC3 (&prf, GCRY_CIPHER_AES, GCRY_CIPHER_MODE_CTR, 0)
     || FUNC4 (prf, key, sizeof (key)))
        FUNC1 ("Internal PRF error");

    if (FUNC0 (prf, salt, r, sizeof (r), SRTP_CRYPT, out, 16))
        FUNC1 ("Internal cipher derivation error");
    FUNC6 (" cipher key:  ");
    FUNC7 (out, 16);
    if (FUNC5 (out, good_cipher, 16))
        FUNC1 ("Test failed");

    if (FUNC0 (prf, salt, r, sizeof (r), SRTP_SALT, out, 14))
        FUNC1 ("Internal salt derivation error");
    FUNC6 (" cipher salt: ");
    FUNC7 (out, 14);
    if (FUNC5 (out, good_salt, 14))
        FUNC1 ("Test failed");

    if (FUNC0 (prf, salt, r, sizeof (r), SRTP_AUTH, out, 94))
        FUNC1 ("Internal auth key derivation error");
    FUNC6 (" auth key:    ");
    FUNC7 (out, 94);
    if (FUNC5 (out, good_auth, 94))
        FUNC1 ("Test failed");

    FUNC2 (prf);
}