
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef char LONG ;
typedef int ITextSelection ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef char HRESULT ;
typedef char CHAR ;


 char CO_E_RELEASED ;
 int EM_SETSEL ;
 char E_INVALIDARG ;
 char ITextSelection_GetChar (int *,char*) ;
 int ITextSelection_Release (int *) ;
 char S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_ITextSelection_GetChar(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextSelection *txtSel = ((void*)0);
  HRESULT hres;
  LONG pch;
  int first, lim;
  static const CHAR test_text1[] = "TestSomeText";

  create_interfaces(&w, &reOle, &txtDoc, &txtSel);
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 0, lim = 4;
  SendMessageA(w, EM_SETSEL, first, lim);
  pch = 0xdeadbeef;
  hres = ITextSelection_GetChar(txtSel, &pch);
  ok(hres == S_OK, "ITextSelection_GetChar\n");
  ok(pch == 'T', "got wrong char: %c\n", pch);

  first = 0, lim = 0;
  SendMessageA(w, EM_SETSEL, first, lim);
  pch = 0xdeadbeef;
  hres = ITextSelection_GetChar(txtSel, &pch);
  ok(hres == S_OK, "ITextSelection_GetChar\n");
  ok(pch == 'T', "got wrong char: %c\n", pch);

  first = 12, lim = 12;
  SendMessageA(w, EM_SETSEL, first, lim);
  pch = 0xdeadbeef;
  hres = ITextSelection_GetChar(txtSel, &pch);
  ok(hres == S_OK, "ITextSelection_GetChar\n");
  ok(pch == '\r', "got wrong char: %c\n", pch);

  first = 13, lim = 13;
  SendMessageA(w, EM_SETSEL, first, lim);
  pch = 0xdeadbeef;
  hres = ITextSelection_GetChar(txtSel, &pch);
  ok(hres == S_OK, "ITextSelection_GetChar\n");
  ok(pch == '\r', "got wrong char: %c\n", pch);

  hres = ITextSelection_GetChar(txtSel, ((void*)0));
  ok(hres == E_INVALIDARG, "ITextSelection_GetChar\n");

  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  hres = ITextSelection_GetChar(txtSel, ((void*)0));
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = ITextSelection_GetChar(txtSel, &pch);
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  ITextSelection_Release(txtSel);
}
