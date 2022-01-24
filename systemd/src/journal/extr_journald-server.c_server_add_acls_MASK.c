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
struct TYPE_4__ {int /*<<< orphan*/  path; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(JournalFile *f, uid_t uid) {
#if HAVE_ACL
        int r;
#endif
        FUNC1(f);

#if HAVE_ACL
        if (uid_for_system_journal(uid))
                return;

        r = add_acls_for_user(f->fd, uid);
        if (r < 0)
                log_warning_errno(r, "Failed to set ACL on %s, ignoring: %m", f->path);
#endif
}