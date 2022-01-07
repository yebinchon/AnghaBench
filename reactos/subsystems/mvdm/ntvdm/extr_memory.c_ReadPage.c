
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_3__ {int (* FastReadHandler ) (int ,int ,int ) ;int hVdd; } ;
typedef int PVOID ;
typedef TYPE_1__* PMEM_HOOK ;


 int MemFastMoveMemory (int ,int ,int ) ;
 int REAL_TO_PHYS (int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static inline VOID
ReadPage(PMEM_HOOK Hook, ULONG Address, PVOID Buffer, ULONG Size)
{
    if (Hook && !Hook->hVdd && Hook->FastReadHandler)
    {
        Hook->FastReadHandler(Address, REAL_TO_PHYS(Address), Size);
    }

    MemFastMoveMemory(Buffer, REAL_TO_PHYS(Address), Size);
}
