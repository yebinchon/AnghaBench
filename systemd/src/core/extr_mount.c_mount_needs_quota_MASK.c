#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  options; scalar_t__ fstype; } ;
typedef  TYPE_1__ MountParameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 

__attribute__((used)) static bool FUNC4(const MountParameters *p) {
        FUNC0(p);

        /* Quotas are not enabled on network filesystems, but we want them, for example, on storage connected via
         * iscsi. We hence don't use mount_is_network() here, as that would also return true for _netdev devices. */
        if (p->fstype && FUNC2(p->fstype))
                return false;

        if (FUNC3(p))
                return false;

        return FUNC1(p->options,
                                 "usrquota\0" "grpquota\0" "quota\0" "usrjquota\0" "grpjquota\0");
}