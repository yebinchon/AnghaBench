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
typedef  int USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PNIC_ADAPTER ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static BOOLEAN FUNC2(
    PNIC_ADAPTER Adapter,
    ULONG Address)
/*
 * FUNCTION: Tests if an address is writable
 * ARGUMENTS:
 *     Adapter = Pointer to adapter information
 * RETURNS:
 *     TRUE if the address is writable, FALSE if not
 */
{
    USHORT Data;
    USHORT Tmp;

    /* Read one word */
    FUNC0(Adapter, &Data, Address, 0x02);

    /* Alter it */
    Data ^= 0xFFFF;

    /* Write it back */
    FUNC1(Adapter, Address, &Data, 0x02);

    /* Check if it has changed on the NIC */
    FUNC0(Adapter, &Tmp, Address, 0x02);

    return (Data == Tmp);
}