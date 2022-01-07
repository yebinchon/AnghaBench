
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
 int E_INVALIDARG ;
 int ITextDocument_Range (int *,int ,int,int **) ;
 int ITextRange_GetStoryLength (int *,int*) ;
 int ITextRange_Release (int *) ;
 int ITextSelection_GetStoryLength (int *,int*) ;
 int ITextSelection_Release (int *) ;
 int S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,int) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_GetStoryLength(void)
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

  hr = ITextRange_GetStoryLength(range, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  value = 0;
  hr = ITextRange_GetStoryLength(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 13, "got %d\n", value);

  hr = ITextSelection_GetStoryLength(selection, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  value = 0;
  hr = ITextSelection_GetStoryLength(selection, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 13, "got %d\n", value);

  SendMessageA(hwnd, WM_SETTEXT, 0, (LPARAM)"");

  value = 0;
  hr = ITextRange_GetStoryLength(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 1, "got %d\n", value);

  value = 0;
  hr = ITextSelection_GetStoryLength(selection, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 1, "got %d\n", value);

  release_interfaces(&hwnd, &reOle, &doc, ((void*)0));

  hr = ITextRange_GetStoryLength(range, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = 100;
  hr = ITextRange_GetStoryLength(range, &value);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  ok(value == 100, "got %d\n", value);

  hr = ITextSelection_GetStoryLength(selection, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = 100;
  hr = ITextSelection_GetStoryLength(selection, &value);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  ok(value == 100, "got %d\n", value);

  ITextSelection_Release(selection);
  ITextRange_Release(range);
}
