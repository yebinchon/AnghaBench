
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_3__ {scalar_t__ (* FastWriteHandler ) (int ,int ,int ) ;scalar_t__ hVdd; } ;
typedef int PVOID ;
typedef TYPE_1__* PMEM_HOOK ;


 int MemFastMoveMemory (int ,int ,int ) ;
 int REAL_TO_PHYS (int ) ;
 scalar_t__ stub1 (int ,int ,int ) ;

__attribute__((used)) static inline VOID
WritePage(PMEM_HOOK Hook, ULONG Address, PVOID Buffer, ULONG Size)
{
    if (!Hook
        || Hook->hVdd
        || !Hook->FastWriteHandler
        || Hook->FastWriteHandler(Address, Buffer, Size))
    {
        MemFastMoveMemory(REAL_TO_PHYS(Address), Buffer, Size);
    }
}
