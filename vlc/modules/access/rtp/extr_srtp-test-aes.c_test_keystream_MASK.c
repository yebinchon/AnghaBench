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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  good_start ;
typedef  int /*<<< orphan*/  good_end ;
typedef  int /*<<< orphan*/  gcry_cipher_hd_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCRY_CIPHER_AES ; 
 int /*<<< orphan*/  GCRY_CIPHER_MODE_CTR ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  const FUNC7 (int) ; 
 scalar_t__ FUNC8 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC13 (void)
{
    static const uint8_t key[16] =
        "\x2B\x7E\x15\x16\x28\xAE\xD2\xA6\xAB\xF7\x15\x88\x09\xCF\x4F\x3C";
    const uint32_t salt[4]=
        { FUNC7 (0xf0f1f2f3), FUNC7 (0xf4f5f6f7),
          FUNC7 (0xf8f9fafb), FUNC7 (0xfcfd0000) };

    FUNC11 ("AES-CM key stream test...");
    uint8_t *buf = FUNC0 (0xff02, 16);
    if (buf == NULL)
    {
        FUNC2 ("Not enough memory for test\n", stderr);
        return;
    }

    FUNC9 (" session key: ");
    FUNC10 (key, sizeof (key));

    gcry_cipher_hd_t hd;
    if (FUNC5 (&hd, GCRY_CIPHER_AES, GCRY_CIPHER_MODE_CTR, 0))
        FUNC1 ("Cipher initialization error");
    if (FUNC6 (hd, key, sizeof (key)))
        FUNC1 ("Cipher key error");

    if (FUNC12 (hd, 0, 0, 0, salt, buf, 0xff020))
        FUNC1 ("Encryption failure");
    FUNC4 (hd);

    static const uint8_t good_start[48] =
        "\xE0\x3E\xAD\x09\x35\xC9\x5E\x80\xE1\x66\xB1\x6D\xD9\x2B\x4E\xB4"
        "\xD2\x35\x13\x16\x2B\x02\xD0\xF7\x2A\x43\xA2\xFE\x4A\x5F\x97\xAB"
        "\x41\xE9\x5B\x3B\xB0\xA2\xE8\xDD\x47\x79\x01\xE4\xFC\xA8\x94\xC0";
    static const uint8_t good_end[48] =
        "\xEC\x8C\xDF\x73\x98\x60\x7C\xB0\xF2\xD2\x16\x75\xEA\x9E\xA1\xE4"
        "\x36\x2B\x7C\x3C\x67\x73\x51\x63\x18\xA0\x77\xD7\xFC\x50\x73\xAE"
        "\x6A\x2C\xC3\x78\x78\x89\x37\x4F\xBE\xB4\xC8\x1B\x17\xBA\x6C\x44";

    FUNC9 (" key stream:  ");
    FUNC10 (buf, sizeof (good_start));
    FUNC9 (" ... cont'd : ");
    FUNC10 (buf + 0xff020 - sizeof (good_end), sizeof (good_end));
    if (FUNC8 (buf, good_start, sizeof (good_start))
     || FUNC8 (buf + 0xff020 - sizeof (good_end), good_end,
                sizeof (good_end)))
        FUNC1 ("Key stream test failed");
    FUNC3 (buf);
}