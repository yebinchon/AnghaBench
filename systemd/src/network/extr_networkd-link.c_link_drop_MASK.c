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
struct TYPE_10__ {scalar_t__ state; int /*<<< orphan*/  state_file; TYPE_1__* network; } ;
struct TYPE_9__ {int /*<<< orphan*/  bond; int /*<<< orphan*/  bridge; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 scalar_t__ LINK_STATE_LINGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(Link *link) {
        if (!link || link->state == LINK_STATE_LINGER)
                return;

        FUNC3(link, LINK_STATE_LINGER);

        FUNC2(link);

        if (link->network) {
                FUNC1(link, link->network->bridge);
                FUNC1(link, link->network->bond);
        }

        FUNC4(link, "Link removed");

        (void) FUNC5(link->state_file);
        FUNC0(link);
}