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
struct TYPE_5__ {scalar_t__ mode; } ;
typedef  TYPE_1__ MountEntry ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const MountEntry *a, const MountEntry *b) {
        int d;

        /* If the paths are not equal, then order prefixes first */
        d = FUNC2(FUNC1(a), FUNC1(b));
        if (d != 0)
                return d;

        /* If the paths are equal, check the mode */
        return FUNC0((int) a->mode, (int) b->mode);
}