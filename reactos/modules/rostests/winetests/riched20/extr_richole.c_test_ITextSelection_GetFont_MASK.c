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
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextFont ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ CO_E_RELEASED ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC8(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextSelection *txtSel = NULL;
  ITextFont *txtFont = NULL, *txtFont1 = NULL;
  HRESULT hres;
  int first, lim;
  int refcount;
  static const CHAR test_text1[] = "TestSomeText";
  LONG value;

  FUNC4(&w, &reOle, &txtDoc, &txtSel);
  FUNC3(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 4, lim = 4;
  FUNC3(w, EM_SETSEL, first, lim);
  refcount = FUNC5((IUnknown *)txtSel);
  FUNC6(refcount == 2, "got wrong ref count: %d\n", refcount);

  hres = FUNC2(txtSel, &txtFont);
  FUNC6(hres == S_OK, "ITextSelection_GetFont\n");
  refcount = FUNC5((IUnknown *)txtFont);
  FUNC6(refcount == 1, "got wrong ref count: %d\n", refcount);
  refcount = FUNC5((IUnknown *)txtSel);
  FUNC6(refcount == 3, "got wrong ref count: %d\n", refcount);

  hres = FUNC2(txtSel, &txtFont1);
  FUNC6(hres == S_OK, "ITextSelection_GetFont\n");
  FUNC6(txtFont1 != txtFont, "A new pointer should be return\n");
  refcount = FUNC5((IUnknown *)txtFont1);
  FUNC6(refcount == 1, "got wrong ref count: %d\n", refcount);
  FUNC1(txtFont1);
  refcount = FUNC5((IUnknown *)txtSel);
  FUNC6(refcount == 3, "got wrong ref count: %d\n", refcount);

  FUNC7(&w, &reOle, &txtDoc, &txtSel);

  hres = FUNC0(txtFont, &value);
  FUNC6(hres == CO_E_RELEASED, "ITextFont after ITextDocument destroyed\n");

  FUNC1(txtFont);
}