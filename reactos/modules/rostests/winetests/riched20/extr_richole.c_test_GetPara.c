
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int ITextSelection ;
typedef int ITextRange ;
typedef int ITextPara ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef int HRESULT ;
typedef char CHAR ;


 int CO_E_RELEASED ;
 int EXPECT_REF (int *,int) ;
 int E_INVALIDARG ;
 int ITextDocument_Range (int *,int ,int,int **) ;
 int ITextPara_Release (int *) ;
 int ITextRange_GetPara (int *,int **) ;
 int ITextRange_Release (int *) ;
 int ITextSelection_GetPara (int *,int **) ;
 int ITextSelection_Release (int *) ;
 int S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,int ,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_GetPara(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *doc = ((void*)0);
  ITextSelection *selection;
  ITextRange *range = ((void*)0);
  ITextPara *para, *para2;
  HRESULT hr;
  HWND hwnd;

  create_interfaces(&hwnd, &reOle, &doc, &selection);
  SendMessageA(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);

  EXPECT_REF(reOle, 3);
  EXPECT_REF(doc, 3);

  hr = ITextDocument_Range(doc, 0, 4, &range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  EXPECT_REF(reOle, 3);
  EXPECT_REF(doc, 3);
  EXPECT_REF(range, 1);

  hr = ITextRange_GetPara(range, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextRange_GetPara(range, &para);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  EXPECT_REF(reOle, 3);
  EXPECT_REF(doc, 3);
  EXPECT_REF(range, 2);
  EXPECT_REF(para, 1);

  hr = ITextRange_GetPara(range, &para2);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(para != para2, "got %p, %p\n", para, para2);

  EXPECT_REF(reOle, 3);
  EXPECT_REF(doc, 3);
  EXPECT_REF(range, 3);
  EXPECT_REF(para, 1);
  EXPECT_REF(para2, 1);

  ITextPara_Release(para);
  ITextPara_Release(para2);

  EXPECT_REF(reOle, 3);
  EXPECT_REF(doc, 3);
  EXPECT_REF(selection, 2);

  hr = ITextSelection_GetPara(selection, &para);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  EXPECT_REF(reOle, 3);
  EXPECT_REF(doc, 3);
  EXPECT_REF(selection, 3);
  EXPECT_REF(para, 1);

  hr = ITextSelection_GetPara(selection, &para2);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(para != para2, "got %p, %p\n", para, para2);

  ITextPara_Release(para);
  ITextPara_Release(para2);
  release_interfaces(&hwnd, &reOle, &doc, ((void*)0));

  hr = ITextRange_GetPara(range, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextRange_GetPara(range, &para);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextSelection_GetPara(selection, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextSelection_GetPara(selection, &para);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  ITextSelection_Release(selection);
  ITextRange_Release(range);
}
