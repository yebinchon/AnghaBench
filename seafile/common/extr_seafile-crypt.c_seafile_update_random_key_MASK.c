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
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned char* FUNC4 (int,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC5 (char**,int*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int,char const*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (char**,int*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

int
FUNC9 (const char *old_passwd, const char *old_random_key,
                           const char *new_passwd, char *new_random_key,
                           int enc_version, const char *repo_salt)
{
    unsigned char key[32], iv[16];
    unsigned char random_key_raw[48], *secret_key, *new_random_key_raw;
    int secret_key_len, random_key_len;
    SeafileCrypt *crypt;

    /* First, use old_passwd to decrypt secret key from old_random_key. */
    FUNC6 (old_passwd, FUNC8(old_passwd), enc_version,
                        repo_salt, key, iv);

    FUNC1 (old_random_key, random_key_raw, 48);

    crypt = FUNC4 (enc_version, key, iv);
    if (FUNC5 ((char **)&secret_key, &secret_key_len,
                         (char *)random_key_raw, 48,
                         crypt) < 0) {
        FUNC3 ("Failed to decrypt random key.\n");
        FUNC0 (crypt);
        return -1;
    }
    FUNC0 (crypt);

    /* Second, use new_passwd to encrypt secret key. */
    FUNC6 (new_passwd, FUNC8(new_passwd), enc_version,
                        repo_salt, key, iv);
    crypt = FUNC4 (enc_version, key, iv);

    FUNC7 ((char **)&new_random_key_raw, &random_key_len,
                     (char *)secret_key, secret_key_len, crypt);

    FUNC2 (new_random_key_raw, new_random_key, 48);

    FUNC0 (secret_key);
    FUNC0 (new_random_key_raw);
    FUNC0 (crypt);

    return 0;
}