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
typedef  int ULONG ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITextSelection ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ CO_E_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_GETOLEINTERFACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IOleClientSite ; 
 int /*<<< orphan*/  IID_IOleInPlaceSite ; 
 int /*<<< orphan*/  IID_IOleWindow ; 
 int /*<<< orphan*/  IID_ITextDocument ; 
 int /*<<< orphan*/  IID_ITextRange ; 
 int /*<<< orphan*/  IID_ITextSelection ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
  IRichEditOle *reOle = NULL, *reOle1 = NULL;
  ITextDocument *txtDoc = NULL;
  ITextSelection *txtSel = NULL, *txtSel2;
  IUnknown *punk;
  HRESULT hres;
  LRESULT res;
  HWND w;
  ULONG refcount;

  w = FUNC11(NULL);
  if (!w) {
    FUNC13("Couldn't create window\n");
    return;
  }

  res = FUNC10(w, EM_GETOLEINTERFACE, 0, (LPARAM)&reOle);
  FUNC12(res, "SendMessage\n");
  FUNC12(reOle != NULL, "EM_GETOLEINTERFACE\n");
  FUNC1(reOle, 2);

  res = FUNC10(w, EM_GETOLEINTERFACE, 0, (LPARAM)&reOle1);
  FUNC12(res == 1, "SendMessage\n");
  FUNC12(reOle1 == reOle, "Should not return a new IRichEditOle interface\n");
  FUNC1(reOle, 3);

  hres = FUNC2(reOle, &IID_ITextDocument,
                                 (void **) &txtDoc);
  FUNC12(hres == S_OK, "IRichEditOle_QueryInterface\n");
  FUNC12(txtDoc != NULL, "IRichEditOle_QueryInterface\n");

  hres = FUNC4(txtDoc, NULL);
  FUNC12(hres == E_INVALIDARG, "ITextDocument_GetSelection: 0x%x\n", hres);

  FUNC1(txtDoc, 4);

  hres = FUNC4(txtDoc, &txtSel);
  FUNC12(hres == S_OK, "got 0x%08x\n", hres);

  FUNC1(txtDoc, 4);
  FUNC1(txtSel, 2);

  hres = FUNC4(txtDoc, &txtSel2);
  FUNC12(hres == S_OK, "got 0x%08x\n", hres);
  FUNC12(txtSel2 == txtSel, "got %p, %p\n", txtSel, txtSel2);

  FUNC1(txtDoc, 4);
  FUNC1(txtSel, 3);

  FUNC8(txtSel2);

  punk = NULL;
  hres = FUNC7(txtSel, &IID_ITextSelection, (void **) &punk);
  FUNC12(hres == S_OK, "ITextSelection_QueryInterface\n");
  FUNC12(punk != NULL, "ITextSelection_QueryInterface\n");
  FUNC9(punk);

  punk = NULL;
  hres = FUNC7(txtSel, &IID_ITextRange, (void **) &punk);
  FUNC12(hres == S_OK, "ITextSelection_QueryInterface\n");
  FUNC12(punk != NULL, "ITextSelection_QueryInterface\n");
  FUNC9(punk);

  punk = NULL;
  hres = FUNC7(txtSel, &IID_IDispatch, (void **) &punk);
  FUNC12(hres == S_OK, "ITextSelection_QueryInterface\n");
  FUNC12(punk != NULL, "ITextSelection_QueryInterface\n");
  FUNC9(punk);

  punk = NULL;
  hres = FUNC2(reOle, &IID_IOleClientSite, (void **) &punk);
  FUNC12(hres == E_NOINTERFACE, "IRichEditOle_QueryInterface\n");

  punk = NULL;
  hres = FUNC2(reOle, &IID_IOleWindow, (void **) &punk);
  FUNC12(hres == E_NOINTERFACE, "IRichEditOle_QueryInterface\n");

  punk = NULL;
  hres = FUNC2(reOle, &IID_IOleInPlaceSite, (void **) &punk);
  FUNC12(hres == E_NOINTERFACE, "IRichEditOle_QueryInterface\n");

  FUNC5(txtDoc);
  FUNC3(reOle);
  refcount = FUNC3(reOle);
  FUNC12(refcount == 1, "got wrong ref count: %d\n", refcount);
  FUNC0(w);

  /* Methods should return CO_E_RELEASED if the backing document has
     been released.  One test should suffice.  */
  hres = FUNC6(txtSel, NULL);
  FUNC12(hres == CO_E_RELEASED, "ITextSelection after ITextDocument destroyed\n");

  FUNC8(txtSel);
}