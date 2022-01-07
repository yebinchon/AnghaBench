
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Address; } ;
struct TYPE_5__ {int AddressType; } ;
typedef TYPE_2__* PTRANSPORT_ADDRESS ;
typedef int PTDI_CONNECTION_INFORMATION ;
typedef int NTSTATUS ;


 scalar_t__ NT_SUCCESS (int ) ;
 int TdiBuildConnectionInfoInPlace (int ,TYPE_2__*) ;
 int TdiBuildNullConnectionInfo (int *,int ) ;

NTSTATUS
TdiBuildConnectionInfo
( PTDI_CONNECTION_INFORMATION *ConnectionInfo,
  PTRANSPORT_ADDRESS Address ) {
    NTSTATUS Status = TdiBuildNullConnectionInfo
        ( ConnectionInfo, Address->Address[0].AddressType );

    if( NT_SUCCESS(Status) )
        TdiBuildConnectionInfoInPlace( *ConnectionInfo, Address );

    return Status;
}
