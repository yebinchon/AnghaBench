
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int LONG ;
typedef int ITextSelection ;
typedef int ITextRange ;
typedef int ITextFont ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef int HRESULT ;
typedef char CHAR ;


 int CO_E_RELEASED ;
 int EM_SETSEL ;
 int EXPECT_REF (int *,int) ;
 int E_INVALIDARG ;
 int E_NOINTERFACE ;
 int IID_ITextSelection ;
 int ITextRange_GetEnd (int *,int*) ;
 int ITextRange_GetFont (int *,int **) ;
 int ITextRange_GetStart (int *,int*) ;
 int ITextRange_QueryInterface (int *,int *,void**) ;
 int ITextRange_Release (int *) ;
 int ITextSelection_GetDuplicate (int *,int **) ;
 int ITextSelection_Release (int *) ;
 int S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,int,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_ITextSelection_GetDuplicate(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *doc = ((void*)0);
  ITextSelection *selection, *sel2;
  ITextRange *range, *range2;
  ITextFont *font;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  create_interfaces(&hwnd, &reOle, &doc, &selection);
  SendMessageA(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  SendMessageA(hwnd, EM_SETSEL, 1, 2);

  hr = ITextSelection_GetDuplicate(selection, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  EXPECT_REF(selection, 2);

  hr = ITextSelection_GetDuplicate(selection, &range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextSelection_GetDuplicate(selection, &range2);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(range != range2, "got %p, %p\n", range, range2);

  EXPECT_REF(selection, 2);
  EXPECT_REF(range, 1);
  EXPECT_REF(range2, 1);

  ITextRange_Release(range2);

  value = 0;
  hr = ITextRange_GetStart(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 1, "got %d\n", value);

  value = 0;
  hr = ITextRange_GetEnd(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 2, "got %d\n", value);

  SendMessageA(hwnd, EM_SETSEL, 2, 3);

  value = 0;
  hr = ITextRange_GetStart(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 1, "got %d\n", value);

  value = 0;
  hr = ITextRange_GetEnd(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 2, "got %d\n", value);

  hr = ITextRange_QueryInterface(range, &IID_ITextSelection, (void**)&sel2);
  ok(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

  release_interfaces(&hwnd, &reOle, &doc, ((void*)0));

  hr = ITextSelection_GetDuplicate(selection, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextSelection_GetDuplicate(selection, &range);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextRange_GetFont(range, &font);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  ITextSelection_Release(selection);
  ITextRange_Release(range);
}
