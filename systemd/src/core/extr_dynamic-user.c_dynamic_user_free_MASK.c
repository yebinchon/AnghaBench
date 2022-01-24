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
struct TYPE_8__ {int /*<<< orphan*/  storage_socket; int /*<<< orphan*/  name; TYPE_1__* manager; } ;
struct TYPE_7__ {int /*<<< orphan*/  dynamic_users; } ;
typedef  TYPE_2__ DynamicUser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DynamicUser* FUNC3(DynamicUser *d) {
        if (!d)
                return NULL;

        if (d->manager)
                (void) FUNC0(d->manager->dynamic_users, d->name);

        FUNC2(d->storage_socket);
        return FUNC1(d);
}