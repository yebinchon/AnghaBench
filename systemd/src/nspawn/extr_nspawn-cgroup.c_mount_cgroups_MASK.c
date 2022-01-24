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
typedef  int /*<<< orphan*/  uid_t ;
typedef  scalar_t__ CGroupUnified ;

/* Variables and functions */
 scalar_t__ CGROUP_UNIFIED_ALL ; 
 int FUNC0 (char const*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char const*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*) ; 

int FUNC3(
                const char *dest,
                CGroupUnified unified_requested,
                bool userns,
                uid_t uid_shift,
                uid_t uid_range,
                const char *selinux_apifs_context,
                bool use_cgns) {

        if (unified_requested >= CGROUP_UNIFIED_ALL)
                return FUNC2(dest);
        if (use_cgns)
                return FUNC0(dest, unified_requested, userns, uid_shift, uid_range, selinux_apifs_context);

        return FUNC1(dest, unified_requested, userns, uid_shift, uid_range, selinux_apifs_context);
}