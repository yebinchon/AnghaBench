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

/* Variables and functions */
 int SA_OK ; 
 int SA_SYNTAX_ERR ; 
 int /*<<< orphan*/  FUNC0 (char**,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(const char *key, const char *value, void *cookie)
{
	char **plinux_opts = (char **)cookie;

	/* host-specific options, these are taken care of elsewhere */
	if (FUNC1(key, "ro") == 0 || FUNC1(key, "rw") == 0 ||
	    FUNC1(key, "sec") == 0)
		return (SA_OK);

	if (FUNC1(key, "anon") == 0)
		key = "anonuid";

	if (FUNC1(key, "root_mapping") == 0) {
		(void) FUNC0(plinux_opts, "root_squash", NULL);
		key = "anonuid";
	}

	if (FUNC1(key, "nosub") == 0)
		key = "subtree_check";

	if (FUNC1(key, "insecure") != 0 && FUNC1(key, "secure") != 0 &&
	    FUNC1(key, "async") != 0 && FUNC1(key, "sync") != 0 &&
	    FUNC1(key, "no_wdelay") != 0 && FUNC1(key, "wdelay") != 0 &&
	    FUNC1(key, "nohide") != 0 && FUNC1(key, "hide") != 0 &&
	    FUNC1(key, "crossmnt") != 0 &&
	    FUNC1(key, "no_subtree_check") != 0 &&
	    FUNC1(key, "subtree_check") != 0 &&
	    FUNC1(key, "insecure_locks") != 0 &&
	    FUNC1(key, "secure_locks") != 0 &&
	    FUNC1(key, "no_auth_nlm") != 0 && FUNC1(key, "auth_nlm") != 0 &&
	    FUNC1(key, "no_acl") != 0 && FUNC1(key, "mountpoint") != 0 &&
	    FUNC1(key, "mp") != 0 && FUNC1(key, "fsuid") != 0 &&
	    FUNC1(key, "refer") != 0 && FUNC1(key, "replicas") != 0 &&
	    FUNC1(key, "root_squash") != 0 &&
	    FUNC1(key, "no_root_squash") != 0 &&
	    FUNC1(key, "all_squash") != 0 &&
	    FUNC1(key, "no_all_squash") != 0 && FUNC1(key, "fsid") != 0 &&
	    FUNC1(key, "anonuid") != 0 && FUNC1(key, "anongid") != 0) {
		return (SA_SYNTAX_ERR);
	}

	(void) FUNC0(plinux_opts, key, value);

	return (SA_OK);
}