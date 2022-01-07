
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int HistoryBuffers; } ;
typedef int PLIST_ENTRY ;
typedef int PHISTORY_BUFFER ;
typedef TYPE_1__* PCONSRV_CONSOLE ;


 int CONTAINING_RECORD (int ,int ,int ) ;
 int HISTORY_BUFFER ;
 int HistoryDeleteBuffer (int ) ;
 int IsListEmpty (int *) ;
 int ListEntry ;
 int RemoveHeadList (int *) ;

VOID
HistoryDeleteBuffers(PCONSRV_CONSOLE Console)
{
    PLIST_ENTRY CurrentEntry;
    PHISTORY_BUFFER HistoryBuffer;

    while (!IsListEmpty(&Console->HistoryBuffers))
    {
        CurrentEntry = RemoveHeadList(&Console->HistoryBuffers);
        HistoryBuffer = CONTAINING_RECORD(CurrentEntry, HISTORY_BUFFER, ListEntry);
        HistoryDeleteBuffer(HistoryBuffer);
    }
}
