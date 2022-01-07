
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {scalar_t__ tei_entity; scalar_t__ tei_instance; int * context; } ;
struct TYPE_4__ {scalar_t__ tei_entity; scalar_t__ tei_instance; } ;
typedef TYPE_1__ TDIEntityID ;
typedef int * PVOID ;
typedef int KIRQL ;


 int DbgPrint (char*,scalar_t__,scalar_t__) ;
 size_t EntityCount ;
 TYPE_3__* EntityList ;
 int EntityListLock ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

PVOID GetContext(TDIEntityID ID)
{
    UINT i;
    KIRQL OldIrql;
    PVOID Context;

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
        DbgPrint("WARNING: Unable to get context for %d %d\n", ID.tei_entity, ID.tei_instance);
        return ((void*)0);
    }

    Context = EntityList[i].context;

    TcpipReleaseSpinLock(&EntityListLock, OldIrql);

    return Context;
}
