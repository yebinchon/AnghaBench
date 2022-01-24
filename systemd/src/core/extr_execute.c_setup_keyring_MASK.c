#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
typedef  int key_serial_t ;
typedef  scalar_t__ gid_t ;
struct TYPE_10__ {scalar_t__ keyring_mode; int /*<<< orphan*/  invocation_id; } ;
typedef  TYPE_1__ Unit ;
typedef  TYPE_1__ ExecParameters ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 scalar_t__ EDQUOT ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  EPERM ; 
 scalar_t__ EXEC_KEYRING_INHERIT ; 
 scalar_t__ EXEC_KEYRING_SHARED ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYCTL_JOIN_SESSION_KEYRING ; 
 int /*<<< orphan*/  KEYCTL_LINK ; 
 int /*<<< orphan*/  KEYCTL_SETPERM ; 
 int KEY_POS_READ ; 
 int KEY_POS_SEARCH ; 
 int KEY_POS_VIEW ; 
 int KEY_SPEC_SESSION_KEYRING ; 
 int KEY_SPEC_USER_KEYRING ; 
 int KEY_USR_READ ; 
 int KEY_USR_SEARCH ; 
 int KEY_USR_VIEW ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,scalar_t__,char*) ; 
 int FUNC8 (TYPE_1__ const*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(
                const Unit *u,
                const ExecContext *context,
                const ExecParameters *p,
                uid_t uid, gid_t gid) {

        key_serial_t keyring;
        int r = 0;
        uid_t saved_uid;
        gid_t saved_gid;

        FUNC2(u);
        FUNC2(context);
        FUNC2(p);

        /* Let's set up a new per-service "session" kernel keyring for each system service. This has the benefit that
         * each service runs with its own keyring shared among all processes of the service, but with no hook-up beyond
         * that scope, and in particular no link to the per-UID keyring. If we don't do this the keyring will be
         * automatically created on-demand and then linked to the per-UID keyring, by the kernel. The kernel's built-in
         * on-demand behaviour is very appropriate for login users, but probably not so much for system services, where
         * UIDs are not necessarily specific to a service but reused (at least in the case of UID 0). */

        if (context->keyring_mode == EXEC_KEYRING_INHERIT)
                return 0;

        /* Acquiring a reference to the user keyring is nasty. We briefly change identity in order to get things set up
         * properly by the kernel. If we don't do that then we can't create it atomically, and that sucks for parallel
         * execution. This mimics what pam_keyinit does, too. Setting up session keyring, to be owned by the right user
         * & group is just as nasty as acquiring a reference to the user keyring. */

        saved_uid = FUNC4();
        saved_gid = FUNC3();

        if (FUNC5(gid) && gid != saved_gid) {
                if (FUNC10(gid, -1) < 0)
                        return FUNC8(u, errno, "Failed to change GID for user keyring: %m");
        }

        if (FUNC12(uid) && uid != saved_uid) {
                if (FUNC11(uid, -1) < 0) {
                        r = FUNC8(u, errno, "Failed to change UID for user keyring: %m");
                        goto out;
                }
        }

        keyring = FUNC6(KEYCTL_JOIN_SESSION_KEYRING, 0, 0, 0, 0);
        if (keyring == -1) {
                if (errno == ENOSYS)
                        FUNC7(u, errno, "Kernel keyring not supported, ignoring.");
                else if (FUNC0(errno, EACCES, EPERM))
                        FUNC7(u, errno, "Kernel keyring access prohibited, ignoring.");
                else if (errno == EDQUOT)
                        FUNC7(u, errno, "Out of kernel keyrings to allocate, ignoring.");
                else
                        r = FUNC8(u, errno, "Setting up kernel keyring failed: %m");

                goto out;
        }

        /* When requested link the user keyring into the session keyring. */
        if (context->keyring_mode == EXEC_KEYRING_SHARED) {

                if (FUNC6(KEYCTL_LINK,
                           KEY_SPEC_USER_KEYRING,
                           KEY_SPEC_SESSION_KEYRING, 0, 0) < 0) {
                        r = FUNC8(u, errno, "Failed to link user keyring into session keyring: %m");
                        goto out;
                }
        }

        /* Restore uid/gid back */
        if (FUNC12(uid) && uid != saved_uid) {
                if (FUNC11(saved_uid, -1) < 0) {
                        r = FUNC8(u, errno, "Failed to change UID back for user keyring: %m");
                        goto out;
                }
        }

        if (FUNC5(gid) && gid != saved_gid) {
                if (FUNC10(saved_gid, -1) < 0)
                        return FUNC8(u, errno, "Failed to change GID back for user keyring: %m");
        }

        /* Populate they keyring with the invocation ID by default, as original saved_uid. */
        if (!FUNC9(u->invocation_id)) {
                key_serial_t key;

                key = FUNC1("user", "invocation_id", &u->invocation_id, sizeof(u->invocation_id), KEY_SPEC_SESSION_KEYRING);
                if (key == -1)
                        FUNC7(u, errno, "Failed to add invocation ID to keyring, ignoring: %m");
                else {
                        if (FUNC6(KEYCTL_SETPERM, key,
                                   KEY_POS_VIEW|KEY_POS_READ|KEY_POS_SEARCH|
                                   KEY_USR_VIEW|KEY_USR_READ|KEY_USR_SEARCH, 0, 0) < 0)
                                r = FUNC8(u, errno, "Failed to restrict invocation ID permission: %m");
                }
        }

out:
        /* Revert back uid & gid for the the last time, and exit */
        /* no extra logging, as only the first already reported error matters */
        if (FUNC4() != saved_uid)
                (void) FUNC11(saved_uid, -1);

        if (FUNC3() != saved_gid)
                (void) FUNC10(saved_gid, -1);

        return r;
}