#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ifname; int /*<<< orphan*/  state; TYPE_1__* manager; int /*<<< orphan*/  ifindex; } ;
struct TYPE_7__ {int /*<<< orphan*/  links_by_name; int /*<<< orphan*/  links; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 

Link *FUNC4(Link *l) {

        if (!l)
                return NULL;

        if (l->manager) {
                FUNC2(l->manager->links, FUNC0(l->ifindex));
                FUNC2(l->manager->links_by_name, l->ifname);
        }

        FUNC1(l->state);
        FUNC1(l->ifname);
        return FUNC3(l);
 }