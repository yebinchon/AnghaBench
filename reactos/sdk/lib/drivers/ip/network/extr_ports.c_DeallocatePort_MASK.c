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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ StartingPort; scalar_t__ PortsToOversee; int /*<<< orphan*/  Lock; int /*<<< orphan*/  ProtoBitmap; } ;
typedef  TYPE_1__* PPORT_SET ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

VOID FUNC5( PPORT_SET PortSet, ULONG Port ) {
    KIRQL OldIrql;

    Port = FUNC4(Port);
    FUNC0(Port >= PortSet->StartingPort);
    FUNC0(Port < PortSet->StartingPort + PortSet->PortsToOversee);

    FUNC1( &PortSet->Lock, &OldIrql );
    FUNC3( &PortSet->ProtoBitmap, Port - PortSet->StartingPort, 1 );
    FUNC2( &PortSet->Lock, OldIrql );
}