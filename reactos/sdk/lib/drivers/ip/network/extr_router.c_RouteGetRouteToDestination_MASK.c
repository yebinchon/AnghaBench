#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* Interface; } ;
struct TYPE_6__ {int /*<<< orphan*/  MTU; } ;
typedef  TYPE_2__* PNEIGHBOR_CACHE_ENTRY ;
typedef  scalar_t__ PIP_INTERFACE ;
typedef  int /*<<< orphan*/  PIP_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_RCACHE ; 
 int /*<<< orphan*/  DEBUG_ROUTER ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 TYPE_2__* FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RouteCache ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

PNEIGHBOR_CACHE_ENTRY FUNC6(PIP_ADDRESS Destination)
/*
 * FUNCTION: Locates an RCN describing a route to a destination address
 * ARGUMENTS:
 *     Destination = Pointer to destination address to find route to
 *     RCN         = Address of pointer to an RCN
 * RETURNS:
 *     Status of operation
 * NOTES:
 *     The RCN is referenced for the caller. The caller is responsible
 *     for dereferencing it after use
 */
{
    PNEIGHBOR_CACHE_ENTRY NCE = NULL;
    PIP_INTERFACE Interface;

    FUNC5(DEBUG_RCACHE, ("Called. Destination (0x%X)\n", Destination));

    FUNC5(DEBUG_RCACHE, ("Destination (%s)\n", FUNC0(Destination)));

#if 0
    TI_DbgPrint(MIN_TRACE, ("Displaying tree (before).\n"));
    PrintTree(RouteCache);
#endif

    /* Check if the destination is on-link */
    Interface = FUNC1(Destination);
    if (Interface) {
	/* The destination address is on-link. Check our neighbor cache */
	NCE = FUNC2(Interface, Destination, FALSE);
    } else {
	/* Destination is not on any subnets we're on. Find a router to use */
	NCE = FUNC4(Destination);
    }

    if( NCE )
	FUNC5(DEBUG_ROUTER,("Interface->MTU: %d\n", NCE->Interface->MTU));

    return NCE;
}