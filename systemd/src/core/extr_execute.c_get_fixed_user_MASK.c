#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_4__ {char* user; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  USER_CREDS_CLEAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const ExecContext *c, const char **user,
                          uid_t *uid, gid_t *gid,
                          const char **home, const char **shell) {
        int r;
        const char *name;

        FUNC0(c);

        if (!c->user)
                return 0;

        /* Note that we don't set $HOME or $SHELL if they are not particularly enlightening anyway
         * (i.e. are "/" or "/bin/nologin"). */

        name = c->user;
        r = FUNC1(&name, uid, gid, home, shell, USER_CREDS_CLEAN);
        if (r < 0)
                return r;

        *user = name;
        return 0;
}