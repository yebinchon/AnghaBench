#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ifindex; TYPE_1__* manager; } ;
struct TYPE_9__ {int /*<<< orphan*/  links; int /*<<< orphan*/  links_requesting_uuid; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(Link *link) {
        if (!link || !link->manager)
                return;

        FUNC4(FUNC5(link->manager->links_requesting_uuid, link));
        FUNC3(link);

        /* The following must be called at last. */
        FUNC1(FUNC2(link->manager->links, FUNC0(link->ifindex)) == link);
        FUNC4(link);
}