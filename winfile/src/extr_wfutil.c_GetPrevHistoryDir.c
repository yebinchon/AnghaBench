
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int szDir; int * hwnd; } ;
typedef int LPWSTR ;
typedef int * HWND ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int MAXHISTORY ;
 scalar_t__ TRUE ;
 int historyCur ;
 int lstrcpy (int ,int ) ;
 TYPE_1__* rghistoryDir ;

BOOL
GetPrevHistoryDir(BOOL forward, HWND *phwnd, LPWSTR szDir)
{
 DWORD historyNext = (historyCur + 1) % MAXHISTORY;
 DWORD historyPrev = (historyCur == 0 ? MAXHISTORY : historyCur )- 1;
 DWORD historyT = forward ? historyNext : historyPrev;

 if (rghistoryDir[historyT].hwnd == ((void*)0))
  return FALSE;

 historyCur = historyT;

 *phwnd = rghistoryDir[historyCur].hwnd;
 lstrcpy(szDir, rghistoryDir[historyCur].szDir);
 return TRUE;
}
