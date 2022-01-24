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
typedef  int /*<<< orphan*/  USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MID_TRACE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

UINT FUNC2(UINT AddressType)
{
    UINT AddrLen = FUNC1(AddressType);

    if (!AddrLen)
        return 0;

    AddrLen += sizeof(ULONG) + 2 * sizeof(USHORT);

    FUNC0(MID_TRACE,("AddrLen %x\n", AddrLen));

    return AddrLen;
}