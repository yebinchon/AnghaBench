
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef scalar_t__ LONG ;
typedef int ITextRange ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;


 scalar_t__ CO_E_RELEASED ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ ITextDocument_Range (int *,scalar_t__,scalar_t__,int **) ;
 scalar_t__ ITextRange_GetDuplicate (int *,int **) ;
 scalar_t__ ITextRange_GetEnd (int *,scalar_t__*) ;
 scalar_t__ ITextRange_GetStart (int *,scalar_t__*) ;
 int ITextRange_Release (int *) ;
 scalar_t__ S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_ITextRange_GetDuplicate(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextRange *txtRge = ((void*)0);
  ITextRange *txtRgeDup = ((void*)0);
  HRESULT hres;
  LONG first, lim, start, end;
  static const CHAR test_text1[] = "TestSomeText";

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  first = 0, lim = 4;
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "ITextDocument_Range fails 0x%x.\n", hres);

  hres = ITextRange_GetDuplicate(txtRge, &txtRgeDup);
  ok(hres == S_OK, "ITextRange_GetDuplicate\n");
  ok(txtRgeDup != txtRge, "A new pointer should be returned\n");
  hres = ITextRange_GetStart(txtRgeDup, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == first, "got wrong value: %d\n", start);
  hres = ITextRange_GetEnd(txtRgeDup, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == lim, "got wrong value: %d\n", end);

  ITextRange_Release(txtRgeDup);

  hres = ITextRange_GetDuplicate(txtRge, ((void*)0));
  ok(hres == E_INVALIDARG, "ITextRange_GetDuplicate\n");

  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  hres = ITextRange_GetDuplicate(txtRge, ((void*)0));
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = ITextRange_GetDuplicate(txtRge, &txtRgeDup);
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  ITextRange_Release(txtRge);
}
