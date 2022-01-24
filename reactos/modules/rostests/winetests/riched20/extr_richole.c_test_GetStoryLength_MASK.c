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
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int E_INVALIDARG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = NULL;
  ITextDocument *doc = NULL;
  ITextSelection *selection;
  ITextRange *range;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  FUNC6(&hwnd, &reOle, &doc, &selection);
  FUNC5(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  FUNC5(hwnd, EM_SETSEL, 1, 2);

  hr = FUNC0(doc, 0, 4, &range);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC1(range, NULL);
  FUNC7(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  value = 0;
  hr = FUNC1(range, &value);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);
  FUNC7(value == 13, "got %d\n", value);

  hr = FUNC3(selection, NULL);
  FUNC7(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  value = 0;
  hr = FUNC3(selection, &value);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);
  FUNC7(value == 13, "got %d\n", value);

  FUNC5(hwnd, WM_SETTEXT, 0, (LPARAM)"");

  value = 0;
  hr = FUNC1(range, &value);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);
  FUNC7(value == 1, "got %d\n", value);

  value = 0;
  hr = FUNC3(selection, &value);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);
  FUNC7(value == 1, "got %d\n", value);

  FUNC8(&hwnd, &reOle, &doc, NULL);

  hr = FUNC1(range, NULL);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = 100;
  hr = FUNC1(range, &value);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  FUNC7(value == 100, "got %d\n", value);

  hr = FUNC3(selection, NULL);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = 100;
  hr = FUNC3(selection, &value);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  FUNC7(value == 100, "got %d\n", value);

  FUNC4(selection);
  FUNC2(range);
}