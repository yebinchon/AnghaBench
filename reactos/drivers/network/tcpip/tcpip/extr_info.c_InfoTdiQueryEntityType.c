
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
typedef size_t UINT ;
struct TYPE_5__ {scalar_t__ tei_entity; scalar_t__ tei_instance; size_t flags; } ;
struct TYPE_4__ {scalar_t__ tei_entity; scalar_t__ tei_instance; } ;
typedef int TDI_STATUS ;
typedef TYPE_1__ TDIEntityID ;
typedef int PUINT ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;
typedef int KIRQL ;


 size_t EntityCount ;
 TYPE_3__* EntityList ;
 int EntityListLock ;
 int InfoCopyOut (int ,int,int ,int ) ;
 int TDI_INVALID_PARAMETER ;
 int TDI_SUCCESS ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

TDI_STATUS InfoTdiQueryEntityType(TDIEntityID ID,
                                  PNDIS_BUFFER Buffer,
      PUINT BufferSize)
{
    KIRQL OldIrql;
    UINT i, Flags = 0;

    TcpipAcquireSpinLock(&EntityListLock, &OldIrql);

    for (i = 0; i < EntityCount; i++)
    {
        if (EntityList[i].tei_entity == ID.tei_entity &&
            EntityList[i].tei_instance == ID.tei_instance)
            break;
    }

    if (i == EntityCount)
    {
        TcpipReleaseSpinLock(&EntityListLock, OldIrql);
        return TDI_INVALID_PARAMETER;
    }

    Flags = EntityList[i].flags;

    InfoCopyOut((PCHAR)&Flags,
                sizeof(ULONG),
                Buffer,
                BufferSize);

    TcpipReleaseSpinLock(&EntityListLock, OldIrql);

    return TDI_SUCCESS;
}
