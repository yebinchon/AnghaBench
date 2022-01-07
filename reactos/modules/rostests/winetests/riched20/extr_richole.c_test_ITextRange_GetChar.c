
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef char LONG ;
typedef int ITextRange ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef char HRESULT ;
typedef char CHAR ;


 char CO_E_RELEASED ;
 char E_INVALIDARG ;
 char ITextDocument_Range (int *,int,int,int **) ;
 char ITextRange_GetChar (int *,char*) ;
 int ITextRange_Release (int *) ;
 char S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_ITextRange_GetChar(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextRange *txtRge = ((void*)0);
  HRESULT hres;
  LONG pch;
  int first, lim;
  static const CHAR test_text1[] = "TestSomeText";

  first = 0, lim = 4;
  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  pch = 0xdeadbeef;
  hres = ITextRange_GetChar(txtRge, &pch);
  ok(hres == S_OK, "ITextRange_GetChar\n");
  ok(pch == 'T', "got wrong char: %c\n", pch);
  ITextRange_Release(txtRge);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  first = 0, lim = 0;
  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  pch = 0xdeadbeef;
  hres = ITextRange_GetChar(txtRge, &pch);
  ok(hres == S_OK, "ITextRange_GetChar\n");
  ok(pch == 'T', "got wrong char: %c\n", pch);
  ITextRange_Release(txtRge);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  first = 12, lim = 12;
  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  pch = 0xdeadbeef;
  hres = ITextRange_GetChar(txtRge, &pch);
  ok(hres == S_OK, "ITextRange_GetChar\n");
  ok(pch == '\r', "got wrong char: %c\n", pch);
  ITextRange_Release(txtRge);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  first = 13, lim = 13;
  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  pch = 0xdeadbeef;
  hres = ITextRange_GetChar(txtRge, &pch);
  ok(hres == S_OK, "ITextRange_GetChar\n");
  ok(pch == '\r', "got wrong char: %c\n", pch);
  ITextRange_Release(txtRge);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  first = 12, lim = 12;
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_GetChar(txtRge, ((void*)0));
  ok(hres == E_INVALIDARG, "ITextRange_GetChar\n");

  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  hres = ITextRange_GetChar(txtRge, ((void*)0));
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = ITextRange_GetChar(txtRge, &pch);
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  ITextRange_Release(txtRge);
}
