
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef int BOOL ;


 int FAILED (int ) ;
 int FALSE ;
 int ITaskbarList3_SetProgressValue (int *,int ,int ,int ) ;
 int hMainDialog ;
 int * ptbl ;

BOOL SetTaskbarProgressValue(ULONGLONG ullCompleted, ULONGLONG ullTotal)
{
 if (ptbl == ((void*)0))
  return FALSE;
 return !FAILED(ITaskbarList3_SetProgressValue(ptbl, hMainDialog, ullCompleted, ullTotal));
}
