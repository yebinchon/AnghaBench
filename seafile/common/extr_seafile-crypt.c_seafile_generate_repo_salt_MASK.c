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
typedef  int /*<<< orphan*/  repo_salt_bin ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_RND_RANDOM ; 
 int FUNC0 (unsigned char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4 (char *repo_salt)
{
    unsigned char repo_salt_bin[32];

#ifdef USE_GPL_CRYPTO
    int rc = gnutls_rnd (GNUTLS_RND_RANDOM, repo_salt_bin, sizeof(repo_salt_bin));
#else
    int rc = FUNC0 (repo_salt_bin, sizeof(repo_salt_bin));
#endif
    if (rc != 1) {
        FUNC3 ("Failed to generate salt for repo encryption.\n");
        return -1;
    }

    FUNC2 (repo_salt_bin, repo_salt, 32);

    return 0;
}