
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef scalar_t__ LONG ;
typedef int ITextSelection ;
typedef int ITextRange ;
typedef int ITextFont ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;


 scalar_t__ CO_E_RELEASED ;
 int EM_SETSEL ;
 int EXPECT_REF (int *,int) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ ITextDocument_Range (int *,int,int,int **) ;
 scalar_t__ ITextFont_GetItalic (int *,scalar_t__*) ;
 int ITextFont_Release (int *) ;
 scalar_t__ ITextFont_SetItalic (int *,scalar_t__) ;
 scalar_t__ ITextRange_GetFont (int *,int **) ;
 int ITextRange_Release (int *) ;
 scalar_t__ ITextRange_SetFont (int *,int *) ;
 int ITextSelection_Release (int *) ;
 scalar_t__ ITextSelection_SetFont (int *,int *) ;
 scalar_t__ S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,scalar_t__) ;
 int release_interfaces (int *,int **,int **,int *) ;
 scalar_t__ tomFalse ;
 scalar_t__ tomTrue ;

__attribute__((used)) static void test_SetFont(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *doc = ((void*)0);
  ITextSelection *selection;
  ITextRange *range, *range2;
  ITextFont *font, *font2;
  LONG value;
  HRESULT hr;
  HWND hwnd;

  create_interfaces(&hwnd, &reOle, &doc, &selection);
  SendMessageA(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);
  SendMessageA(hwnd, EM_SETSEL, 1, 2);

  hr = ITextDocument_Range(doc, 0, 4, &range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextDocument_Range(doc, 5, 2, &range2);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  EXPECT_REF(range, 1);
  hr = ITextRange_GetFont(range, &font);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  EXPECT_REF(range, 2);

  EXPECT_REF(range2, 1);
  hr = ITextRange_GetFont(range2, &font2);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  EXPECT_REF(range2, 2);

  hr = ITextRange_SetFont(range, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);


  EXPECT_REF(range, 2);
  hr = ITextRange_SetFont(range, font);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  EXPECT_REF(range, 2);

  EXPECT_REF(range2, 2);
  EXPECT_REF(range, 2);
  hr = ITextRange_SetFont(range, font2);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  EXPECT_REF(range2, 2);
  EXPECT_REF(range, 2);


  value = tomTrue;
  hr = ITextFont_GetItalic(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomFalse, "got %d\n", value);


  hr = ITextFont_SetItalic(font2, tomTrue);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextRange_SetFont(range, font2);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  value = tomFalse;
  hr = ITextFont_GetItalic(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomTrue, "got %d\n", value);

  release_interfaces(&hwnd, &reOle, &doc, ((void*)0));

  hr = ITextRange_SetFont(range, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextRange_SetFont(range, font);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  hr = ITextSelection_SetFont(selection, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextSelection_SetFont(selection, font);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  ITextFont_Release(font);
  ITextFont_Release(font2);
  ITextRange_Release(range);
  ITextRange_Release(range2);
  ITextSelection_Release(selection);
}
