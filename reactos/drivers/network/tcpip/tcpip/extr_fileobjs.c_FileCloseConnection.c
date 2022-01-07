
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ConnectionContext; } ;
struct TYPE_5__ {TYPE_1__ Handle; } ;
typedef TYPE_2__* PTDI_REQUEST ;
typedef int * PCONNECTION_ENDPOINT ;
typedef int NTSTATUS ;


 int MAX_TRACE ;
 int MID_TRACE ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int TCPClose (int *) ;
 int TI_DbgPrint (int ,char*) ;

NTSTATUS FileCloseConnection(
  PTDI_REQUEST Request)
{
  PCONNECTION_ENDPOINT Connection;

  TI_DbgPrint(MID_TRACE, ("Called.\n"));

  Connection = Request->Handle.ConnectionContext;

  if (!Connection) return STATUS_INVALID_PARAMETER;

  TCPClose( Connection );

  Request->Handle.ConnectionContext = ((void*)0);

  TI_DbgPrint(MAX_TRACE, ("Leaving.\n"));

  return STATUS_SUCCESS;
}
