#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ Image ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EROFS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ IMAGE_SUBVOLUME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(Image *i, uint64_t referenced_max) {
        FUNC2(i);

        if (FUNC1(i) || FUNC0(i))
                return -EROFS;

        if (i->type != IMAGE_SUBVOLUME)
                return -EOPNOTSUPP;

        /* We set the quota both for the subvolume as well as for the
         * subtree. The latter is mostly for historical reasons, since
         * we didn't use to have a concept of subtree quota, and hence
         * only modified the subvolume quota. */

        (void) FUNC3(i->path, 0, referenced_max);
        (void) FUNC4(i->path, 0, true);
        return FUNC5(i->path, 0, referenced_max);
}