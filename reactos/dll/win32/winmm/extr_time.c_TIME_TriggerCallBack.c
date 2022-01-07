
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wFlags; int (* lpFunc ) (int ,int ,int ,int ,int ) ;int dwUser; int wTimerID; scalar_t__ dwTriggerTime; } ;
typedef TYPE_1__* LPWINE_TIMERENTRY ;
typedef int HANDLE ;


 int FIXME (char*,int,int (*) (int ,int ,int ,int ,int )) ;
 int GetCurrentThreadId () ;
 scalar_t__ GetTickCount () ;
 int PulseEvent (int ) ;
 int SetEvent (int ) ;



 int TRACE (char*,int ,int (*) (int ,int ,int ,int ,int ),int ,int ,scalar_t__,scalar_t__) ;
 int stub1 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void TIME_TriggerCallBack(LPWINE_TIMERENTRY lpTimer)
{
    TRACE("%04lx:CallBack => lpFunc=%p wTimerID=%04X dwUser=%08lX dwTriggerTime %ld(delta %ld)\n",
   GetCurrentThreadId(), lpTimer->lpFunc, lpTimer->wTimerID, lpTimer->dwUser,
          lpTimer->dwTriggerTime, GetTickCount() - lpTimer->dwTriggerTime);






    switch (lpTimer->wFlags & 0x30) {
    case 128:
     (lpTimer->lpFunc)(lpTimer->wTimerID, 0, lpTimer->dwUser, 0, 0);
 break;
    case 129:
 SetEvent((HANDLE)lpTimer->lpFunc);
 break;
    case 130:
 PulseEvent((HANDLE)lpTimer->lpFunc);
 break;
    default:
 FIXME("Unknown callback type 0x%04x for mmtime callback (%p), ignored.\n",
       lpTimer->wFlags, lpTimer->lpFunc);
 break;
    }
}
