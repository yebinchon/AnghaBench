
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_6__ {struct TYPE_6__* Flink; } ;
struct TYPE_7__ {TYPE_1__ PageList; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef int * PEMS_PAGE ;
typedef TYPE_2__* PEMS_HANDLE ;


 int CONTAINING_RECORD (TYPE_1__*,int ,TYPE_1__*) ;
 int EMS_PAGE ;

__attribute__((used)) static PEMS_PAGE GetLogicalPage(PEMS_HANDLE HandleEntry, USHORT LogicalPage)
{
    PLIST_ENTRY Entry = HandleEntry->PageList.Flink;

    while (LogicalPage)
    {
        if (Entry == &HandleEntry->PageList) return ((void*)0);
        LogicalPage--;
        Entry = Entry->Flink;
    }

    return (PEMS_PAGE)CONTAINING_RECORD(Entry, EMS_PAGE, Entry);
}
