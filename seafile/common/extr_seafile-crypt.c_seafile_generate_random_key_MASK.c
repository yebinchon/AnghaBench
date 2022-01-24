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
typedef  int /*<<< orphan*/  secret_key ;
typedef  unsigned char SeafileCrypt ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_RND_RANDOM ; 
 int FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned char* FUNC5 (int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int,char const*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (char**,int*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

int
FUNC9 (const char *passwd,
                             int version,
                             const char *repo_salt,
                             char *random_key)
{
    SeafileCrypt *crypt;
    unsigned char secret_key[32], *rand_key;
    int outlen;
    unsigned char key[32], iv[16];

#ifdef USE_GPL_CRYPTO
    if (gnutls_rnd (GNUTLS_RND_RANDOM, secret_key, sizeof(secret_key)) < 0) {
        seaf_warning ("Failed to generate secret key for repo encryption.\n");
        return -1;
    }
#else
    if (FUNC0 (secret_key, sizeof(secret_key)) != 1) {
        FUNC4 ("Failed to generate secret key for repo encryption.\n");
        return -1;
    }
#endif

    FUNC6 (passwd, FUNC8(passwd), version, repo_salt, key, iv);

    crypt = FUNC5 (version, key, iv);

    FUNC7 ((char **)&rand_key, &outlen,
                     (char *)secret_key, sizeof(secret_key), crypt);

    FUNC3 (rand_key, random_key, 48);

    FUNC1 (crypt);
    FUNC1 (rand_key);

    return 0;
}