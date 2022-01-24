#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UnitDependencyMask ;
struct TYPE_17__ {int /*<<< orphan*/  default_dependencies; } ;
struct TYPE_14__ {int /*<<< orphan*/  options; } ;
struct TYPE_16__ {TYPE_1__ parameters_fragment; scalar_t__ from_fragment; } ;
struct TYPE_15__ {int /*<<< orphan*/  fstype; } ;
typedef  TYPE_2__ MountParameters ;
typedef  TYPE_3__ Mount ;

/* Variables and functions */
 char* SPECIAL_LOCAL_FS_PRE_TARGET ; 
 char* SPECIAL_LOCAL_FS_TARGET ; 
 int /*<<< orphan*/  SPECIAL_NETWORK_ONLINE_TARGET ; 
 char const* SPECIAL_NETWORK_TARGET ; 
 char* SPECIAL_REMOTE_FS_PRE_TARGET ; 
 char* SPECIAL_REMOTE_FS_TARGET ; 
 char const* SPECIAL_SWAP_TARGET ; 
 int /*<<< orphan*/  SPECIAL_UMOUNT_TARGET ; 
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  UNIT_AFTER ; 
 int /*<<< orphan*/  UNIT_BEFORE ; 
 int /*<<< orphan*/  UNIT_CONFLICTS ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_FILE ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_MOUNTINFO_DEFAULT ; 
 int /*<<< orphan*/  UNIT_WANTS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(Mount *m) {
        const char *after, *before;
        UnitDependencyMask mask;
        MountParameters *p;
        bool nofail;
        int r;

        FUNC1(m);

        if (!FUNC0(m)->default_dependencies)
                return 0;

        /* We do not add any default dependencies to /, /usr or /run/initramfs/, since they are guaranteed to stay
         * mounted the whole time, since our system is on it.  Also, don't bother with anything mounted below virtual
         * file systems, it's also going to be virtual, and hence not worth the effort. */
        if (FUNC4(m))
                return 0;

        p = FUNC3(m);
        if (!p)
                return 0;

        mask = m->from_fragment ? UNIT_DEPENDENCY_FILE : UNIT_DEPENDENCY_MOUNTINFO_DEFAULT;
        nofail = m->from_fragment ? FUNC2(m->parameters_fragment.options, "nofail\0" "fail\0") : false;

        if (FUNC5(p)) {
                /* We order ourselves after network.target. This is
                 * primarily useful at shutdown: services that take
                 * down the network should order themselves before
                 * network.target, so that they are shut down only
                 * after this mount unit is stopped. */

                r = FUNC7(FUNC0(m), UNIT_AFTER, SPECIAL_NETWORK_TARGET, true, mask);
                if (r < 0)
                        return r;

                /* We pull in network-online.target, and order
                 * ourselves after it. This is useful at start-up to
                 * actively pull in tools that want to be started
                 * before we start mounting network file systems, and
                 * whose purpose it is to delay this until the network
                 * is "up". */

                r = FUNC8(FUNC0(m), UNIT_WANTS, UNIT_AFTER, SPECIAL_NETWORK_ONLINE_TARGET, true, mask);
                if (r < 0)
                        return r;

                after = SPECIAL_REMOTE_FS_PRE_TARGET;
                before = SPECIAL_REMOTE_FS_TARGET;
        } else {
                after = SPECIAL_LOCAL_FS_PRE_TARGET;
                before = SPECIAL_LOCAL_FS_TARGET;
        }

        if (!nofail) {
                r = FUNC7(FUNC0(m), UNIT_BEFORE, before, true, mask);
                if (r < 0)
                        return r;
        }

        r = FUNC7(FUNC0(m), UNIT_AFTER, after, true, mask);
        if (r < 0)
                return r;

        r = FUNC8(FUNC0(m), UNIT_BEFORE, UNIT_CONFLICTS, SPECIAL_UMOUNT_TARGET, true, mask);
        if (r < 0)
                return r;

        /* If this is a tmpfs mount then we have to unmount it before we try to deactivate swaps */
        if (FUNC6(p->fstype, "tmpfs")) {
                r = FUNC7(FUNC0(m), UNIT_AFTER, SPECIAL_SWAP_TARGET, true, mask);
                if (r < 0)
                        return r;
        }

        return 0;
}