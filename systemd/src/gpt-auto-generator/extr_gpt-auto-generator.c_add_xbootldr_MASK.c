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
struct TYPE_4__ {int /*<<< orphan*/  fstype; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ DissectedPartition ;

/* Variables and functions */
 int USEC_PER_SEC ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(DissectedPartition *p) {
        int r;

        FUNC1(p);

        if (FUNC3()) {
                FUNC4("In initrd, ignoring the XBOOTLDR partition.");
                return 0;
        }

        r = FUNC2("/boot");
        if (r < 0)
                return FUNC5(r, "Failed to parse fstab: %m");
        if (r > 0) {
                FUNC4("/boot specified in fstab, ignoring XBOOTLDR partition.");
                return 0;
        }

        r = FUNC6("/boot");
        if (r < 0)
                return r;
        if (r > 0)
                return 0;

        return FUNC0("boot",
                             p->node,
                             "/boot",
                             p->fstype,
                             true,
                             "umask=0077",
                             "Boot Loader Partition",
                             120 * USEC_PER_SEC);
}