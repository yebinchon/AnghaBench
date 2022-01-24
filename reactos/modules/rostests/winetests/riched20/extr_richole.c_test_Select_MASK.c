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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = NULL;
  ITextDocument *doc = NULL;
  ITextSelection *selection;
  ITextRange *range;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  FUNC7(&hwnd, &reOle, &doc, &selection);
  FUNC6(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  FUNC6(hwnd, EM_SETSEL, 1, 2);

  hr = FUNC0(doc, 0, 4, &range);
  FUNC8(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC2(range);
  FUNC8(hr == S_OK, "got 0x%08x\n", hr);

  value = 1;
  hr = FUNC3(selection, &value);
  FUNC8(hr == S_OK, "got 0x%08x\n", hr);
  FUNC8(value == 0, "got %d\n", value);

  hr = FUNC2(range);
  FUNC8(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC5(selection);
  FUNC8(hr == S_OK, "got 0x%08x\n", hr);

  FUNC9(&hwnd, &reOle, &doc, NULL);

  hr = FUNC2(range);
  FUNC8(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC5(selection);
  FUNC8(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  FUNC1(range);
  FUNC4(selection);
}