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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ CO_E_RELEASED ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextRange *txtRge = NULL;
  ITextRange *txtRgeDup = NULL;
  HRESULT hres;
  LONG first, lim, start, end;
  static const CHAR test_text1[] = "TestSomeText";

  FUNC6(&w, &reOle, &txtDoc, NULL);
  FUNC5(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  first = 0, lim = 4;
  hres = FUNC0(txtDoc, first, lim, &txtRge);
  FUNC7(hres == S_OK, "ITextDocument_Range fails 0x%x.\n", hres);

  hres = FUNC1(txtRge, &txtRgeDup);
  FUNC7(hres == S_OK, "ITextRange_GetDuplicate\n");
  FUNC7(txtRgeDup != txtRge, "A new pointer should be returned\n");
  hres = FUNC3(txtRgeDup, &start);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(start == first, "got wrong value: %d\n", start);
  hres = FUNC2(txtRgeDup, &end);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(end == lim, "got wrong value: %d\n", end);

  FUNC4(txtRgeDup);

  hres = FUNC1(txtRge, NULL);
  FUNC7(hres == E_INVALIDARG, "ITextRange_GetDuplicate\n");

  FUNC8(&w, &reOle, &txtDoc, NULL);

  hres = FUNC1(txtRge, NULL);
  FUNC7(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = FUNC1(txtRge, &txtRgeDup);
  FUNC7(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  FUNC4(txtRge);
}