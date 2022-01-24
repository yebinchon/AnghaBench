#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* current_server_address; } ;
struct TYPE_10__ {TYPE_1__* name; } ;
struct TYPE_9__ {TYPE_7__* manager; int /*<<< orphan*/  addresses; } ;
typedef  TYPE_2__ ServerAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  addresses ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 

ServerAddress* FUNC3(ServerAddress *a) {
        if (!a)
                return NULL;

        if (a->name) {
                FUNC0(addresses, a->name->addresses, a);

                if (a->name->manager && a->name->manager->current_server_address == a)
                        FUNC1(a->name->manager, NULL);
        }

        return FUNC2(a);
}