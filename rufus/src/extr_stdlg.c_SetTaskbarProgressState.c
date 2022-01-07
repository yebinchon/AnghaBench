
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TASKBAR_PROGRESS_FLAGS ;
typedef int BOOL ;


 int FAILED (int ) ;
 int FALSE ;
 int ITaskbarList3_SetProgressState (int *,int ,int ) ;
 int hMainDialog ;
 int * ptbl ;

BOOL SetTaskbarProgressState(TASKBAR_PROGRESS_FLAGS tbpFlags)
{
 if (ptbl == ((void*)0))
  return FALSE;
 return !FAILED(ITaskbarList3_SetProgressState(ptbl, hMainDialog, tbpFlags));
}
