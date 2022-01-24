#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ RemoteAddress; int /*<<< orphan*/  ConnectReturnInfo; int /*<<< orphan*/  ConnectCallInfo; int /*<<< orphan*/  Connection; } ;
struct TYPE_12__ {TYPE_1__* ConnInfo; int /*<<< orphan*/  Object; } ;
struct TYPE_11__ {TYPE_4__* FsContext; } ;
struct TYPE_10__ {int /*<<< orphan*/  RemoteAddress; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_2__* PFILE_OBJECT ;
typedef  TYPE_3__* PAFD_TDI_OBJECT_QELT ;
typedef  TYPE_4__* PAFD_FCB ;
typedef  int /*<<< orphan*/  PAFD_DEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  TAG_AFD_TRANSPORT_ADDRESS ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC10( PAFD_DEVICE_EXTENSION DeviceExt,
                               PIRP Irp,
                               PFILE_OBJECT NewFileObject,
                               PAFD_TDI_OBJECT_QELT Qelt ) {
    PAFD_FCB FCB = NewFileObject->FsContext;
    NTSTATUS Status;

    FUNC8(DeviceExt);

    if( !FUNC5( FCB ) )
        return FUNC2( Irp );

    /* Transfer the connection to the new socket, launch the opening read */
    FUNC0(MID_TRACE,("Completing a real accept (FCB %p)\n", FCB));

    FCB->Connection = Qelt->Object;

    if (FCB->RemoteAddress)
    {
        FUNC1(FCB->RemoteAddress, TAG_AFD_TRANSPORT_ADDRESS);
    }

    FCB->RemoteAddress =
        FUNC6( Qelt->ConnInfo->RemoteAddress );

    if( !FCB->RemoteAddress )
        Status = STATUS_NO_MEMORY;
    else
        Status = FUNC3( FCB );

    if (FUNC4(Status))
        Status = FUNC7(&FCB->ConnectCallInfo, FCB->RemoteAddress);

    if (FUNC4(Status))
        Status = FUNC7(&FCB->ConnectReturnInfo, FCB->RemoteAddress);

    return FUNC9( FCB, Status, Irp, 0 );
}