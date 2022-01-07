
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
typedef int HRESULT ;
typedef char CHAR ;


 int CO_E_RELEASED ;
 int EXPECT_REF (int *,int) ;
 int E_INVALIDARG ;
 int ITextDocument_Range (int *,int,int,int **) ;
 int ITextRange_CanEdit (int *,int *) ;
 int ITextRange_GetEnd (int *,int*) ;
 int ITextRange_GetStart (int *,int*) ;
 int ITextRange_Release (int *) ;
 int S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_ITextDocument_Range(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextRange *txtRge, *range2;
  HRESULT hres;
  LONG value;

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  hres = ITextDocument_Range(txtDoc, 0, 0, &txtRge);
  ok(hres == S_OK, "ITextDocument_Range fails 0x%x.\n", hres);
  EXPECT_REF(txtRge, 1);

  hres = ITextDocument_Range(txtDoc, 0, 0, &range2);
  ok(hres == S_OK, "ITextDocument_Range fails 0x%x.\n", hres);
  ok(range2 != txtRge, "A new pointer should be returned\n");
  ITextRange_Release(range2);

  hres = ITextDocument_Range(txtDoc, 0, 0, ((void*)0));
  ok(hres == E_INVALIDARG, "ITextDocument_Range should fail 0x%x.\n", hres);

  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  hres = ITextDocument_Range(txtDoc, 8, 30, &range2);
  ok(hres == S_OK, "ITextDocument_Range fails 0x%x.\n", hres);
  hres = ITextRange_GetStart(range2, &value);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(value == 8, "got %d\n", value);

  hres = ITextRange_GetEnd(range2, &value);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(value == 13, "got %d\n", value);
  ITextRange_Release(range2);

  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  hres = ITextRange_CanEdit(txtRge, ((void*)0));
  ok(hres == CO_E_RELEASED, "ITextRange after ITextDocument destroyed\n");
  ITextRange_Release(txtRge);
}
