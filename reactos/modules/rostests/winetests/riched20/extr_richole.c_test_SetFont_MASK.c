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
typedef  int /*<<< orphan*/  ITextFont ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ tomFalse ; 
 scalar_t__ tomTrue ; 

__attribute__((used)) static void FUNC14(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = NULL;
  ITextDocument *doc = NULL;
  ITextSelection *selection;
  ITextRange *range, *range2;
  ITextFont *font, *font2;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  FUNC11(&hwnd, &reOle, &doc, &selection);
  FUNC10(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  FUNC10(hwnd, EM_SETSEL, 1, 2);

  hr = FUNC1(doc, 0, 4, &range);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC1(doc, 5, 2, &range2);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);

  FUNC0(range, 1);
  hr = FUNC5(range, &font);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);
  FUNC0(range, 2);

  FUNC0(range2, 1);
  hr = FUNC5(range2, &font2);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);
  FUNC0(range2, 2);

  hr = FUNC7(range, NULL);
  FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  /* setting same font, no-op */
  FUNC0(range, 2);
  hr = FUNC7(range, font);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);
  FUNC0(range, 2);

  FUNC0(range2, 2);
  FUNC0(range, 2);
  hr = FUNC7(range, font2);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);
  FUNC0(range2, 2);
  FUNC0(range, 2);

  /* originally range 0-4 is non-italic */
  value = tomTrue;
  hr = FUNC2(font, &value);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);
  FUNC12(value == tomFalse, "got %d\n", value);

  /* set range 5-2 to italic, then set this font to range 0-4 */
  hr = FUNC4(font2, tomTrue);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC7(range, font2);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);

  value = tomFalse;
  hr = FUNC2(font, &value);
  FUNC12(hr == S_OK, "got 0x%08x\n", hr);
  FUNC12(value == tomTrue, "got %d\n", value);

  FUNC13(&hwnd, &reOle, &doc, NULL);

  hr = FUNC7(range, NULL);
  FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC7(range, font);
  FUNC12(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC9(selection, NULL);
  FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC9(selection, font);
  FUNC12(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  FUNC3(font);
  FUNC3(font2);
  FUNC6(range);
  FUNC6(range2);
  FUNC8(selection);
}