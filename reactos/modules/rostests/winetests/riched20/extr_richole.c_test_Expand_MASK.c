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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tomStory ; 

__attribute__((used)) static void FUNC13(void)
{
  static const char test_text1[] = "TestSomeText";
  IRichEditOle *reole = NULL;
  ITextDocument *doc = NULL;
  ITextSelection *selection;
  ITextRange *range;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  FUNC10(&hwnd, &reole, &doc, &selection);
  FUNC9(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  FUNC9(hwnd, EM_SETSEL, 1, 2);

  hr = FUNC2(doc, 0, 4, &range);
  FUNC11(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC3(range, tomStory, NULL);
  FUNC11(hr == S_OK, "got 0x%08x\n", hr);
  FUNC0(range, 0, 13);

  hr = FUNC5(selection, tomStory, NULL);
  FUNC11(hr == S_OK, "got 0x%08x\n", hr);
  FUNC1(selection, 0, 13);

  FUNC7(range, 1, 2);
  FUNC8(selection, 1, 2);

  value = 0;
  hr = FUNC3(range, tomStory, &value);
  FUNC11(hr == S_OK, "got 0x%08x\n", hr);
  FUNC11(value == 12, "got %d\n", value);
  FUNC0(range, 0, 13);

  value = 0;
  hr = FUNC5(selection, tomStory, &value);
  FUNC11(hr == S_OK, "got 0x%08x\n", hr);
  FUNC11(value == 12, "got %d\n", value);
  FUNC1(selection, 0, 13);

  FUNC12(&hwnd, &reole, &doc, NULL);

  hr = FUNC3(range, tomStory, NULL);
  FUNC11(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC3(range, tomStory, &value);
  FUNC11(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC5(selection, tomStory, NULL);
  FUNC11(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = FUNC5(selection, tomStory, &value);
  FUNC11(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  FUNC6(selection);
  FUNC4(range);
}