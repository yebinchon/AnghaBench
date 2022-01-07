
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int ITextRange ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;


 scalar_t__ CO_E_RELEASED ;
 scalar_t__ ITextDocument_Range (int *,int ,int ,int **) ;
 int ITextRange_Release (int *) ;
 scalar_t__ ITextRange_ScrollIntoView (int *,int ) ;
 scalar_t__ S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int check_range (int ,int *,int,int,int ,int) ;
 int create_interfaces (int *,int **,int **,int *) ;
 int ok (int,char*,scalar_t__) ;
 int release_interfaces (int *,int **,int **,int *) ;
 int tomStart ;

__attribute__((used)) static void test_ITextRange_ScrollIntoView(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextRange *txtRge = ((void*)0);
  HRESULT hres;
  static const CHAR test_text1[] = "1\n2\n3\n4\n5\n6\n7\n8\n9\n10";

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);


  check_range(w, txtDoc, 0, 1, tomStart, 0);


  check_range(w, txtDoc, 19, 20, tomStart, 1);


  check_range(w, txtDoc, 0, 1, tomStart, 0);


  check_range(w, txtDoc, 0, 20, tomStart, 0);

  hres = ITextDocument_Range(txtDoc, 0, 0, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  hres = ITextRange_ScrollIntoView(txtRge, tomStart);
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);
  ITextRange_Release(txtRge);
}
