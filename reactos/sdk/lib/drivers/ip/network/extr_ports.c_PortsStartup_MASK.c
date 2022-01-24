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
typedef  void* UINT ;
struct TYPE_3__ {int PortsToOversee; int /*<<< orphan*/  Lock; int /*<<< orphan*/  ProtoBitmap; int /*<<< orphan*/  ProtoBitBuffer; void* StartingPort; } ;
typedef  TYPE_1__* PPORT_SET ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  PORT_SET_TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS FUNC4( PPORT_SET PortSet,
		   UINT StartingPort,
		   UINT PortsToManage ) {
    PortSet->StartingPort = StartingPort;
    PortSet->PortsToOversee = PortsToManage;

    PortSet->ProtoBitBuffer =
	FUNC0( NonPagedPool, (PortSet->PortsToOversee + 7) / 8,
                               PORT_SET_TAG );
    if(!PortSet->ProtoBitBuffer) return STATUS_INSUFFICIENT_RESOURCES;
    FUNC3( &PortSet->ProtoBitmap,
			 PortSet->ProtoBitBuffer,
			 PortSet->PortsToOversee );
    FUNC2( &PortSet->ProtoBitmap );
    FUNC1( &PortSet->Lock );
    return STATUS_SUCCESS;
}