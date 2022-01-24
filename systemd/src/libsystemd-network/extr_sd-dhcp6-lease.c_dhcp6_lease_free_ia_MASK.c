#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * addresses; } ;
typedef  TYPE_1__ DHCP6IA ;
typedef  int /*<<< orphan*/  DHCP6Address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  addresses ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

DHCP6IA *FUNC2(DHCP6IA *ia) {
        DHCP6Address *address;

        if (!ia)
                return NULL;

        while (ia->addresses) {
                address = ia->addresses;

                FUNC0(addresses, ia->addresses, address);

                FUNC1(address);
        }

        return NULL;
}