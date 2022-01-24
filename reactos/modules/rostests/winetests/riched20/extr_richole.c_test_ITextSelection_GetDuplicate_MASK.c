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
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextFont ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int E_INVALIDARG ; 
 int E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_ITextSelection ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = NULL;
  ITextDocument *doc = NULL;
  ITextSelection *selection, *sel2;
  ITextRange *range, *range2;
  ITextFont *font;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  FUNC9(&hwnd, &reOle, &doc, &selection);
  FUNC8(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  FUNC8(hwnd, EM_SETSEL, 1, 2);

  hr = FUNC6(selection, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  FUNC0(selection, 2);

  hr = FUNC6(selection, &range);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC6(selection, &range2);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(range != range2, "got %p, %p\n", *range, range2);

  FUNC0(selection, 2);
  FUNC0(range, 1);
  FUNC0(range2, 1);

  FUNC5(range2);

  value = 0;
  hr = FUNC3(range, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 1, "got %d\n", value);

  value = 0;
  hr = FUNC1(range, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 2, "got %d\n", value);

  FUNC8(hwnd, EM_SETSEL, 2, 3);

  value = 0;
  hr = FUNC3(range, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 1, "got %d\n", value);

  value = 0;
  hr = FUNC1(range, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 2, "got %d\n", value);

  hr = FUNC4(range, &IID_ITextSelection, (void**)&sel2);
  FUNC10(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

  FUNC11(&hwnd, &reOle, &doc, NULL);

  hr = FUNC6(selection, NULL);
  FUNC10(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC6(selection, &range);
  FUNC10(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC2(range, &font);
  FUNC10(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  FUNC7(selection);
  FUNC5(range);
}