
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPARAM ;
typedef int LONG ;
typedef int ITextRange ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef int HRESULT ;
typedef char CHAR ;
typedef int * BSTR ;


 int CO_E_RELEASED ;
 int ITextDocument_Range (int *,int ,int,int **) ;
 int ITextRange_GetEnd (int *,int*) ;
 int ITextRange_GetStart (int *,int*) ;
 int ITextRange_Release (int *) ;
 int ITextRange_SetText (int *,int *) ;
 int S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int * SysAllocString (char const*) ;
 int * SysAllocStringLen (int *,int ) ;
 int SysFreeString (int *) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int *) ;
 int ok (int,char*,int) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_SetText(void)
{
  static const CHAR test_text1[] = "TestSomeText";
  static const WCHAR textW[] = {'a','b','c','d','e','f','g','h','i',0};
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *doc = ((void*)0);
  ITextRange *range, *range2;
  LONG value;
  HRESULT hr;
  HWND hwnd;
  BSTR str;

  create_interfaces(&hwnd, &reOle, &doc, ((void*)0));
  SendMessageA(hwnd, WM_SETTEXT, 0, (LPARAM)test_text1);

  hr = ITextDocument_Range(doc, 0, 4, &range);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  hr = ITextDocument_Range(doc, 0, 4, &range2);
  ok(hr == S_OK, "got 0x%08x\n", hr);

  value = 1;
  hr = ITextRange_GetStart(range2, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 0, "got %d\n", value);

  value = 0;
  hr = ITextRange_GetEnd(range2, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 4, "got %d\n", value);

  hr = ITextRange_SetText(range, ((void*)0));
  ok(hr == S_OK, "got 0x%08x\n", hr);

  value = 1;
  hr = ITextRange_GetEnd(range2, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 0, "got %d\n", value);

  str = SysAllocString(textW);
  hr = ITextRange_SetText(range, str);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  SysFreeString(str);

  value = 1;
  hr = ITextRange_GetStart(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 0, "got %d\n", value);

  value = 0;
  hr = ITextRange_GetEnd(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 9, "got %d\n", value);

  value = 1;
  hr = ITextRange_GetStart(range2, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 0, "got %d\n", value);

  value = 0;
  hr = ITextRange_GetEnd(range2, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 0, "got %d\n", value);

  str = SysAllocStringLen(((void*)0), 0);
  hr = ITextRange_SetText(range, str);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  value = 1;
  hr = ITextRange_GetEnd(range, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == 0, "got %d\n", value);
  SysFreeString(str);

  ITextRange_Release(range2);
  release_interfaces(&hwnd, &reOle, &doc, ((void*)0));

  hr = ITextRange_SetText(range, ((void*)0));
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);

  str = SysAllocStringLen(((void*)0), 0);
  hr = ITextRange_SetText(range, str);
  ok(hr == CO_E_RELEASED, "got 0x%08x\n", hr);
  SysFreeString(str);

  ITextRange_Release(range);
}
