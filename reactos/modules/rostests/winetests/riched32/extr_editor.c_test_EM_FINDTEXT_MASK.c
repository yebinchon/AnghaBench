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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  find_tests ; 
 int /*<<< orphan*/  find_tests2 ; 
 int /*<<< orphan*/  find_tests3 ; 
 scalar_t__ haystack ; 
 scalar_t__ haystack2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
  HWND hwndRichEdit = FUNC3(NULL);

  /* Empty rich edit control */
  FUNC4(hwndRichEdit, "1", find_tests, FUNC0(find_tests));

  FUNC2(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)haystack);

  /* Haystack text */
  FUNC4(hwndRichEdit, "2", find_tests2, FUNC0(find_tests2));

  FUNC2(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)haystack2);

  /* Haystack text 2 (with EOL characters) */
  FUNC4(hwndRichEdit, "3", find_tests3, FUNC0(find_tests3));

  FUNC1(hwndRichEdit);
}