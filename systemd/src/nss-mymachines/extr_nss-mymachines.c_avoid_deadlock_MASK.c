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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC3(void) {

        /* Check whether this lookup might have a chance of deadlocking because we are called from the service manager
         * code activating systemd-machined.service. After all, we shouldn't synchronously do lookups to
         * systemd-machined if we are required to finish before it can be started. This of course won't detect all
         * possible dead locks of this kind, but it should work for the most obvious cases. */

        if (FUNC1() != 0) /* Ignore the env vars unless we are privileged. */
                return false;

        return FUNC2(FUNC0("SYSTEMD_ACTIVATION_UNIT"), "systemd-machined.service") &&
               FUNC2(FUNC0("SYSTEMD_ACTIVATION_SCOPE"), "system");
}