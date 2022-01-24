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
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextPara ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CO_E_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = NULL;
  ITextDocument *doc = NULL;
  ITextSelection *selection;
  ITextRange *range = NULL;
  ITextPara *para, *para2;
  HRESULT hr;
  HWND hwnd;

  FUNC8(&hwnd, &reOle, &doc, &selection);
  FUNC7(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);

  FUNC0(reOle, 3);
  FUNC0(doc, 3);

  hr = FUNC1(doc, 0, 4, &range);
  FUNC9(hr == S_OK, "got 0x%08x\n", hr);

  FUNC0(reOle, 3);
  FUNC0(doc, 3);
  FUNC0(range, 1);

  hr = FUNC3(range, NULL);
  FUNC9(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC3(range, &para);
  FUNC9(hr == S_OK, "got 0x%08x\n", hr);

  FUNC0(reOle, 3);
  FUNC0(doc, 3);
  FUNC0(range, 2);
  FUNC0(para, 1);

  hr = FUNC3(range, &para2);
  FUNC9(hr == S_OK, "got 0x%08x\n", hr);
  FUNC9(para != para2, "got %p, %p\n", *para, para2);

  FUNC0(reOle, 3);
  FUNC0(doc, 3);
  FUNC0(range, 3);
  FUNC0(para, 1);
  FUNC0(para2, 1);

  FUNC2(para);
  FUNC2(para2);

  FUNC0(reOle, 3);
  FUNC0(doc, 3);
  FUNC0(selection, 2);

  hr = FUNC5(selection, &para);
  FUNC9(hr == S_OK, "got 0x%08x\n", hr);

  FUNC0(reOle, 3);
  FUNC0(doc, 3);
  FUNC0(selection, 3);
  FUNC0(para, 1);

  hr = FUNC5(selection, &para2);
  FUNC9(hr == S_OK, "got 0x%08x\n", hr);
  FUNC9(para != para2, "got %p, %p\n", *para, para2);

  FUNC2(para);
  FUNC2(para2);
  FUNC10(&hwnd, &reOle, &doc, NULL);

  hr = FUNC3(range, NULL);
  FUNC9(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC3(range, &para);
  FUNC9(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC5(selection, NULL);
  FUNC9(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC5(selection, &para);
  FUNC9(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  FUNC6(selection);
  FUNC4(range);
}