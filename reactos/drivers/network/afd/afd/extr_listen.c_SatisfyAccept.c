
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ RemoteAddress; int ConnectReturnInfo; int ConnectCallInfo; int Connection; } ;
struct TYPE_12__ {TYPE_1__* ConnInfo; int Object; } ;
struct TYPE_11__ {TYPE_4__* FsContext; } ;
struct TYPE_10__ {int RemoteAddress; } ;
typedef int PIRP ;
typedef TYPE_2__* PFILE_OBJECT ;
typedef TYPE_3__* PAFD_TDI_OBJECT_QELT ;
typedef TYPE_4__* PAFD_FCB ;
typedef int PAFD_DEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 int ExFreePoolWithTag (scalar_t__,int ) ;
 int LostSocket (int ) ;
 int MID_TRACE ;
 int MakeSocketIntoConnection (TYPE_4__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_NO_MEMORY ;
 int SocketAcquireStateLock (TYPE_4__*) ;
 int TAG_AFD_TRANSPORT_ADDRESS ;
 scalar_t__ TaCopyTransportAddress (int ) ;
 int TdiBuildConnectionInfo (int *,scalar_t__) ;
 int UNREFERENCED_PARAMETER (int ) ;
 int UnlockAndMaybeComplete (TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static NTSTATUS SatisfyAccept( PAFD_DEVICE_EXTENSION DeviceExt,
                               PIRP Irp,
                               PFILE_OBJECT NewFileObject,
                               PAFD_TDI_OBJECT_QELT Qelt ) {
    PAFD_FCB FCB = NewFileObject->FsContext;
    NTSTATUS Status;

    UNREFERENCED_PARAMETER(DeviceExt);

    if( !SocketAcquireStateLock( FCB ) )
        return LostSocket( Irp );


    AFD_DbgPrint(MID_TRACE,("Completing a real accept (FCB %p)\n", FCB));

    FCB->Connection = Qelt->Object;

    if (FCB->RemoteAddress)
    {
        ExFreePoolWithTag(FCB->RemoteAddress, TAG_AFD_TRANSPORT_ADDRESS);
    }

    FCB->RemoteAddress =
        TaCopyTransportAddress( Qelt->ConnInfo->RemoteAddress );

    if( !FCB->RemoteAddress )
        Status = STATUS_NO_MEMORY;
    else
        Status = MakeSocketIntoConnection( FCB );

    if (NT_SUCCESS(Status))
        Status = TdiBuildConnectionInfo(&FCB->ConnectCallInfo, FCB->RemoteAddress);

    if (NT_SUCCESS(Status))
        Status = TdiBuildConnectionInfo(&FCB->ConnectReturnInfo, FCB->RemoteAddress);

    return UnlockAndMaybeComplete( FCB, Status, Irp, 0 );
}
