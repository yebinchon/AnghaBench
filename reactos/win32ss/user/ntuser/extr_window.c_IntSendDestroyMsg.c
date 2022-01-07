
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_21__ {TYPE_3__* ppi; TYPE_13__* rpdesk; TYPE_14__* MessageQueue; } ;
struct TYPE_20__ {int style; int * spwndParent; } ;
struct TYPE_19__ {TYPE_2__* prpwinsta; } ;
struct TYPE_18__ {TYPE_4__* spwndClipOwner; } ;
struct TYPE_17__ {scalar_t__ hWnd; } ;
struct TYPE_16__ {TYPE_1__ CaretInfo; TYPE_4__* spwndFocus; TYPE_4__* spwndActive; } ;
struct TYPE_15__ {TYPE_4__* spwndTrack; } ;
typedef TYPE_4__* PWND ;
typedef TYPE_5__* PTHREADINFO ;
typedef scalar_t__ HWND ;


 int ExFreePoolWithTag (scalar_t__*,int ) ;
 TYPE_14__* IntGetFocusMessageQueue () ;
 scalar_t__ IntIsWindow (scalar_t__) ;
 int IntRemoveTrackMouseEvent (TYPE_13__*) ;
 scalar_t__* IntWinListChildren (TYPE_4__*) ;
 TYPE_5__* PsGetCurrentThreadWin32Thread () ;
 int TRACE (char*) ;
 int USERTAG_WINDOWLIST ;
 int UserClipboardRelease (TYPE_4__*) ;
 TYPE_4__* UserGetWindowObject (scalar_t__) ;
 scalar_t__ UserHMGetHandle (TYPE_4__*) ;
 int WM_DESTROY ;
 int WS_CHILD ;
 int WS_POPUP ;
 int co_IntDestroyCaret (TYPE_5__*) ;
 int co_IntSendMessage (scalar_t__,int ,int ,int ) ;
 int co_UserSetFocus (int *) ;
 int co_WinPosActivateOtherWindow (TYPE_4__*) ;

__attribute__((used)) static void IntSendDestroyMsg(HWND hWnd)
{
   PTHREADINFO ti;
   PWND Window;

   ti = PsGetCurrentThreadWin32Thread();
   Window = UserGetWindowObject(hWnd);

   if (Window)
   {





      if ( ti->MessageQueue->spwndActive == Window ||
          (ti->MessageQueue->spwndActive == ((void*)0) && ti->MessageQueue == IntGetFocusMessageQueue()) )
      {
         co_WinPosActivateOtherWindow(Window);
      }


      if (ti->MessageQueue->spwndFocus == Window)
      {
         if ((Window->style & (WS_CHILD | WS_POPUP)) == WS_CHILD)
         {
            co_UserSetFocus(Window->spwndParent);
         }
         else
         {
            co_UserSetFocus(((void*)0));
         }
      }

      if (ti->MessageQueue->CaretInfo.hWnd == UserHMGetHandle(Window))
      {
         co_IntDestroyCaret(ti);
      }


      if (ti->rpdesk->spwndTrack == Window)
      {
          IntRemoveTrackMouseEvent(ti->rpdesk);
      }
   }


   if (ti->ppi->prpwinsta != ((void*)0) && Window == ti->ppi->prpwinsta->spwndClipOwner)
   {

       UserClipboardRelease(Window);
   }


   co_IntSendMessage(hWnd, WM_DESTROY, 0, 0);





   if (IntIsWindow(hWnd))
   {
      HWND* pWndArray;
      int i;

      if (!(pWndArray = IntWinListChildren( Window ))) return;

      for (i = 0; pWndArray[i]; i++)
      {
         if (IntIsWindow( pWndArray[i] )) IntSendDestroyMsg( pWndArray[i] );
      }
      ExFreePoolWithTag(pWndArray, USERTAG_WINDOWLIST);
   }
   else
   {
      TRACE("destroyed itself while in WM_DESTROY!\n");
   }
}
