
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int LONG ;
typedef int ITextRange ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;


 scalar_t__ E_INVALIDARG ;
 int ITextDocument_Range (int *,int ,int ,int **) ;
 scalar_t__ ITextRange_GetStoryLength (int *,int*) ;
 int ITextRange_Release (int *) ;
 int ITextRange_SetRange (int *,int,int) ;
 scalar_t__ S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_ITextRange_GetStoryLength(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextRange *txtRge = ((void*)0);
  HRESULT hres;
  LONG count;
  static const CHAR test_text1[] = "TestSomeText";
  int len = strlen(test_text1) + 1;

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);
  ITextDocument_Range(txtDoc, 0, 0, &txtRge);

  hres = ITextRange_GetStoryLength(txtRge, &count);
  ok(hres == S_OK, "ITextRange_GetStoryLength\n");
  ok(count == len, "got wrong length: %d\n", count);

  ITextRange_SetRange(txtRge, 1, 2);
  hres = ITextRange_GetStoryLength(txtRge, &count);
  ok(hres == S_OK, "ITextRange_GetStoryLength\n");
  ok(count == len, "got wrong length: %d\n", count);

  hres = ITextRange_GetStoryLength(txtRge, ((void*)0));
  ok(hres == E_INVALIDARG, "ITextRange_GetStoryLength\n");

  ITextRange_Release(txtRge);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));
}
