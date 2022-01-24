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
typedef  int key_serial_t ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  EPERM ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYCTL_JOIN_SESSION_KEYRING ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int FUNC3 (scalar_t__,char*) ; 

__attribute__((used)) static int FUNC4(void) {
        key_serial_t keyring;

        /* Allocate a new session keyring for the container. This makes sure the keyring of the session systemd-nspawn
         * was invoked from doesn't leak into the container. Note that by default we block keyctl() and request_key()
         * anyway via seccomp so doing this operation isn't strictly necessary, but in case people explicitly whitelist
         * these system calls let's make sure we don't leak anything into the container. */

        keyring = FUNC1(KEYCTL_JOIN_SESSION_KEYRING, 0, 0, 0, 0);
        if (keyring == -1) {
                if (errno == ENOSYS)
                        FUNC2(errno, "Kernel keyring not supported, ignoring.");
                else if (FUNC0(errno, EACCES, EPERM))
                        FUNC2(errno, "Kernel keyring access prohibited, ignoring.");
                else
                        return FUNC3(errno, "Setting up kernel keyring failed: %m");
        }

        return 0;
}