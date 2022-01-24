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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ tomFalse ; 
 scalar_t__ tomTrue ; 

__attribute__((used)) static void FUNC9(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  ITextRange *range, *range2, *range3;
  IRichEditOle *reOle = NULL;
  ITextDocument *doc = NULL;
  ITextSelection *selection;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  FUNC6(&hwnd, &reOle, &doc, &selection);
  FUNC5(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  FUNC5(hwnd, EM_SETSEL, 1, 2);

  hr = FUNC0(doc, 0, 4, &range);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC0(doc, 0, 4, &range2);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);

  /* matches selection */
  hr = FUNC0(doc, 1, 2, &range3);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC1(range, NULL, NULL);
  FUNC7(hr == S_FALSE, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = FUNC1(range, NULL, &value);
  FUNC7(hr == S_FALSE, "got 0x%08x\n", hr);
  FUNC7(value == tomFalse, "got %d\n", value);

  hr = FUNC1(range, range2, NULL);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);

  value = tomFalse;
  hr = FUNC1(range, range2, &value);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);
  FUNC7(value == tomTrue, "got %d\n", value);

  /* selection */
  hr = FUNC3(selection, NULL, NULL);
  FUNC7(hr == S_FALSE, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = FUNC3(selection, NULL, &value);
  FUNC7(hr == S_FALSE, "got 0x%08x\n", hr);
  FUNC7(value == tomFalse, "got %d\n", value);

  hr = FUNC3(selection, range2, NULL);
  FUNC7(hr == S_FALSE, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = FUNC3(selection, range2, &value);
  FUNC7(hr == S_FALSE, "got 0x%08x\n", hr);
  FUNC7(value == tomFalse, "got %d\n", value);

  value = tomTrue;
  hr = FUNC3(selection, range3, &value);
  FUNC7(hr == S_FALSE, "got 0x%08x\n", hr);
  FUNC7(value == tomFalse, "got %d\n", value);

  /* seems to work on ITextSelection ranges only */
  value = tomFalse;
  hr = FUNC3(selection, (ITextRange*)selection, &value);
  FUNC7(hr == S_OK, "got 0x%08x\n", hr);
  FUNC7(value == tomTrue, "got %d\n", value);

  FUNC8(&hwnd, &reOle, &doc, NULL);

  hr = FUNC1(range, NULL, NULL);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = FUNC1(range, NULL, &value);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  FUNC7(value == tomFalse, "got %d\n", value);

  hr = FUNC1(range, range2, NULL);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = FUNC1(range, range2, &value);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  FUNC7(value == tomFalse, "got %d\n", value);

  /* selection */
  hr = FUNC3(selection, NULL, NULL);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = FUNC3(selection, NULL, &value);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  FUNC7(value == tomFalse, "got %d\n", value);

  hr = FUNC3(selection, range2, NULL);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = FUNC3(selection, range2, &value);
  FUNC7(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  FUNC7(value == tomFalse, "got %d\n", value);

  FUNC2(range);
  FUNC2(range2);
  FUNC2(range3);
  FUNC4(selection);
}