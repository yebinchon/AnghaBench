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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int WS_HSCROLL ; 
 int WS_POPUP ; 
 int WS_VISIBLE ; 
 int WS_VSCROLL ; 
 int /*<<< orphan*/  hmoduleRichEdit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HWND FUNC4(LPCWSTR lpClassName, DWORD dwStyle, HWND parent) {
  HWND hwnd;
  hwnd = FUNC0(lpClassName, NULL, dwStyle|WS_POPUP|WS_HSCROLL|WS_VSCROLL
                      |WS_VISIBLE, 0, 0, 200, 60, parent, NULL,
                      hmoduleRichEdit, NULL);
  FUNC2(hwnd != NULL, "class: %s, error: %d\n", FUNC3(lpClassName), (int) FUNC1());
  return hwnd;
}