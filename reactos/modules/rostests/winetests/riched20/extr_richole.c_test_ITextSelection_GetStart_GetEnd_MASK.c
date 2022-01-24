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
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextSelection *txtSel = NULL;
  HRESULT hres;
  int first, lim, start, end;
  static const CHAR test_text1[] = "TestSomeText";

  FUNC6(&w, &reOle, &txtDoc, &txtSel);
  FUNC5(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 2, lim = 5;
  FUNC5(w, EM_SETSEL, first, lim);
  start = 0xdeadbeef;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "ITextSelection_GetStart\n");
  FUNC7(start == 2, "got wrong start value: %d\n", start);
  end = 0xdeadbeef;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "ITextSelection_GetEnd\n");
  FUNC7(end == 5, "got wrong end value: %d\n", end);

  first = 5, lim = 2;
  FUNC5(w, EM_SETSEL, first, lim);
  start = 0xdeadbeef;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "ITextSelection_GetStart\n");
  FUNC7(start == 2, "got wrong start value: %d\n", start);
  end = 0xdeadbeef;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "ITextSelection_GetEnd\n");
  FUNC7(end == 5, "got wrong end value: %d\n", end);

  first = 0, lim = -1;
  FUNC5(w, EM_SETSEL, first, lim);
  start = 0xdeadbeef;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "ITextSelection_GetStart\n");
  FUNC7(start == 0, "got wrong start value: %d\n", start);
  end = 0xdeadbeef;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "ITextSelection_GetEnd\n");
  FUNC7(end == 13, "got wrong end value: %d\n", end);

  first = 13, lim = 13;
  FUNC5(w, EM_SETSEL, first, lim);
  start = 0xdeadbeef;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "ITextSelection_GetStart\n");
  FUNC7(start == 12, "got wrong start value: %d\n", start);
  end = 0xdeadbeef;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "ITextSelection_GetEnd\n");
  FUNC7(end == 12, "got wrong end value: %d\n", end);

  /* SetStart/SetEnd */
  hres = FUNC4(txtSel, 0);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  /* same value */
  hres = FUNC4(txtSel, 0);
  FUNC7(hres == S_FALSE, "got 0x%08x\n", hres);

  hres = FUNC4(txtSel, 1);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  /* negative resets to 0, return value is S_FALSE when
     position wasn't changed */
  hres = FUNC4(txtSel, -1);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  hres = FUNC4(txtSel, -1);
  FUNC7(hres == S_FALSE, "got 0x%08x\n", hres);

  hres = FUNC4(txtSel, 0);
  FUNC7(hres == S_FALSE, "got 0x%08x\n", hres);

  start = -1;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 0, "got %d\n", start);

  /* greater than initial end, but less than total char count */
  hres = FUNC4(txtSel, 1);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  hres = FUNC3(txtSel, 3);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  hres = FUNC4(txtSel, 10);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 10, "got %d\n", start);

  end = 0;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 10, "got %d\n", end);

  /* more that total text length */
  hres = FUNC4(txtSel, 50);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 12, "got %d\n", start);

  end = 0;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 12, "got %d\n", end);

  /* SetEnd */
  hres = FUNC4(txtSel, 0);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  /* same value */
  hres = FUNC3(txtSel, 5);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  hres = FUNC3(txtSel, 5);
  FUNC7(hres == S_FALSE, "got 0x%08x\n", hres);

  /* negative resets to 0 */
  hres = FUNC3(txtSel, -1);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  end = -1;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 0, "got %d\n", end);

  start = -1;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 0, "got %d\n", start);

  /* greater than initial end, but less than total char count */
  hres = FUNC4(txtSel, 3);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  hres = FUNC3(txtSel, 1);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 1, "got %d\n", start);

  end = 0;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 1, "got %d\n", end);

  /* more than total count */
  hres = FUNC3(txtSel, 50);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 1, "got %d\n", start);

  end = 0;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 13, "got %d\n", end);

  /* zero */
  hres = FUNC3(txtSel, 0);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = FUNC1(txtSel, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == 0, "got %d\n", start);

  end = 0;
  hres = FUNC0(txtSel, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == 0, "got %d\n", end);

  FUNC8(&w, &reOle, &txtDoc, NULL);

  /* detached selection */
  hres = FUNC1(txtSel, NULL);
  FUNC7(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = FUNC1(txtSel, &start);
  FUNC7(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = FUNC0(txtSel, NULL);
  FUNC7(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = FUNC0(txtSel, &end);
  FUNC7(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  FUNC2(txtSel);
}