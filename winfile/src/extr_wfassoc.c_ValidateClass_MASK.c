#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_2__ {size_t uDesc; int /*<<< orphan*/ * lpszBuf; } ;
typedef  TYPE_1__* PFILETYPE ;
typedef  long LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDD_CLASSLIST ; 
 int /*<<< orphan*/  IDD_COMMAND ; 
 int /*<<< orphan*/  IDD_CONFIG ; 
 int /*<<< orphan*/  IDD_DELETE ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  LB_GETITEMDATA ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,long) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 scalar_t__ szNone ; 

VOID
FUNC3(HWND hDlg)
{
   INT i;
   PFILETYPE pFileType;

   //
   // If (none) is selected, we can't config or delete.
   //
   i = (INT)FUNC2(hDlg, IDD_CLASSLIST, LB_GETCURSEL, 0, 0L);

   if (-1 == i) {
      FUNC2(hDlg, IDD_CLASSLIST, LB_SETCURSEL, 0, 0L);
      i=0;
   }

   FUNC0(FUNC1(hDlg, IDD_CONFIG), i);
   FUNC0(FUNC1(hDlg, IDD_DELETE), i);

   if (i) {

      pFileType = (PFILETYPE) FUNC2(hDlg, IDD_CLASSLIST, LB_GETITEMDATA, i, 0L);

      //
      // Put command string there
      //
      FUNC2(hDlg, IDD_COMMAND, WM_SETTEXT, 0,
         (LPARAM) &pFileType->lpszBuf[pFileType->uDesc]);

   } else {

      FUNC2(hDlg, IDD_COMMAND, WM_SETTEXT, 0, (LPARAM)szNone);
   }
}