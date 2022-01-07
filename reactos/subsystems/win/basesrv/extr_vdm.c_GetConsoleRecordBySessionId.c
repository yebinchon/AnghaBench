
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {scalar_t__ SessionId; } ;
typedef TYPE_1__* PVDM_CONSOLE_RECORD ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int NTSTATUS ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int Entry ;
 int STATUS_NOT_FOUND ;
 int STATUS_SUCCESS ;
 TYPE_2__ VDMConsoleListHead ;
 int VDM_CONSOLE_RECORD ;

NTSTATUS GetConsoleRecordBySessionId(ULONG TaskId, PVDM_CONSOLE_RECORD *Record)
{
    PLIST_ENTRY i;
    PVDM_CONSOLE_RECORD CurrentRecord = ((void*)0);


    for (i = VDMConsoleListHead.Flink; i != &VDMConsoleListHead; i = i->Flink)
    {
        CurrentRecord = CONTAINING_RECORD(i, VDM_CONSOLE_RECORD, Entry);
        if (CurrentRecord->SessionId == TaskId) break;
    }


    if (i == &VDMConsoleListHead) CurrentRecord = ((void*)0);

    *Record = CurrentRecord;
    return CurrentRecord ? STATUS_SUCCESS : STATUS_NOT_FOUND;
}
