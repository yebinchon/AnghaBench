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
typedef  unsigned char SeafileCrypt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned char* FUNC4 (int,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC5 (char**,int*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,int,char const*,unsigned char*,unsigned char*) ; 
 int FUNC7 (char const*) ; 

int
FUNC8 (int enc_version,
                              const char *passwd, const char *random_key,
                              const char *repo_salt,
                              unsigned char *key_out, unsigned char *iv_out)
{
    unsigned char key[32], iv[16];

    FUNC6 (passwd, FUNC7(passwd), enc_version, repo_salt, key, iv);

    if (enc_version == 1) {
        FUNC2 (key_out, key, 16);
        FUNC2 (iv_out, iv, 16);
        return 0;
    } else if (enc_version >= 2) {
        unsigned char enc_random_key[48], *dec_random_key;
        int outlen;
        SeafileCrypt *crypt;

        if (random_key == NULL || random_key[0] == 0) {
            FUNC3 ("Empty random key.\n");
            return -1;
        }

        FUNC1 (random_key, enc_random_key, 48);

        crypt = FUNC4 (enc_version, key, iv);
        if (FUNC5 ((char **)&dec_random_key, &outlen,
                             (char *)enc_random_key, 48,
                             crypt) < 0) {
            FUNC3 ("Failed to decrypt random key.\n");
            FUNC0 (crypt);
            return -1;
        }
        FUNC0 (crypt);

        FUNC6 ((char *)dec_random_key, 32, enc_version,
                            repo_salt,
                            key, iv);
        FUNC2 (key_out, key, 32);
        FUNC2 (iv_out, iv, 16);

        FUNC0 (dec_random_key);
        return 0;
    }

    return -1;
}