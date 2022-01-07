
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ Listener; int Sharers; } ;
struct TYPE_8__ {TYPE_3__* AddressHandle; } ;
struct TYPE_9__ {TYPE_1__ Handle; } ;
typedef TYPE_2__* PTDI_REQUEST ;
typedef TYPE_3__* PADDRESS_FILE ;
typedef int NTSTATUS ;
typedef int KIRQL ;


 int DereferenceObject (TYPE_3__*) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int LockObject (TYPE_3__*,int *) ;
 int MAX_TRACE ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int TCPClose (scalar_t__) ;
 int TI_DbgPrint (int ,char*) ;
 int UnlockObject (TYPE_3__*,int ) ;

NTSTATUS FileCloseAddress(
  PTDI_REQUEST Request)
{
  PADDRESS_FILE AddrFile = Request->Handle.AddressHandle;
  KIRQL OldIrql;

  if (!Request->Handle.AddressHandle) return STATUS_INVALID_PARAMETER;

  LockObject(AddrFile, &OldIrql);

  if (InterlockedDecrement(&AddrFile->Sharers) != 0)
  {

      UnlockObject(AddrFile, OldIrql);
      return STATUS_SUCCESS;
  }


  if( AddrFile->Listener )
  {
      TCPClose( AddrFile->Listener );
  }

  UnlockObject(AddrFile, OldIrql);

  DereferenceObject(AddrFile);

  TI_DbgPrint(MAX_TRACE, ("Leaving.\n"));

  return STATUS_SUCCESS;
}
