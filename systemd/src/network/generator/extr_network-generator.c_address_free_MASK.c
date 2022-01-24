#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* network; } ;
struct TYPE_8__ {int /*<<< orphan*/  addresses; } ;
typedef  TYPE_2__ Address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  addresses ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static Address *FUNC2(Address *address) {
        if (!address)
                return NULL;

        if (address->network)
                FUNC0(addresses, address->network->addresses, address);

        return FUNC1(address);
}