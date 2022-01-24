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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int HRESULT ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int CO_E_RELEASED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  static const WCHAR textW[] = {'a','b','c','d','e','f','g','h','i',0};
  IRichEditOle *reOle = NULL;
  ITextDocument *doc = NULL;
  ITextRange *range, *range2;
  LONG value;
  HRESULT hr;
  HWND hwnd;
  BSTR str;

  FUNC9(&hwnd, &reOle, &doc, NULL);
  FUNC5(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);

  hr = FUNC0(doc, 0, 4, &range);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);

  hr = FUNC0(doc, 0, 4, &range2);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);

  value = 1;
  hr = FUNC2(range2, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 0, "got %d\n", value);

  value = 0;
  hr = FUNC1(range2, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 4, "got %d\n", value);

  hr = FUNC4(range, NULL);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);

  value = 1;
  hr = FUNC1(range2, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 0, "got %d\n", value);

  str = FUNC6(textW);
  hr = FUNC4(range, str);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC8(str);

  value = 1;
  hr = FUNC2(range, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 0, "got %d\n", value);

  value = 0;
  hr = FUNC1(range, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 9, "got %d\n", value);

  value = 1;
  hr = FUNC2(range2, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 0, "got %d\n", value);

  value = 0;
  hr = FUNC1(range2, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 0, "got %d\n", value);

  str = FUNC7(NULL, 0);
  hr = FUNC4(range, str);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  value = 1;
  hr = FUNC1(range, &value);
  FUNC10(hr == S_OK, "got 0x%08x\n", hr);
  FUNC10(value == 0, "got %d\n", value);
  FUNC8(str);

  FUNC3(range2);
  FUNC11(&hwnd, &reOle, &doc, NULL);

  hr = FUNC4(range, NULL);
  FUNC10(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  str = FUNC7(NULL, 0);
  hr = FUNC4(range, str);
  FUNC10(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  FUNC8(str);

  FUNC3(range);
}