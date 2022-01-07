
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {void* HeaderIncl; void* BCast; void* DF; int TTL; } ;
struct TYPE_7__ {int toi_id; } ;
typedef int TDI_STATUS ;
typedef TYPE_1__ TDIObjectID ;
typedef int PVOID ;
typedef void** PUINT ;
typedef int * PUCHAR ;
typedef TYPE_2__* PADDRESS_FILE ;
typedef int KIRQL ;






 int DbgPrint (char*,int) ;
 int LockObject (TYPE_2__*,int *) ;
 int TDI_INVALID_PARAMETER ;
 int TDI_INVALID_REQUEST ;
 int TDI_SUCCESS ;
 int UnlockObject (TYPE_2__*,int ) ;

TDI_STATUS SetAddressFileInfo(TDIObjectID *ID,
                              PADDRESS_FILE AddrFile,
                              PVOID Buffer,
                              UINT BufferSize)
{
    KIRQL OldIrql;

    switch (ID->toi_id)
    {
      case 128:
         if (BufferSize < sizeof(UINT))
             return TDI_INVALID_PARAMETER;

         LockObject(AddrFile, &OldIrql);
         AddrFile->TTL = *((PUCHAR)Buffer);
         UnlockObject(AddrFile, OldIrql);

         return TDI_SUCCESS;

      case 130:
         if (BufferSize < sizeof(UINT))
             return TDI_INVALID_PARAMETER;

         LockObject(AddrFile, &OldIrql);
         AddrFile->DF = *((PUINT)Buffer);
         UnlockObject(AddrFile, OldIrql);

         return TDI_SUCCESS;

      case 131:
         if (BufferSize < sizeof(UINT))
             return TDI_INVALID_PARAMETER;

         LockObject(AddrFile, &OldIrql);
         AddrFile->BCast = *((PUINT)Buffer);
         UnlockObject(AddrFile, OldIrql);

         return TDI_SUCCESS;

      case 129:
         if (BufferSize < sizeof(UINT))
             return TDI_INVALID_PARAMETER;

         LockObject(AddrFile, &OldIrql);
         AddrFile->HeaderIncl = *((PUINT)Buffer);
         UnlockObject(AddrFile, OldIrql);

         return TDI_SUCCESS;

      default:
         DbgPrint("Unimplemented option %x\n", ID->toi_id);

         return TDI_INVALID_REQUEST;
    }
}
