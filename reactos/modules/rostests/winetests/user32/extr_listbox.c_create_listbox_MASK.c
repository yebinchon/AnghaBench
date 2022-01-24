#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT_PTR ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int LBS_SORT ; 
 int LBS_STANDARD ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 int /*<<< orphan*/  REDRAW ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__* strings ; 

__attribute__((used)) static HWND
FUNC4 (DWORD add_style, HWND parent)
{
  HWND handle;
  INT_PTR ctl_id=0;
  if (parent)
    ctl_id=1;
  handle=FUNC0("LISTBOX", "TestList",
                            (LBS_STANDARD & ~LBS_SORT) | add_style,
                            0, 0, 100, 100,
                            parent, (HMENU)ctl_id, NULL, 0);

  FUNC3 (handle);
  FUNC1(handle, LB_ADDSTRING, 0, (LPARAM) strings[0]);
  FUNC1(handle, LB_ADDSTRING, 0, (LPARAM) strings[1]);
  FUNC1(handle, LB_ADDSTRING, 0, (LPARAM) strings[2]);
  FUNC1(handle, LB_ADDSTRING, 0, (LPARAM) strings[3]);

#ifdef VISIBLE
  ShowWindow (handle, SW_SHOW);
#endif
  REDRAW;

  return handle;
}