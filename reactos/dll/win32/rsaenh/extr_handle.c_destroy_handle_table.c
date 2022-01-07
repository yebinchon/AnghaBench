
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* DebugInfo; } ;
struct handle_table {TYPE_2__ mutex; int paEntries; } ;
struct TYPE_3__ {scalar_t__* Spare; } ;


 int DeleteCriticalSection (TYPE_2__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int TRACE (char*,struct handle_table*) ;

void destroy_handle_table(struct handle_table *lpTable)
{
    TRACE("(lpTable=%p)\n", lpTable);

    HeapFree(GetProcessHeap(), 0, lpTable->paEntries);
    lpTable->mutex.DebugInfo->Spare[0] = 0;
    DeleteCriticalSection(&lpTable->mutex);
}
