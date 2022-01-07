
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {scalar_t__ ServerEvent; scalar_t__ ProcessHandle; scalar_t__ CurDirsLength; struct TYPE_4__* CurrentDirs; } ;
typedef TYPE_1__* PVDM_CONSOLE_RECORD ;


 int BaseSrvHeap ;
 int NtClose (scalar_t__) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;

VOID BaseSrvDestroyConsoleRecord(PVDM_CONSOLE_RECORD ConsoleRecord)
{
    if (ConsoleRecord->CurrentDirs != ((void*)0))
    {

        RtlFreeHeap(BaseSrvHeap, 0, ConsoleRecord->CurrentDirs);
        ConsoleRecord->CurrentDirs = ((void*)0);
        ConsoleRecord->CurDirsLength = 0;
    }


    if (ConsoleRecord->ProcessHandle)
        NtClose(ConsoleRecord->ProcessHandle);


    if (ConsoleRecord->ServerEvent)
        NtClose(ConsoleRecord->ServerEvent);



    RtlFreeHeap(BaseSrvHeap, 0, ConsoleRecord);

}
