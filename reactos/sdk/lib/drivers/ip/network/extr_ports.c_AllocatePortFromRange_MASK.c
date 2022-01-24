#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ StartingPort; scalar_t__ PortsToOversee; int /*<<< orphan*/  Lock; int /*<<< orphan*/  ProtoBitmap; } ;
typedef  TYPE_1__* PPORT_SET ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

ULONG FUNC5( PPORT_SET PortSet, ULONG Lowest, ULONG Highest ) {
    ULONG AllocatedPort;
    KIRQL OldIrql;

    if ((Lowest < PortSet->StartingPort) ||
        (Highest >= PortSet->StartingPort + PortSet->PortsToOversee))
    {
        return -1;
    }

    Lowest -= PortSet->StartingPort;
    Highest -= PortSet->StartingPort;

    FUNC0( &PortSet->Lock, &OldIrql );
    AllocatedPort = FUNC2( &PortSet->ProtoBitmap, 1, Lowest );
    if( AllocatedPort != (ULONG)-1 && AllocatedPort <= Highest) {
	FUNC3( &PortSet->ProtoBitmap, AllocatedPort );
	AllocatedPort += PortSet->StartingPort;
	FUNC1( &PortSet->Lock, OldIrql );
	return FUNC4(AllocatedPort);
    }
    FUNC1( &PortSet->Lock, OldIrql );

    return -1;
}