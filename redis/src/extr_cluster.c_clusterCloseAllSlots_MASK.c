#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int /*<<< orphan*/  importing_slots_from; int /*<<< orphan*/  migrating_slots_to; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ server ; 

void FUNC1(void) {
    FUNC0(server.cluster->migrating_slots_to,0,
        sizeof(server.cluster->migrating_slots_to));
    FUNC0(server.cluster->importing_slots_from,0,
        sizeof(server.cluster->importing_slots_from));
}