#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_7__ {int nSplit; int /*<<< orphan*/  sw; TYPE_2__ pt; TYPE_1__ rc; scalar_t__* szDir; int /*<<< orphan*/  dwAttribs; int /*<<< orphan*/  dwSort; int /*<<< orphan*/  dwView; } ;
typedef  TYPE_3__ WINDOW ;
typedef  scalar_t__ WCHAR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ CW_USEDEFAULT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  dwNewAttribs ; 
 int /*<<< orphan*/  dwNewSort ; 
 int /*<<< orphan*/  dwNewView ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  szDirKeyFormat ; 
 int /*<<< orphan*/  szNULL ; 
 scalar_t__* szOriginalDirPath ; 
 int /*<<< orphan*/  szSettings ; 
 int /*<<< orphan*/  szStarDotStar ; 
 int /*<<< orphan*/  szTheINIFile ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC14()
{
   WCHAR buf[2*MAXPATHLEN+7*7], key[10];
   WINDOW win;

   //
   // since win.szDir is bigger.
   //
   WCHAR szDir[2*MAXPATHLEN];

   INT nDirNum;
   HWND hwnd;
   INT iNumTrees;

   //
   // make sure this thing exists so we don't hit drives that don't
   // exist any more
   //
   nDirNum = 1;
   iNumTrees = 0;

   do {
      FUNC13(key, szDirKeyFormat, nDirNum++);

      FUNC4(szSettings, key, szNULL, buf, FUNC1(buf), szTheINIFile);

      if (*buf) {

         FUNC5(buf, &win);

         //
         // clean off some junk so we
         // can do this test
         //
         FUNC12(szDir, win.szDir);
         FUNC10(szDir);
         FUNC9(szDir);

         if (!FUNC2(szDir))
            continue;

         dwNewView = win.dwView;
         dwNewSort = win.dwSort;
         dwNewAttribs = win.dwAttribs;

         hwnd = FUNC3(win.szDir,
                                 win.rc.left,
                                 win.rc.top,
                                 win.rc.right - win.rc.left,
                                 win.rc.bottom - win.rc.top,
                                 win.nSplit);

         if (!hwnd) {
            continue;
         }

         iNumTrees++;

         //
         // keep track of this for now...
         //
         if (FUNC6(hwnd))
             FUNC7(hwnd, NULL, win.pt.x, win.pt.y, 0, 0, SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

         FUNC8(hwnd, win.sw);
      }

   } while (*buf);

   //
   // if nothing was saved create a tree for the current drive
   //
   if (!iNumTrees) {

      FUNC12(buf, szOriginalDirPath);
      FUNC0(buf);
      FUNC11(buf, szStarDotStar);

      //
      // default to split window
      //
      hwnd = FUNC3(buf, CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, -1);

      if (!hwnd)
         return FALSE;

      iNumTrees++;
   }

   return TRUE;
}