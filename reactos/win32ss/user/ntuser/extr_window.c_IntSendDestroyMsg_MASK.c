#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_3__* ppi; TYPE_13__* rpdesk; TYPE_14__* MessageQueue; } ;
struct TYPE_20__ {int style; int /*<<< orphan*/ * spwndParent; } ;
struct TYPE_19__ {TYPE_2__* prpwinsta; } ;
struct TYPE_18__ {TYPE_4__* spwndClipOwner; } ;
struct TYPE_17__ {scalar_t__ hWnd; } ;
struct TYPE_16__ {TYPE_1__ CaretInfo; TYPE_4__* spwndFocus; TYPE_4__* spwndActive; } ;
struct TYPE_15__ {TYPE_4__* spwndTrack; } ;
typedef  TYPE_4__* PWND ;
typedef  TYPE_5__* PTHREADINFO ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_14__* FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*) ; 
 scalar_t__* FUNC4 (TYPE_4__*) ; 
 TYPE_5__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  USERTAG_WINDOWLIST ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 TYPE_4__* FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  WM_DESTROY ; 
 int WS_CHILD ; 
 int WS_POPUP ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC14(HWND hWnd)
{
   PTHREADINFO ti;
   PWND Window;

   ti = FUNC5();
   Window = FUNC8(hWnd);

   if (Window)
   {
      /*
       * Look whether the focus is within the tree of windows
       * we will be destroying.
       */
      // Rule #1
      if ( ti->MessageQueue->spwndActive == Window || // Fixes CORE-106 RegSvr32 exit and return focus to CMD.
          (ti->MessageQueue->spwndActive == NULL && ti->MessageQueue == FUNC1()) )
      {
         FUNC13(Window);
      }

      /* Fixes CMD properties closing and returning focus to CMD */
      if (ti->MessageQueue->spwndFocus == Window)
      {
         if ((Window->style & (WS_CHILD | WS_POPUP)) == WS_CHILD)
         {
            FUNC12(Window->spwndParent);
         }
         else
         {
            FUNC12(NULL);
         }
      }

      if (ti->MessageQueue->CaretInfo.hWnd == FUNC9(Window))
      {
         FUNC10(ti);
      }

      /* If the window being destroyed is currently tracked... */
      if (ti->rpdesk->spwndTrack == Window)
      {
          FUNC3(ti->rpdesk);
      }
   }

   /* If the window being destroyed is the current clipboard owner... */
   if (ti->ppi->prpwinsta != NULL && Window == ti->ppi->prpwinsta->spwndClipOwner)
   {
       /* ... make it release the clipboard */
       FUNC7(Window);
   }

   /* Send the WM_DESTROY to the window */
   FUNC11(hWnd, WM_DESTROY, 0, 0);

   /*
    * This WM_DESTROY message can trigger re-entrant calls to DestroyWindow
    * make sure that the window still exists when we come back.
    */
   if (FUNC2(hWnd))
   {
      HWND* pWndArray;
      int i;

      if (!(pWndArray = FUNC4( Window ))) return;

      for (i = 0; pWndArray[i]; i++)
      {
         if (FUNC2( pWndArray[i] )) FUNC14( pWndArray[i] );
      }
      FUNC0(pWndArray, USERTAG_WINDOWLIST);
   }
   else
   {
      FUNC6("destroyed itself while in WM_DESTROY!\n");
   }
}