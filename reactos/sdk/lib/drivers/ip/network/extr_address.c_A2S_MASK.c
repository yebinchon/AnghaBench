#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  IPv4Address; } ;
struct TYPE_5__ {int Type; TYPE_1__ Address; } ;
typedef  TYPE_2__* PIP_ADDRESS ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  A2SStr ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  IP_ADDRESS_V4 129 
#define  IP_ADDRESS_V6 128 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

PCHAR FUNC4(
    PIP_ADDRESS Address)
/*
 * FUNCTION: Convert an IP address to a string (for debugging)
 * ARGUMENTS:
 *     Address = Pointer to an IP address structure
 * RETURNS:
 *     Pointer to buffer with string representation of IP address
 */
{
    ULONG ip;
    PCHAR p;

    p = A2SStr;

    if (!Address) {
        FUNC1(MIN_TRACE, ("NULL address given.\n"));
        FUNC3(p, "(NULL)");
        return p;
    }

    switch (Address->Type) {
    case IP_ADDRESS_V4:
	ip = FUNC0(Address->Address.IPv4Address);
	FUNC2(p, "%d.%d.%d.%d",
		(INT)((ip >> 24) & 0xFF),
		(INT)((ip >> 16) & 0xFF),
		(INT)((ip >> 8) & 0xFF),
		(INT)(ip & 0xFF));
	break;

    case IP_ADDRESS_V6:
	/* FIXME: IPv6 is not supported */
	FUNC3(p, "(IPv6 address not supported)");
	break;
    }
    return p;
}