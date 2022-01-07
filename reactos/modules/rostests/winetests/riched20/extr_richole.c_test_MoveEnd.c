
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


 int CHECK_RANGE (int *,int,int) ;
 int CHECK_SELECTION (int *,int,int) ;
 int CO_E_RELEASED ;
 int EM_SETSEL ;
 int ITextDocument_Range (int *,int,int,int **) ;
 int ITextRange_MoveEnd (int *,int ,int,int*) ;
 int ITextRange_Release (int *) ;
 int ITextSelection_MoveEnd (int *,int ,int,int*) ;
 int ITextSelection_Release (int *) ;
 int RESET_RANGE (int *,int,int) ;
 int RESET_SELECTION (int *,int,int) ;
 int S_FALSE ;
 int S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,int) ;
 int release_interfaces (int *,int **,int **,int *) ;
 int tomStory ;

__attribute__((used)) static void test_MoveEnd(void)
{
  static const char test_text1[] = "Word1 Word2";
  IRichEditOle *reole = ((void*)0);
  ITextDocument *doc = ((void*)0);
  ITextSelection *selection;
  ITextRange *range;
  LONG delta;
  HRESULT hr;
  HWND hwnd;

  create_interfaces(&hwnd, &reole, &doc, &selection);
  SendMessageA(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  SendMessageA(hwnd, EM_SETSEL, 1, 2);

  hr = ITextDocument_Range(doc, 1, 2, &range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextRange_MoveEnd(range, tomStory, 0, &delta);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(delta == 0, "got %d\n", delta);
  CHECK_RANGE(range, 1, 2);

  hr = ITextRange_MoveEnd(range, tomStory, -1, &delta);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(delta == -1, "got %d\n", delta);
  CHECK_RANGE(range, 0, 0);

  hr = ITextRange_MoveEnd(range, tomStory, 1, &delta);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(delta == 1, "got %d\n", delta);
  CHECK_RANGE(range, 0, 12);

  hr = ITextRange_MoveEnd(range, tomStory, 1, &delta);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(delta == 0, "got %d\n", delta);
  CHECK_RANGE(range, 0, 12);

  RESET_RANGE(range, 1, 2);

  hr = ITextRange_MoveEnd(range, tomStory, 3, &delta);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(delta == 1, "got %d\n", delta);
  CHECK_RANGE(range, 1, 12);

  RESET_RANGE(range, 2, 3);

  hr = ITextRange_MoveEnd(range, tomStory, -3, &delta);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(delta == -1, "got %d\n", delta);
  CHECK_RANGE(range, 0, 0);

  hr = ITextRange_MoveEnd(range, tomStory, -1, &delta);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(delta == 0, "got %d\n", delta);
  CHECK_RANGE(range, 0, 0);

  hr = ITextSelection_MoveEnd(selection, tomStory, 0, &delta);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(delta == 0, "got %d\n", delta);
  CHECK_SELECTION(selection, 1, 2);

  hr = ITextSelection_MoveEnd(selection, tomStory, -1, &delta);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(delta == -1, "got %d\n", delta);
  CHECK_SELECTION(selection, 0, 0);

  hr = ITextSelection_MoveEnd(selection, tomStory, 1, &delta);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(delta == 1, "got %d\n", delta);
  CHECK_SELECTION(selection, 0, 12);

  hr = ITextSelection_MoveEnd(selection, tomStory, 1, &delta);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(delta == 0, "got %d\n", delta);
  CHECK_SELECTION(selection, 0, 12);

  RESET_SELECTION(selection, 1, 2);

  hr = ITextSelection_MoveEnd(selection, tomStory, 3, &delta);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(delta == 1, "got %d\n", delta);
  CHECK_SELECTION(selection, 1, 12);

  RESET_SELECTION(selection, 2, 3);

  hr = ITextSelection_MoveEnd(selection, tomStory, -3, &delta);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(delta == -1, "got %d\n", delta);
  CHECK_SELECTION(selection, 0, 0);

  hr = ITextSelection_MoveEnd(selection, tomStory, -1, &delta);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(delta == 0, "got %d\n", delta);
  CHECK_SELECTION(selection, 0, 0);

  release_interfaces(&hwnd, &reole, &doc, ((void*)0));

  hr = ITextRange_MoveEnd(range, tomStory, 1, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextRange_MoveEnd(range, tomStory, 1, &delta);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextSelection_MoveEnd(selection, tomStory, 1, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextSelection_MoveEnd(selection, tomStory, 1, &delta);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  ITextSelection_Release(selection);
  ITextRange_Release(range);
}
