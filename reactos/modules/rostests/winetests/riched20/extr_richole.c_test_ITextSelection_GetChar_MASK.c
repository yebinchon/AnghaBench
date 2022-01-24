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
typedef  char LONG ;
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  char HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 char CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 char E_INVALIDARG ; 
 char FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextSelection *txtSel = NULL;
  HRESULT hres;
  LONG pch;
  int first, lim;
  static const CHAR test_text1[] = "TestSomeText";

  FUNC3(&w, &reOle, &txtDoc, &txtSel);
  FUNC2(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 0, lim = 4;
  FUNC2(w, EM_SETSEL, first, lim);
  pch = 0xdeadbeef;
  hres = FUNC0(txtSel, &pch);
  FUNC4(hres == S_OK, "ITextSelection_GetChar\n");
  FUNC4(pch == 'T', "got wrong char: %c\n", pch);

  first = 0, lim = 0;
  FUNC2(w, EM_SETSEL, first, lim);
  pch = 0xdeadbeef;
  hres = FUNC0(txtSel, &pch);
  FUNC4(hres == S_OK, "ITextSelection_GetChar\n");
  FUNC4(pch == 'T', "got wrong char: %c\n", pch);

  first = 12, lim = 12;
  FUNC2(w, EM_SETSEL, first, lim);
  pch = 0xdeadbeef;
  hres = FUNC0(txtSel, &pch);
  FUNC4(hres == S_OK, "ITextSelection_GetChar\n");
  FUNC4(pch == '\r', "got wrong char: %c\n", pch);

  first = 13, lim = 13;
  FUNC2(w, EM_SETSEL, first, lim);
  pch = 0xdeadbeef;
  hres = FUNC0(txtSel, &pch);
  FUNC4(hres == S_OK, "ITextSelection_GetChar\n");
  FUNC4(pch == '\r', "got wrong char: %c\n", pch);

  hres = FUNC0(txtSel, NULL);
  FUNC4(hres == E_INVALIDARG, "ITextSelection_GetChar\n");

  FUNC5(&w, &reOle, &txtDoc, NULL);

  hres = FUNC0(txtSel, NULL);
  FUNC4(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = FUNC0(txtSel, &pch);
  FUNC4(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  FUNC1(txtSel);
}