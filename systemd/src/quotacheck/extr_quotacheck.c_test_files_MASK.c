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
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int arg_force ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void) {

#if HAVE_SYSV_COMPAT
        if (access("/forcequotacheck", F_OK) >= 0) {
                log_error("Please pass 'quotacheck.mode=force' on the kernel command line rather than creating /forcequotacheck on the root file system.");
                arg_force = true;
        }
#endif
}