
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {int slhLog; } ;
struct TYPE_8__ {scalar_t__ cAllocCount; int pvBaseAddress; } ;
typedef int SIZE_T ;
typedef TYPE_1__* PGDI_POOL_SECTION ;
typedef TYPE_2__* PGDI_POOL ;
typedef int NTSTATUS ;


 int ASSERT (int ) ;
 int DBG_DUMP_EVENT_LIST (int *) ;
 int DPRINT1 (char*,scalar_t__,TYPE_1__*,TYPE_2__*) ;
 int EngFreeMem (TYPE_1__*) ;
 int FALSE ;
 int MEM_RELEASE ;
 int NT_SUCCESS (int ) ;
 int NtCurrentProcess () ;
 int ZwFreeVirtualMemory (int ,int *,int *,int ) ;

__attribute__((used)) static
VOID
GdiPoolDeleteSection(PGDI_POOL pPool, PGDI_POOL_SECTION pSection)
{
    NTSTATUS status;
    SIZE_T cjSize = 0;


    if (pSection->cAllocCount != 0)
    {
        DPRINT1("There are %lu allocations left, section=%p, pool=%p\n",
                pSection->cAllocCount, pSection, pPool);
        DBG_DUMP_EVENT_LIST(&pPool->slhLog);
        ASSERT(FALSE);
    }


    status = ZwFreeVirtualMemory(NtCurrentProcess(),
                                 &pSection->pvBaseAddress,
                                 &cjSize,
                                 MEM_RELEASE);
    ASSERT(NT_SUCCESS(status));


    EngFreeMem(pSection);
}
