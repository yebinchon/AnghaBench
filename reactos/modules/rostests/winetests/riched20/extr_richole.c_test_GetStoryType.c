
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
 int ITextRange_GetStoryType (int *,int*) ;
 int ITextRange_Release (int *) ;
 int ITextSelection_GetStoryType (int *,int*) ;
 int ITextSelection_Release (int *) ;
 int S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,int) ;
 int release_interfaces (int *,int **,int **,int *) ;
 int tomTextFrameStory ;
 int tomUnknownStory ;

__attribute__((used)) static void test_GetStoryType(void)
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

  hr = ITextRange_GetStoryType(range, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  value = tomTextFrameStory;
  hr = ITextRange_GetStoryType(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUnknownStory, "got %d\n", value);

  hr = ITextSelection_GetStoryType(selection, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  value = tomTextFrameStory;
  hr = ITextSelection_GetStoryType(selection, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUnknownStory, "got %d\n", value);

  release_interfaces(&hwnd, &reOle, &doc, ((void*)0));

  hr = ITextRange_GetStoryType(range, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = 123;
  hr = ITextRange_GetStoryType(range, &value);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  ok(value == 123, "got %d\n", value);

  hr = ITextSelection_GetStoryType(selection, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = 123;
  hr = ITextSelection_GetStoryType(selection, &value);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  ok(value == 123, "got %d\n", value);

  ITextRange_Release(range);
  ITextSelection_Release(selection);
}
