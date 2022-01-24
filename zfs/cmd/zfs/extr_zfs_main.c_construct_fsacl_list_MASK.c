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
typedef  int /*<<< orphan*/  zfs_deleg_who_type_t ;
typedef  int uid_t ;
struct passwd {int pw_uid; } ;
struct group {int gr_gid; } ;
struct allow_opts {char const* who; int /*<<< orphan*/  perms; int /*<<< orphan*/  descend; int /*<<< orphan*/  local; scalar_t__ group; scalar_t__ user; scalar_t__ everyone; scalar_t__ create; scalar_t__ set; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZFS_DELEG_CREATE ; 
 int /*<<< orphan*/  ZFS_DELEG_EVERYONE ; 
 int /*<<< orphan*/  ZFS_DELEG_GROUP ; 
 int /*<<< orphan*/  ZFS_DELEG_NAMED_SET ; 
 int /*<<< orphan*/  ZFS_DELEG_USER ; 
 int /*<<< orphan*/  ZFS_DELEG_WHO_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct group* FUNC1 (int) ; 
 struct group* FUNC2 (char*) ; 
 struct passwd* FUNC3 (char*) ; 
 struct passwd* FUNC4 (int) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*,char) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(boolean_t un, struct allow_opts *opts, nvlist_t **nvlp)
{
	if (FUNC7(nvlp, NV_UNIQUE_NAME, 0) != 0)
		FUNC6();

	if (opts->set) {
		FUNC10(ZFS_DELEG_NAMED_SET, opts->local,
		    opts->descend, opts->who, opts->perms, *nvlp);
	} else if (opts->create) {
		FUNC10(ZFS_DELEG_CREATE, opts->local,
		    opts->descend, NULL, opts->perms, *nvlp);
	} else if (opts->everyone) {
		FUNC10(ZFS_DELEG_EVERYONE, opts->local,
		    opts->descend, NULL, opts->perms, *nvlp);
	} else {
		char *curr = opts->who;
		char *end = curr + FUNC12(curr);

		while (curr < end) {
			const char *who;
			zfs_deleg_who_type_t who_type = ZFS_DELEG_WHO_UNKNOWN;
			char *endch;
			char *delim = FUNC11(curr, ',');
			char errbuf[256];
			char id[64];
			struct passwd *p = NULL;
			struct group *g = NULL;

			uid_t rid;
			if (delim == NULL)
				delim = end;
			else
				*delim = '\0';

			rid = (uid_t)FUNC13(curr, &endch, 0);
			if (opts->user) {
				who_type = ZFS_DELEG_USER;
				if (*endch != '\0')
					p = FUNC3(curr);
				else
					p = FUNC4(rid);

				if (p != NULL)
					rid = p->pw_uid;
				else {
					(void) FUNC8(errbuf, 256, FUNC5(
					    "invalid user %s"), curr);
					FUNC0(un, B_TRUE, errbuf);
				}
			} else if (opts->group) {
				who_type = ZFS_DELEG_GROUP;
				if (*endch != '\0')
					g = FUNC2(curr);
				else
					g = FUNC1(rid);

				if (g != NULL)
					rid = g->gr_gid;
				else {
					(void) FUNC8(errbuf, 256, FUNC5(
					    "invalid group %s"),  curr);
					FUNC0(un, B_TRUE, errbuf);
				}
			} else {
				if (*endch != '\0') {
					p = FUNC3(curr);
				} else {
					p = FUNC4(rid);
				}

				if (p == NULL) {
					if (*endch != '\0') {
						g = FUNC2(curr);
					} else {
						g = FUNC1(rid);
					}
				}

				if (p != NULL) {
					who_type = ZFS_DELEG_USER;
					rid = p->pw_uid;
				} else if (g != NULL) {
					who_type = ZFS_DELEG_GROUP;
					rid = g->gr_gid;
				} else {
					(void) FUNC8(errbuf, 256, FUNC5(
					    "invalid user/group %s"), curr);
					FUNC0(un, B_TRUE, errbuf);
				}
			}

			(void) FUNC9(id, "%u", rid);
			who = id;

			FUNC10(who_type, opts->local,
			    opts->descend, who, opts->perms, *nvlp);
			curr = delim + 1;
		}
	}

	return (0);
}