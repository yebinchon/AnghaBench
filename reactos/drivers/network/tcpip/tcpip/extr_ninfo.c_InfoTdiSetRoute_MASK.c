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
typedef  int UINT ;
struct TYPE_4__ {scalar_t__ Type; int /*<<< orphan*/  Metric1; int /*<<< orphan*/  Gw; int /*<<< orphan*/  Mask; int /*<<< orphan*/  Dest; } ;
typedef  int /*<<< orphan*/  TDI_STATUS ;
typedef  TYPE_1__* PVOID ;
typedef  int /*<<< orphan*/  PIP_INTERFACE ;
typedef  TYPE_1__* PIPROUTE_ENTRY ;
typedef  int /*<<< orphan*/  IP_ADDRESS ;
typedef  int /*<<< orphan*/  IPROUTE_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_INFO ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ IP_ROUTE_TYPE_ADD ; 
 scalar_t__ IP_ROUTE_TYPE_DEL ; 
 int /*<<< orphan*/  Loopback ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TDI_INVALID_PARAMETER ; 
 int /*<<< orphan*/  TDI_INVALID_REQUEST ; 
 int /*<<< orphan*/  TDI_NO_RESOURCES ; 
 int /*<<< orphan*/  TDI_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

TDI_STATUS FUNC7(PIP_INTERFACE IF, PVOID Buffer, UINT BufferSize)
{
    IP_ADDRESS Address, Netmask, Router;
    PIPROUTE_ENTRY Route = Buffer;

    if (!Buffer || BufferSize < sizeof(IPROUTE_ENTRY))
        return TDI_INVALID_PARAMETER;

    FUNC1( &Address, Route->Dest );
    FUNC1( &Netmask, Route->Mask );
    FUNC1( &Router,  Route->Gw );

    if (IF == Loopback)
    {
        FUNC2("Failing attempt to add route to loopback adapter\n");
        return TDI_INVALID_PARAMETER;
    }

    if( Route->Type == IP_ROUTE_TYPE_ADD ) { /* Add the route */
        FUNC6(DEBUG_INFO,("Adding route (%s)\n", FUNC0(&Address)));
	if (!FUNC4( &Address, &Netmask, &Router,
			       IF, Route->Metric1))
	    return TDI_NO_RESOURCES;

        return TDI_SUCCESS;
     } else if( Route->Type == IP_ROUTE_TYPE_DEL ) {
	FUNC6(DEBUG_INFO,("Removing route (%s)\n", FUNC0(&Address)));
	if (FUNC3(FUNC5( &Address, &Router )))
            return TDI_SUCCESS;
        else
            return TDI_INVALID_PARAMETER;
     }

     return TDI_INVALID_REQUEST;
}