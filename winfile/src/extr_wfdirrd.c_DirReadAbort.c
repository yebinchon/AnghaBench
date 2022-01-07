
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ LPXDTALINK ;
typedef int LPARAM ;
typedef int HWND ;
typedef int EDIRABORT ;


 int CriticalSectionDirRead ;
 int EnterCriticalSection (int *) ;
 int FreeDTA (int ) ;
 int GWL_HDTA ;
 int GWL_HDTAABORT ;
 int LeaveCriticalSection (int *) ;
 int SetEvent (int ) ;
 int SetWindowLongPtr (int ,int ,int ) ;
 int TRUE ;
 int bDirReadAbort ;
 int hEventDirRead ;

VOID
DirReadAbort(
   HWND hwnd,
   LPXDTALINK lpStart,
   EDIRABORT eDirAbort)
{



   EnterCriticalSection(&CriticalSectionDirRead);

   FreeDTA(hwnd);

   SetWindowLongPtr(hwnd, GWL_HDTA, (LPARAM)lpStart);
   SetWindowLongPtr(hwnd, GWL_HDTAABORT, eDirAbort);
   bDirReadAbort = TRUE;

   SetEvent(hEventDirRead);

   LeaveCriticalSection(&CriticalSectionDirRead);
}
