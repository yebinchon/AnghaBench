#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* Address; } ;
struct TYPE_5__ {int /*<<< orphan*/  AddressType; } ;
typedef  TYPE_2__* PTRANSPORT_ADDRESS ;
typedef  int /*<<< orphan*/  PTDI_CONNECTION_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC3
( PTDI_CONNECTION_INFORMATION *ConnectionInfo,
  PTRANSPORT_ADDRESS Address ) {
    NTSTATUS Status = FUNC2
        ( ConnectionInfo, Address->Address[0].AddressType );

    if( FUNC0(Status) )
        FUNC1( *ConnectionInfo, Address );

    return Status;
}