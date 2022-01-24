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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CO_E_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextRange *txtRge, *range2;
  HRESULT hres;
  LONG value;

  FUNC7(&w, &reOle, &txtDoc, NULL);
  hres = FUNC1(txtDoc, 0, 0, &txtRge);
  FUNC8(hres == S_OK, "ITextDocument_Range fails 0x%x.\n", hres);
  FUNC0(txtRge, 1);

  hres = FUNC1(txtDoc, 0, 0, &range2);
  FUNC8(hres == S_OK, "ITextDocument_Range fails 0x%x.\n", hres);
  FUNC8(range2 != txtRge, "A new pointer should be returned\n");
  FUNC5(range2);

  hres = FUNC1(txtDoc, 0, 0, NULL);
  FUNC8(hres == E_INVALIDARG, "ITextDocument_Range should fail 0x%x.\n", hres);

  FUNC6(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  hres = FUNC1(txtDoc, 8, 30, &range2);
  FUNC8(hres == S_OK, "ITextDocument_Range fails 0x%x.\n", hres);
  hres = FUNC4(range2, &value);
  FUNC8(hres == S_OK, "got 0x%08x\n", hres);
  FUNC8(value == 8, "got %d\n", value);

  hres = FUNC3(range2, &value);
  FUNC8(hres == S_OK, "got 0x%08x\n", hres);
  FUNC8(value == 13, "got %d\n", value);
  FUNC5(range2);

  FUNC9(&w, &reOle, &txtDoc, NULL);
  hres = FUNC2(txtRge, NULL);
  FUNC8(hres == CO_E_RELEASED, "ITextRange after ITextDocument destroyed\n");
  FUNC5(txtRge);
}