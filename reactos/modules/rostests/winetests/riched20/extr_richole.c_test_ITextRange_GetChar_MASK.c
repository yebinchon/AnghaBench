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
typedef  char LONG ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  char HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 char CO_E_RELEASED ; 
 char E_INVALIDARG ; 
 char FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 char FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextRange *txtRge = NULL;
  HRESULT hres;
  LONG pch;
  int first, lim;
  static const CHAR test_text1[] = "TestSomeText";

  first = 0, lim = 4;
  FUNC4(&w, &reOle, &txtDoc, NULL);
  FUNC3(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC5(hres == S_OK, "got 0x%08x\n", hres);
  pch = 0xdeadbeef;
  hres = FUNC1(txtRge, &pch);
  FUNC5(hres == S_OK, "ITextRange_GetChar\n");
  FUNC5(pch == 'T', "got wrong char: %c\n", pch);
  FUNC2(txtRge);
  FUNC6(&w, &reOle, &txtDoc, NULL);

  first = 0, lim = 0;
  FUNC4(&w, &reOle, &txtDoc, NULL);
  FUNC3(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC5(hres == S_OK, "got 0x%08x\n", hres);
  pch = 0xdeadbeef;
  hres = FUNC1(txtRge, &pch);
  FUNC5(hres == S_OK, "ITextRange_GetChar\n");
  FUNC5(pch == 'T', "got wrong char: %c\n", pch);
  FUNC2(txtRge);
  FUNC6(&w, &reOle, &txtDoc, NULL);

  first = 12, lim = 12;
  FUNC4(&w, &reOle, &txtDoc, NULL);
  FUNC3(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC5(hres == S_OK, "got 0x%08x\n", hres);
  pch = 0xdeadbeef;
  hres = FUNC1(txtRge, &pch);
  FUNC5(hres == S_OK, "ITextRange_GetChar\n");
  FUNC5(pch == '\r', "got wrong char: %c\n", pch);
  FUNC2(txtRge);
  FUNC6(&w, &reOle, &txtDoc, NULL);

  first = 13, lim = 13;
  FUNC4(&w, &reOle, &txtDoc, NULL);
  FUNC3(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC5(hres == S_OK, "got 0x%08x\n", hres);
  pch = 0xdeadbeef;
  hres = FUNC1(txtRge, &pch);
  FUNC5(hres == S_OK, "ITextRange_GetChar\n");
  FUNC5(pch == '\r', "got wrong char: %c\n", pch);
  FUNC2(txtRge);
  FUNC6(&w, &reOle, &txtDoc, NULL);

  FUNC4(&w, &reOle, &txtDoc, NULL);
  FUNC3(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  first = 12, lim = 12;
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC5(hres == S_OK, "got 0x%08x\n", hres);
  hres = FUNC1(txtRge, NULL);
  FUNC5(hres == E_INVALIDARG, "ITextRange_GetChar\n");

  FUNC6(&w, &reOle, &txtDoc, NULL);

  hres = FUNC1(txtRge, NULL);
  FUNC5(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = FUNC1(txtRge, &pch);
  FUNC5(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  FUNC2(txtRge);
}