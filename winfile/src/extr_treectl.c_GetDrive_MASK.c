#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ WCHAR ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;
typedef  scalar_t__ TCHAR ;
typedef  TYPE_1__ POINT ;
typedef  scalar_t__ LONG_PTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ CHAR_NULL ; 
 int /*<<< orphan*/  FS_GETDRIVE ; 
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ hAppInstance ; 
 scalar_t__ hwndMDIClient ; 

INT
FUNC4(HWND hwnd, POINT pt)
{
   WCHAR chDrive;

   //
   // make sure we are not sending the FS_GETDRIVE message to other apps
   //
   if (FUNC1(hwnd, GWLP_HINSTANCE) != (LONG_PTR)hAppInstance)
      return 0;

   chDrive = CHAR_NULL;
   while (hwnd && (hwnd != hwndMDIClient)) {
      chDrive = (TCHAR)FUNC3(hwnd, FS_GETDRIVE, 0, FUNC2((WORD)pt.x, (WORD)pt.y));

      if (chDrive)
         return chDrive;

      hwnd = FUNC0(hwnd); // try the next higher up
   }

   return 0;
}