#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int PCI_BUSMAX ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(void)
{
	int bus, count;

	count = 0;
	for (bus = 0; bus <= PCI_BUSMAX; bus++)
		count += FUNC0(bus);

	/*
	 * Always include entries for the first 16 pins along with a entry
	 * for each active PCI INTx pin.
	 */
	return (16 + count);
}