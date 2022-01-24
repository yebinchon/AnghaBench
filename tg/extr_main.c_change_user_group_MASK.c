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
struct passwd {int /*<<< orphan*/  pw_shell; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_name; int /*<<< orphan*/  pw_uid; scalar_t__ pw_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 () ; 
 struct group* FUNC2 (char*) ; 
 struct passwd* FUNC3 (char*) ; 
 struct passwd* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 char* set_group_name ; 
 char* set_user_name ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC10 () {
  char *username = set_user_name;
  char *groupname = set_group_name;
  struct passwd *pw;
  /* lose root privileges if we have them */
  if (FUNC5() == 0 || FUNC1() == 0) {
    if (username == 0 || *username == '\0') {
      username = "telegramd";
    }
    if ((pw = FUNC3 (username)) == 0) {
      FUNC0 (stderr, "change_user_group: can't find the user %s to switch to\n", username);
      return -1;
    }
    gid_t gid = pw->pw_gid;
    if (FUNC8 (1, &gid) < 0) {
      FUNC0 (stderr, "change_user_group: failed to clear supplementary groups list: %m\n");
      return -1;
    }

    if (groupname) {
      struct group *g = FUNC2 (groupname);
      if (g == NULL) {
        FUNC0 (stderr, "change_user_group: can't find the group %s to switch to\n", groupname);
        return -1;
      }
      gid = g->gr_gid;
    }

    if (FUNC7 (gid) < 0) {
      FUNC0 (stderr, "change_user_group: setgid (%d) failed. %m\n", (int) gid);
      return -1;
    }

    if (FUNC9 (pw->pw_uid) < 0) {
      FUNC0 (stderr, "change_user_group: failed to assume identity of user %s\n", username);
      return -1;
    } else {
      pw = FUNC4(FUNC5());
      FUNC6("USER", pw->pw_name, 1);
      FUNC6("HOME", pw->pw_dir, 1);
      FUNC6("SHELL", pw->pw_shell, 1);
    }
  }
  return 0;
}