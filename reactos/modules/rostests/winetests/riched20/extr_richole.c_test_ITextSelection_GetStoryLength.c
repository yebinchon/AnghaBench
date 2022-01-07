
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int LONG ;
typedef int ITextSelection ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;


 int EM_SETSEL ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ ITextSelection_GetStoryLength (int *,int*) ;
 scalar_t__ S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int **) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_ITextSelection_GetStoryLength(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextSelection *txtSel = ((void*)0);
  HRESULT hres;
  LONG count;
  static const CHAR test_text1[] = "TestSomeText";
  int len = strlen(test_text1) + 1;

  create_interfaces(&w, &reOle, &txtDoc, &txtSel);
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  hres = ITextSelection_GetStoryLength(txtSel, &count);
  ok(hres == S_OK, "ITextSelection_GetStoryLength\n");
  ok(count == len, "got wrong length: %d\n", count);

  SendMessageA(w, EM_SETSEL, 1, 2);
  hres = ITextSelection_GetStoryLength(txtSel, &count);
  ok(hres == S_OK, "ITextSelection_GetStoryLength\n");
  ok(count == len, "got wrong length: %d\n", count);

  hres = ITextSelection_GetStoryLength(txtSel, ((void*)0));
  ok(hres == E_INVALIDARG, "ITextSelection_GetStoryLength\n");

  release_interfaces(&w, &reOle, &txtDoc, &txtSel);
}
