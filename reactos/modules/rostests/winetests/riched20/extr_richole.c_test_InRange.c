
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef scalar_t__ LONG ;
typedef int ITextSelection ;
typedef int ITextRange ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;


 scalar_t__ CO_E_RELEASED ;
 int EM_SETSEL ;
 scalar_t__ ITextDocument_Range (int *,int,int,int **) ;
 scalar_t__ ITextRange_InRange (int *,int *,scalar_t__*) ;
 int ITextRange_Release (int *) ;
 scalar_t__ ITextSelection_InRange (int *,int *,scalar_t__*) ;
 int ITextSelection_Release (int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,scalar_t__) ;
 int release_interfaces (int *,int **,int **,int *) ;
 scalar_t__ tomFalse ;
 scalar_t__ tomTrue ;

__attribute__((used)) static void test_InRange(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  ITextRange *range, *range2, *range3;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *doc = ((void*)0);
  ITextSelection *selection;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  create_interfaces(&hwnd, &reOle, &doc, &selection);
  SendMessageA(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  SendMessageA(hwnd, EM_SETSEL, 1, 2);

  hr = ITextDocument_Range(doc, 0, 4, &range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextDocument_Range(doc, 0, 4, &range2);
  ok(hr == S_OK, "got 0x%08x\n", hr);


  hr = ITextDocument_Range(doc, 1, 2, &range3);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextRange_InRange(range, ((void*)0), ((void*)0));
  ok(hr == S_FALSE, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = ITextRange_InRange(range, ((void*)0), &value);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);

  hr = ITextRange_InRange(range, range2, ((void*)0));
  ok(hr == S_OK, "got 0x%08x\n", hr);

  value = tomFalse;
  hr = ITextRange_InRange(range, range2, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomTrue, "got %d\n", value);


  hr = ITextSelection_InRange(selection, ((void*)0), ((void*)0));
  ok(hr == S_FALSE, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = ITextSelection_InRange(selection, ((void*)0), &value);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);

  hr = ITextSelection_InRange(selection, range2, ((void*)0));
  ok(hr == S_FALSE, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = ITextSelection_InRange(selection, range2, &value);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);

  value = tomTrue;
  hr = ITextSelection_InRange(selection, range3, &value);
  ok(hr == S_FALSE, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);


  value = tomFalse;
  hr = ITextSelection_InRange(selection, (ITextRange*)selection, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomTrue, "got %d\n", value);

  release_interfaces(&hwnd, &reOle, &doc, ((void*)0));

  hr = ITextRange_InRange(range, ((void*)0), ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = ITextRange_InRange(range, ((void*)0), &value);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);

  hr = ITextRange_InRange(range, range2, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = ITextRange_InRange(range, range2, &value);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);


  hr = ITextSelection_InRange(selection, ((void*)0), ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = ITextSelection_InRange(selection, ((void*)0), &value);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);

  hr = ITextSelection_InRange(selection, range2, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  value = tomTrue;
  hr = ITextSelection_InRange(selection, range2, &value);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);

  ITextRange_Release(range);
  ITextRange_Release(range2);
  ITextRange_Release(range3);
  ITextSelection_Release(selection);
}
