
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int IUnknown ;
typedef int ITextSelection ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CO_E_RELEASED ;
 int DestroyWindow (int ) ;
 int EM_GETOLEINTERFACE ;
 int EXPECT_REF (int *,int) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_NOINTERFACE ;
 int IID_IDispatch ;
 int IID_IOleClientSite ;
 int IID_IOleInPlaceSite ;
 int IID_IOleWindow ;
 int IID_ITextDocument ;
 int IID_ITextRange ;
 int IID_ITextSelection ;
 scalar_t__ IRichEditOle_QueryInterface (int *,int *,void**) ;
 int IRichEditOle_Release (int *) ;
 scalar_t__ ITextDocument_GetSelection (int *,int **) ;
 int ITextDocument_Release (int *) ;
 scalar_t__ ITextSelection_CanEdit (int *,int *) ;
 scalar_t__ ITextSelection_QueryInterface (int *,int *,void**) ;
 int ITextSelection_Release (int *) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int new_richedit (int *) ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_Interfaces(void)
{
  IRichEditOle *reOle = ((void*)0), *reOle1 = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextSelection *txtSel = ((void*)0), *txtSel2;
  IUnknown *punk;
  HRESULT hres;
  LRESULT res;
  HWND w;
  ULONG refcount;

  w = new_richedit(((void*)0));
  if (!w) {
    skip("Couldn't create window\n");
    return;
  }

  res = SendMessageA(w, EM_GETOLEINTERFACE, 0, (LPARAM)&reOle);
  ok(res, "SendMessage\n");
  ok(reOle != ((void*)0), "EM_GETOLEINTERFACE\n");
  EXPECT_REF(reOle, 2);

  res = SendMessageA(w, EM_GETOLEINTERFACE, 0, (LPARAM)&reOle1);
  ok(res == 1, "SendMessage\n");
  ok(reOle1 == reOle, "Should not return a new IRichEditOle interface\n");
  EXPECT_REF(reOle, 3);

  hres = IRichEditOle_QueryInterface(reOle, &IID_ITextDocument,
                                 (void **) &txtDoc);
  ok(hres == S_OK, "IRichEditOle_QueryInterface\n");
  ok(txtDoc != ((void*)0), "IRichEditOle_QueryInterface\n");

  hres = ITextDocument_GetSelection(txtDoc, ((void*)0));
  ok(hres == E_INVALIDARG, "ITextDocument_GetSelection: 0x%x\n", hres);

  EXPECT_REF(txtDoc, 4);

  hres = ITextDocument_GetSelection(txtDoc, &txtSel);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  EXPECT_REF(txtDoc, 4);
  EXPECT_REF(txtSel, 2);

  hres = ITextDocument_GetSelection(txtDoc, &txtSel2);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(txtSel2 == txtSel, "got %p, %p\n", txtSel, txtSel2);

  EXPECT_REF(txtDoc, 4);
  EXPECT_REF(txtSel, 3);

  ITextSelection_Release(txtSel2);

  punk = ((void*)0);
  hres = ITextSelection_QueryInterface(txtSel, &IID_ITextSelection, (void **) &punk);
  ok(hres == S_OK, "ITextSelection_QueryInterface\n");
  ok(punk != ((void*)0), "ITextSelection_QueryInterface\n");
  IUnknown_Release(punk);

  punk = ((void*)0);
  hres = ITextSelection_QueryInterface(txtSel, &IID_ITextRange, (void **) &punk);
  ok(hres == S_OK, "ITextSelection_QueryInterface\n");
  ok(punk != ((void*)0), "ITextSelection_QueryInterface\n");
  IUnknown_Release(punk);

  punk = ((void*)0);
  hres = ITextSelection_QueryInterface(txtSel, &IID_IDispatch, (void **) &punk);
  ok(hres == S_OK, "ITextSelection_QueryInterface\n");
  ok(punk != ((void*)0), "ITextSelection_QueryInterface\n");
  IUnknown_Release(punk);

  punk = ((void*)0);
  hres = IRichEditOle_QueryInterface(reOle, &IID_IOleClientSite, (void **) &punk);
  ok(hres == E_NOINTERFACE, "IRichEditOle_QueryInterface\n");

  punk = ((void*)0);
  hres = IRichEditOle_QueryInterface(reOle, &IID_IOleWindow, (void **) &punk);
  ok(hres == E_NOINTERFACE, "IRichEditOle_QueryInterface\n");

  punk = ((void*)0);
  hres = IRichEditOle_QueryInterface(reOle, &IID_IOleInPlaceSite, (void **) &punk);
  ok(hres == E_NOINTERFACE, "IRichEditOle_QueryInterface\n");

  ITextDocument_Release(txtDoc);
  IRichEditOle_Release(reOle);
  refcount = IRichEditOle_Release(reOle);
  ok(refcount == 1, "got wrong ref count: %d\n", refcount);
  DestroyWindow(w);



  hres = ITextSelection_CanEdit(txtSel, ((void*)0));
  ok(hres == CO_E_RELEASED, "ITextSelection after ITextDocument destroyed\n");

  ITextSelection_Release(txtSel);
}
