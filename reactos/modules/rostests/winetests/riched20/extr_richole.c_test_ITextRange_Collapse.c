
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
 int ITextDocument_Range (int *,int,int,int **) ;
 int ITextRange_Collapse (int *,int) ;
 int ITextRange_GetEnd (int *,int*) ;
 int ITextRange_GetStart (int *,int*) ;
 int ITextRange_Release (int *) ;
 int S_FALSE ;
 int S_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int *) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;
 int tomEnd ;
 int tomFalse ;
 int tomStart ;
 int tomTrue ;
 int tomUndefined ;

__attribute__((used)) static void test_ITextRange_Collapse(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextRange *txtRge = ((void*)0);
  HRESULT hres;
  LONG first, lim, start, end;
  static const CHAR test_text1[] = "TestSomeText";

  create_interfaces(&w, &reOle, &txtDoc, ((void*)0));
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 4, lim = 8;
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_Collapse(txtRge, tomTrue);
  ok(hres == S_OK, "ITextRange_Collapse\n");
  hres = ITextRange_GetStart(txtRge, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 4, "got wrong start value: %d\n", start);
  hres = ITextRange_GetEnd(txtRge, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 4, "got wrong end value: %d\n", end);
  ITextRange_Release(txtRge);

  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_Collapse(txtRge, tomStart);
  ok(hres == S_OK, "ITextRange_Collapse\n");
  hres = ITextRange_GetStart(txtRge, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 4, "got wrong start value: %d\n", start);
  hres = ITextRange_GetEnd(txtRge, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 4, "got wrong end value: %d\n", end);
  ITextRange_Release(txtRge);

  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_Collapse(txtRge, tomFalse);
  ok(hres == S_OK, "ITextRange_Collapse\n");
  hres = ITextRange_GetStart(txtRge, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 8, "got wrong start value: %d\n", start);
  hres = ITextRange_GetEnd(txtRge, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 8, "got wrong end value: %d\n", end);
  ITextRange_Release(txtRge);

  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_Collapse(txtRge, tomEnd);
  ok(hres == S_OK, "ITextRange_Collapse\n");
  hres = ITextRange_GetStart(txtRge, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 8, "got wrong start value: %d\n", start);
  hres = ITextRange_GetEnd(txtRge, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 8, "got wrong end value: %d\n", end);
  ITextRange_Release(txtRge);


  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_Collapse(txtRge, 256);
  ok(hres == S_OK, "ITextRange_Collapse\n");
  hres = ITextRange_GetStart(txtRge, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 4, "got wrong start value: %d\n", start);
  hres = ITextRange_GetEnd(txtRge, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 4, "got wrong end value: %d\n", end);
  ITextRange_Release(txtRge);

  first = 6, lim = 6;
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_Collapse(txtRge, tomEnd);
  ok(hres == S_FALSE, "ITextRange_Collapse\n");
  hres = ITextRange_GetStart(txtRge, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 6, "got wrong start value: %d\n", start);
  hres = ITextRange_GetEnd(txtRge, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 6, "got wrong end value: %d\n", end);
  ITextRange_Release(txtRge);

  first = 8, lim = 8;
  hres = ITextDocument_Range(txtDoc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_Collapse(txtRge, tomStart);
  ok(hres == S_FALSE, "ITextRange_Collapse\n");
  hres = ITextRange_GetStart(txtRge, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 8, "got wrong start value: %d\n", start);
  hres = ITextRange_GetEnd(txtRge, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 8, "got wrong end value: %d\n", end);

  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));

  hres = ITextRange_Collapse(txtRge, tomStart);
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = ITextRange_Collapse(txtRge, tomUndefined);
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  ITextRange_Release(txtRge);
}
