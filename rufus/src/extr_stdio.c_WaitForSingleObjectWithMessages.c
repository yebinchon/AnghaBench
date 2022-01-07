
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ message; } ;
typedef TYPE_1__ MSG ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int DispatchMessage (TYPE_1__*) ;
 int ERROR_CANCELLED ;
 int FALSE ;
 scalar_t__ GetTickCount64 () ;
 scalar_t__ INFINITE ;
 scalar_t__ MsgWaitForMultipleObjects (int,int *,int ,scalar_t__,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessage (TYPE_1__*,int *,int ,int ,int ) ;
 int QS_ALLINPUT ;
 int SetLastError (int ) ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WM_CLOSE ;
 scalar_t__ WM_QUIT ;

DWORD WaitForSingleObjectWithMessages(HANDLE hHandle, DWORD dwMilliseconds)
{
 uint64_t CurTime, EndTime = GetTickCount64() + dwMilliseconds;
 DWORD res;
 MSG msg;

 do {

  while (PeekMessage(&msg, ((void*)0), 0, 0, PM_REMOVE)) {
   if ((msg.message == WM_QUIT) || (msg.message == WM_CLOSE)) {
    SetLastError(ERROR_CANCELLED);
    return WAIT_FAILED;
   } else {
    DispatchMessage(&msg);
   }
  }


  res = MsgWaitForMultipleObjects(1, &hHandle, FALSE, dwMilliseconds, QS_ALLINPUT);

  if (dwMilliseconds != INFINITE) {
   CurTime = GetTickCount64();


   if (CurTime < EndTime)
    dwMilliseconds = (DWORD) (EndTime - CurTime);
   else
    res = WAIT_TIMEOUT;
  }
 } while (res == (WAIT_OBJECT_0 + 1));

 return res;
}
