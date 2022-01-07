
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int LONG ;
typedef int IUnknown ;
typedef int ITextRange ;
typedef int ITextPara ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;


 scalar_t__ CO_E_RELEASED ;
 int ITextDocument_Range (int *,int,int,int **) ;
 scalar_t__ ITextPara_GetStyle (int *,int *) ;
 int ITextPara_Release (int *) ;
 scalar_t__ ITextRange_GetPara (int *,int **) ;
 int ITextRange_Release (int *) ;
 scalar_t__ S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int *) ;
 int get_refcount (int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_ITextRange_GetPara(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextRange *txtRge = ((void*)0);
  ITextPara *txtPara = ((void*)0), *txtPara1 = ((void*)0);
  HRESULT hres;
  int first, lim;
  int refcount;
  static const CHAR test_text1[] = "TestSomeText";
  LONG value;

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 4, lim = 4;
  ITextDocument_Range(txtDoc, first, lim, &txtRge);
  refcount = get_refcount((IUnknown *)txtRge);
  ok(refcount == 1, "got wrong ref count: %d\n", refcount);

  hres = ITextRange_GetPara(txtRge, &txtPara);
  ok(hres == S_OK, "ITextRange_GetPara\n");
  refcount = get_refcount((IUnknown *)txtPara);
  ok(refcount == 1, "got wrong ref count: %d\n", refcount);
  refcount = get_refcount((IUnknown *)txtRge);
  ok(refcount == 2, "got wrong ref count: %d\n", refcount);

  hres = ITextRange_GetPara(txtRge, &txtPara1);
  ok(hres == S_OK, "ITextRange_GetPara\n");
  ok(txtPara1 != txtPara, "A new pointer should be return\n");
  refcount = get_refcount((IUnknown *)txtPara1);
  ok(refcount == 1, "got wrong ref count: %d\n", refcount);
  ITextPara_Release(txtPara1);
  refcount = get_refcount((IUnknown *)txtRge);
  ok(refcount == 2, "got wrong ref count: %d\n", refcount);

  ITextRange_Release(txtRge);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  hres = ITextPara_GetStyle(txtPara, &value);
  ok(hres == CO_E_RELEASED, "ITextPara after ITextDocument destroyed\n");

  ITextPara_Release(txtPara);
}
