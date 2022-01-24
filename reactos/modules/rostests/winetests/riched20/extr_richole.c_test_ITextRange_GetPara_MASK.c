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
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextPara ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ CO_E_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextRange *txtRge = NULL;
  ITextPara *txtPara = NULL, *txtPara1 = NULL;
  HRESULT hres;
  int first, lim;
  int refcount;
  static const CHAR test_text1[] = "TestSomeText";
  LONG value;

  FUNC6(&w, &reOle, &txtDoc, NULL);
  FUNC5(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 4, lim = 4;
  FUNC0(txtDoc, first, lim, &txtRge);
  refcount = FUNC7((IUnknown *)txtRge);
  FUNC8(refcount == 1, "got wrong ref count: %d\n", refcount);

  hres = FUNC3(txtRge, &txtPara);
  FUNC8(hres == S_OK, "ITextRange_GetPara\n");
  refcount = FUNC7((IUnknown *)txtPara);
  FUNC8(refcount == 1, "got wrong ref count: %d\n", refcount);
  refcount = FUNC7((IUnknown *)txtRge);
  FUNC8(refcount == 2, "got wrong ref count: %d\n", refcount);

  hres = FUNC3(txtRge, &txtPara1);
  FUNC8(hres == S_OK, "ITextRange_GetPara\n");
  FUNC8(txtPara1 != txtPara, "A new pointer should be return\n");
  refcount = FUNC7((IUnknown *)txtPara1);
  FUNC8(refcount == 1, "got wrong ref count: %d\n", refcount);
  FUNC2(txtPara1);
  refcount = FUNC7((IUnknown *)txtRge);
  FUNC8(refcount == 2, "got wrong ref count: %d\n", refcount);

  FUNC4(txtRge);
  FUNC9(&w, &reOle, &txtDoc, NULL);

  hres = FUNC1(txtPara, &value);
  FUNC8(hres == CO_E_RELEASED, "ITextPara after ITextDocument destroyed\n");

  FUNC2(txtPara);
}