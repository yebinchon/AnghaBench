#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dirty_links; } ;
struct TYPE_7__ {TYPE_3__* manager; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC5(Link *link) {
        int r;

        FUNC0(link);

        /* mark manager dirty as link is dirty */
        FUNC2(link->manager);

        r = FUNC3(&link->manager->dirty_links, NULL);
        if (r < 0)
                /* allocation errors are ignored */
                return;

        r = FUNC4(link->manager->dirty_links, link);
        if (r <= 0)
                /* don't take another ref if the link was already dirty */
                return;

        FUNC1(link);
}