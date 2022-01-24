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
typedef  int LPARAM ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  EM_SETSEL ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextSelection *txtSel = NULL;
  HRESULT hres;
  LONG count;
  static const CHAR test_text1[] = "TestSomeText";
  int len = FUNC5(test_text1) + 1;

  FUNC2(&w, &reOle, &txtDoc, &txtSel);
  FUNC1(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  hres = FUNC0(txtSel, &count);
  FUNC3(hres == S_OK, "ITextSelection_GetStoryLength\n");
  FUNC3(count == len, "got wrong length: %d\n", count);

  FUNC1(w, EM_SETSEL, 1, 2);
  hres = FUNC0(txtSel, &count);
  FUNC3(hres == S_OK, "ITextSelection_GetStoryLength\n");
  FUNC3(count == len, "got wrong length: %d\n", count);

  hres = FUNC0(txtSel, NULL);
  FUNC3(hres == E_INVALIDARG, "ITextSelection_GetStoryLength\n");

  FUNC4(&w, &reOle, &txtDoc, &txtSel);
}