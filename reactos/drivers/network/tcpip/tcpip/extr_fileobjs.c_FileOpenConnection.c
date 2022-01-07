
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ConnectionContext; } ;
struct TYPE_5__ {TYPE_1__ Handle; } ;
typedef int PVOID ;
typedef TYPE_2__* PTDI_REQUEST ;
typedef scalar_t__ PCONNECTION_ENDPOINT ;
typedef int NTSTATUS ;


 int AF_INET ;
 int DereferenceObject (scalar_t__) ;
 int IPPROTO_TCP ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int NT_SUCCESS (int ) ;
 int SOCK_STREAM ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 scalar_t__ TCPAllocateConnectionEndpoint (int ) ;
 int TCPSocket (scalar_t__,int ,int ,int ) ;
 int TI_DbgPrint (int ,char*) ;

NTSTATUS FileOpenConnection(
  PTDI_REQUEST Request,
  PVOID ClientContext)
{
  NTSTATUS Status;
  PCONNECTION_ENDPOINT Connection;

  TI_DbgPrint(MID_TRACE, ("Called.\n"));

  Connection = TCPAllocateConnectionEndpoint( ClientContext );

  if( !Connection ) return STATUS_NO_MEMORY;

  Status = TCPSocket( Connection, AF_INET, SOCK_STREAM, IPPROTO_TCP );

  if( !NT_SUCCESS(Status) ) {
      DereferenceObject( Connection );
      return Status;
  }


  Request->Handle.ConnectionContext = Connection;

  TI_DbgPrint(MAX_TRACE, ("Leaving.\n"));

  return STATUS_SUCCESS;
}
