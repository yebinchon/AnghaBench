
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_3__ {size_t HandleTableSize; int HandleTableLock; int * HandleTable; int * ConsoleHandle; } ;
typedef TYPE_1__* PCONSOLE_PROCESS_DATA ;


 int ConSrvCloseHandleEntry (int *) ;
 int ConsoleFreeHeap (int *) ;
 int RtlEnterCriticalSection (int *) ;
 int RtlLeaveCriticalSection (int *) ;

__attribute__((used)) static VOID
ConSrvFreeHandlesTable(PCONSOLE_PROCESS_DATA ProcessData)
{
    RtlEnterCriticalSection(&ProcessData->HandleTableLock);

    if (ProcessData->HandleTable != ((void*)0))
    {
        ULONG i;







        if (ProcessData->ConsoleHandle != ((void*)0))
        {

            for (i = 0; i < ProcessData->HandleTableSize; i++)
            {
                ConSrvCloseHandleEntry(&ProcessData->HandleTable[i]);
            }
        }

        ConsoleFreeHeap(ProcessData->HandleTable);
        ProcessData->HandleTable = ((void*)0);
    }

    ProcessData->HandleTableSize = 0;

    RtlLeaveCriticalSection(&ProcessData->HandleTableLock);
}
