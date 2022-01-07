
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_2__ {size_t tei_entity; size_t tei_instance; size_t flags; int context; } ;
typedef int PVOID ;
typedef int KIRQL ;
typedef scalar_t__ BOOLEAN ;


 size_t EntityCount ;
 TYPE_1__* EntityList ;
 int EntityListLock ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

VOID AddEntity(ULONG EntityType, PVOID Context, ULONG Flags)
{
    KIRQL OldIrql;
    ULONG i, Instance = 0;
    BOOLEAN ChoseIndex = FALSE;

    TcpipAcquireSpinLock(&EntityListLock, &OldIrql);

    while (!ChoseIndex)
    {
         ChoseIndex = TRUE;
         for (i = 0; i < EntityCount; i++)
         {
             if (EntityList[i].tei_entity == EntityType &&
                 EntityList[i].tei_instance == Instance)
             {
                 Instance++;
                 ChoseIndex = FALSE;
             }
         }
    }

    EntityList[EntityCount].tei_entity = EntityType;
    EntityList[EntityCount].tei_instance = Instance;
    EntityList[EntityCount].context = Context;
    EntityList[EntityCount].flags = Flags;
    EntityCount++;

    TcpipReleaseSpinLock(&EntityListLock, OldIrql);
}
