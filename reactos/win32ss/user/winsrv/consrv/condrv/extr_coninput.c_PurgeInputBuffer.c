
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int InputEvents; } ;
struct TYPE_5__ {TYPE_1__ InputBuffer; } ;
typedef int PLIST_ENTRY ;
typedef TYPE_2__* PCONSOLE ;


 int CONTAINING_RECORD (int ,int,int ) ;
 int ConsoleFreeHeap (int) ;
 int ConsoleInput ;
 int Event ;
 int IsListEmpty (int *) ;
 int ListEntry ;
 int RemoveHeadList (int *) ;

__attribute__((used)) static VOID
PurgeInputBuffer(PCONSOLE Console)
{
    PLIST_ENTRY CurrentEntry;
    ConsoleInput* Event;

    while (!IsListEmpty(&Console->InputBuffer.InputEvents))
    {
        CurrentEntry = RemoveHeadList(&Console->InputBuffer.InputEvents);
        Event = CONTAINING_RECORD(CurrentEntry, ConsoleInput, ListEntry);
        ConsoleFreeHeap(Event);
    }


}
