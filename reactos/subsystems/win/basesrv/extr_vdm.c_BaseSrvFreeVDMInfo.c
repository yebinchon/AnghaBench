
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {struct TYPE_4__* Reserved; struct TYPE_4__* Title; struct TYPE_4__* Desktop; struct TYPE_4__* Env; struct TYPE_4__* CurDirectory; struct TYPE_4__* PifFile; struct TYPE_4__* AppName; struct TYPE_4__* CmdLine; } ;
typedef TYPE_1__* PVDM_COMMAND_INFO ;


 int BaseSrvHeap ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;

VOID BaseSrvFreeVDMInfo(PVDM_COMMAND_INFO CommandInfo)
{

    if (CommandInfo->CmdLine != ((void*)0)) RtlFreeHeap(BaseSrvHeap, 0, CommandInfo->CmdLine);
    if (CommandInfo->AppName != ((void*)0)) RtlFreeHeap(BaseSrvHeap, 0, CommandInfo->AppName);
    if (CommandInfo->PifFile != ((void*)0)) RtlFreeHeap(BaseSrvHeap, 0, CommandInfo->PifFile);
    if (CommandInfo->CurDirectory != ((void*)0)) RtlFreeHeap(BaseSrvHeap, 0, CommandInfo->CurDirectory);
    if (CommandInfo->Env != ((void*)0)) RtlFreeHeap(BaseSrvHeap, 0, CommandInfo->Env);
    if (CommandInfo->Desktop != ((void*)0)) RtlFreeHeap(BaseSrvHeap, 0, CommandInfo->Desktop);
    if (CommandInfo->Title != ((void*)0)) RtlFreeHeap(BaseSrvHeap, 0, CommandInfo->Title);
    if (CommandInfo->Reserved != ((void*)0)) RtlFreeHeap(BaseSrvHeap, 0, CommandInfo->Reserved);


    RtlFreeHeap(BaseSrvHeap, 0, CommandInfo);
}
