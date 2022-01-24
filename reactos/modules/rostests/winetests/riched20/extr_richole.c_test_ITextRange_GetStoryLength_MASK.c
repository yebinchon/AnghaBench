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
typedef  int LONG ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextRange *txtRge = NULL;
  HRESULT hres;
  LONG count;
  static const CHAR test_text1[] = "TestSomeText";
  int len = FUNC8(test_text1) + 1;

  FUNC5(&w, &reOle, &txtDoc, NULL);
  FUNC4(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  FUNC0(txtDoc, 0, 0, &txtRge);

  hres = FUNC1(txtRge, &count);
  FUNC6(hres == S_OK, "ITextRange_GetStoryLength\n");
  FUNC6(count == len, "got wrong length: %d\n", count);

  FUNC3(txtRge, 1, 2);
  hres = FUNC1(txtRge, &count);
  FUNC6(hres == S_OK, "ITextRange_GetStoryLength\n");
  FUNC6(count == len, "got wrong length: %d\n", count);

  hres = FUNC1(txtRge, NULL);
  FUNC6(hres == E_INVALIDARG, "ITextRange_GetStoryLength\n");

  FUNC2(txtRge);
  FUNC7(&w, &reOle, &txtDoc, NULL);
}