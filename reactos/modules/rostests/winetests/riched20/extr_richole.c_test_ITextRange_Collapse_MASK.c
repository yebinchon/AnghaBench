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
typedef  int HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int CO_E_RELEASED ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int tomEnd ; 
 int tomFalse ; 
 int tomStart ; 
 int tomTrue ; 
 int tomUndefined ; 

__attribute__((used)) static void FUNC9(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextRange *txtRge = NULL;
  HRESULT hres;
  LONG first, lim, start, end;
  static const CHAR test_text1[] = "TestSomeText";

  FUNC6(&w, &reOle, &txtDoc, NULL);
  FUNC5(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 4, lim = 8;
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  hres = FUNC1(txtRge, tomTrue);
  FUNC7(hres == S_OK, "ITextRange_Collapse\n");
  hres = FUNC3(txtRge, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 4, "got wrong start value: %d\n", start);
  hres = FUNC2(txtRge, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 4, "got wrong end value: %d\n", end);
  FUNC4(txtRge);

  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  hres = FUNC1(txtRge, tomStart);
  FUNC7(hres == S_OK, "ITextRange_Collapse\n");
  hres = FUNC3(txtRge, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 4, "got wrong start value: %d\n", start);
  hres = FUNC2(txtRge, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 4, "got wrong end value: %d\n", end);
  FUNC4(txtRge);

  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  hres = FUNC1(txtRge, tomFalse);
  FUNC7(hres == S_OK, "ITextRange_Collapse\n");
  hres = FUNC3(txtRge, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 8, "got wrong start value: %d\n", start);
  hres = FUNC2(txtRge, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 8, "got wrong end value: %d\n", end);
  FUNC4(txtRge);

  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  hres = FUNC1(txtRge, tomEnd);
  FUNC7(hres == S_OK, "ITextRange_Collapse\n");
  hres = FUNC3(txtRge, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 8, "got wrong start value: %d\n", start);
  hres = FUNC2(txtRge, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 8, "got wrong end value: %d\n", end);
  FUNC4(txtRge);

  /* tomStart is the default */
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  hres = FUNC1(txtRge, 256);
  FUNC7(hres == S_OK, "ITextRange_Collapse\n");
  hres = FUNC3(txtRge, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 4, "got wrong start value: %d\n", start);
  hres = FUNC2(txtRge, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 4, "got wrong end value: %d\n", end);
  FUNC4(txtRge);

  first = 6, lim = 6;
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  hres = FUNC1(txtRge, tomEnd);
  FUNC7(hres == S_FALSE, "ITextRange_Collapse\n");
  hres = FUNC3(txtRge, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 6, "got wrong start value: %d\n", start);
  hres = FUNC2(txtRge, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 6, "got wrong end value: %d\n", end);
  FUNC4(txtRge);

  first = 8, lim = 8;
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  hres = FUNC1(txtRge, tomStart);
  FUNC7(hres == S_FALSE, "ITextRange_Collapse\n");
  hres = FUNC3(txtRge, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 8, "got wrong start value: %d\n", start);
  hres = FUNC2(txtRge, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 8, "got wrong end value: %d\n", end);

  FUNC8(&w, &reOle, &txtDoc, NULL);

  hres = FUNC1(txtRge, tomStart);
  FUNC7(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = FUNC1(txtRge, tomUndefined);
  FUNC7(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  FUNC4(txtRge);
}