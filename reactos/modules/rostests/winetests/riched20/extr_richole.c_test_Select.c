
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int LONG ;
typedef int ITextSelection ;
typedef int ITextRange ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef int HRESULT ;
typedef char CHAR ;


 int CO_E_RELEASED ;
 int EM_SETSEL ;
 int ITextDocument_Range (int *,int ,int,int **) ;
 int ITextRange_Release (int *) ;
 int ITextRange_Select (int *) ;
 int ITextSelection_GetStart (int *,int*) ;
 int ITextSelection_Release (int *) ;
 int ITextSelection_Select (int *) ;
 int S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,int) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_Select(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *doc = ((void*)0);
  ITextSelection *selection;
  ITextRange *range;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  create_interfaces(&hwnd, &reOle, &doc, &selection);
  SendMessageA(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  SendMessageA(hwnd, EM_SETSEL, 1, 2);

  hr = ITextDocument_Range(doc, 0, 4, &range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextRange_Select(range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  value = 1;
  hr = ITextSelection_GetStart(selection, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 0, "got %d\n", value);

  hr = ITextRange_Select(range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextSelection_Select(selection);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  release_interfaces(&hwnd, &reOle, &doc, ((void*)0));

  hr = ITextRange_Select(range);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextSelection_Select(selection);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  ITextRange_Release(range);
  ITextSelection_Release(selection);
}
