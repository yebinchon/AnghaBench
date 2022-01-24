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
typedef  int WPARAM ;
typedef  int LPARAM ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_GETSEL ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int tomEnd ; 
 int tomFalse ; 
 int tomStart ; 
 int tomTrue ; 
 int tomUndefined ; 

__attribute__((used)) static void FUNC6(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextSelection *txtSel = NULL;
  HRESULT hres;
  LONG first, lim, start, end;
  static const CHAR test_text1[] = "TestSomeText";

  FUNC3(&w, &reOle, &txtDoc, &txtSel);
  FUNC2(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 4, lim = 8;
  FUNC2(w, EM_SETSEL, first, lim);
  hres = FUNC0(txtSel, tomTrue);
  FUNC4(hres == S_OK, "ITextSelection_Collapse\n");
  FUNC2(w, EM_GETSEL, (LPARAM)&start, (WPARAM)&end);
  FUNC4(start == 4, "got wrong start value: %d\n", start);
  FUNC4(end == 4, "got wrong end value: %d\n", end);

  FUNC2(w, EM_SETSEL, first, lim);
  hres = FUNC0(txtSel, tomStart);
  FUNC4(hres == S_OK, "ITextSelection_Collapse\n");
  FUNC2(w, EM_GETSEL, (LPARAM)&start, (WPARAM)&end);
  FUNC4(start == 4, "got wrong start value: %d\n", start);
  FUNC4(end == 4, "got wrong end value: %d\n", end);

  FUNC2(w, EM_SETSEL, first, lim);
  hres = FUNC0(txtSel, tomFalse);
  FUNC4(hres == S_OK, "ITextSelection_Collapse\n");
  FUNC2(w, EM_GETSEL, (LPARAM)&start, (WPARAM)&end);
  FUNC4(start == 8, "got wrong start value: %d\n", start);
  FUNC4(end == 8, "got wrong end value: %d\n", end);

  FUNC2(w, EM_SETSEL, first, lim);
  hres = FUNC0(txtSel, tomEnd);
  FUNC4(hres == S_OK, "ITextSelection_Collapse\n");
  FUNC2(w, EM_GETSEL, (LPARAM)&start, (WPARAM)&end);
  FUNC4(start == 8, "got wrong start value: %d\n", start);
  FUNC4(end == 8, "got wrong end value: %d\n", end);

  /* tomStart is the default */
  FUNC2(w, EM_SETSEL, first, lim);
  hres = FUNC0(txtSel, 256);
  FUNC4(hres == S_OK, "ITextSelection_Collapse\n");
  FUNC2(w, EM_GETSEL, (LPARAM)&start, (WPARAM)&end);
  FUNC4(start == 4, "got wrong start value: %d\n", start);
  FUNC4(end == 4, "got wrong end value: %d\n", end);

  first = 6, lim = 6;
  FUNC2(w, EM_SETSEL, first, lim);
  hres = FUNC0(txtSel, tomEnd);
  FUNC4(hres == S_FALSE, "ITextSelection_Collapse\n");
  FUNC2(w, EM_GETSEL, (LPARAM)&start, (WPARAM)&end);
  FUNC4(start == 6, "got wrong start value: %d\n", start);
  FUNC4(end == 6, "got wrong end value: %d\n", end);

  first = 8, lim = 8;
  FUNC2(w, EM_SETSEL, first, lim);
  hres = FUNC0(txtSel, tomStart);
  FUNC4(hres == S_FALSE, "ITextSelection_Collapse\n");
  FUNC2(w, EM_GETSEL, (LPARAM)&start, (WPARAM)&end);
  FUNC4(start == 8, "got wrong start value: %d\n", start);
  FUNC4(end == 8, "got wrong end value: %d\n", end);

  FUNC5(&w, &reOle, &txtDoc, NULL);

  hres = FUNC0(txtSel, tomStart);
  FUNC4(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = FUNC0(txtSel, tomUndefined);
  FUNC4(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  FUNC1(txtSel);
}