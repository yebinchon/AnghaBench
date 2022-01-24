#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  description; int /*<<< orphan*/  userdata; int /*<<< orphan*/  (* destroy_callback ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ sd_bus_slot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_bus_slot* FUNC5(sd_bus_slot *slot) {
        FUNC0(slot);

        FUNC1(slot, false);

        if (slot->destroy_callback)
                slot->destroy_callback(slot->userdata);

        FUNC2(slot->description);
        return FUNC3(slot);
}