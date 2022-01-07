
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int ITextSelection ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;
typedef int HRESULT ;
typedef char CHAR ;


 int CO_E_RELEASED ;
 int EM_SETSEL ;
 int ITextSelection_GetEnd (int *,int*) ;
 int ITextSelection_GetStart (int *,int*) ;
 int ITextSelection_Release (int *) ;
 int ITextSelection_SetEnd (int *,int) ;
 int ITextSelection_SetStart (int *,int) ;
 int S_FALSE ;
 int S_OK ;
 int SendMessageA (int ,int ,int,int) ;
 int WM_SETTEXT ;
 int create_interfaces (int *,int **,int **,int **) ;
 int ok (int,char*,...) ;
 int release_interfaces (int *,int **,int **,int *) ;

__attribute__((used)) static void test_ITextSelection_GetStart_GetEnd(void)
{
  HWND w;
  IRichEditOle *reOle = ((void*)0);
  ITextDocument *txtDoc = ((void*)0);
  ITextSelection *txtSel = ((void*)0);
  HRESULT hres;
  int first, lim, start, end;
  static const CHAR test_text1[] = "TestSomeText";

  create_interfaces(&w, &reOle, &txtDoc, &txtSel);
  SendMessageA(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  first = 2, lim = 5;
  SendMessageA(w, EM_SETSEL, first, lim);
  start = 0xdeadbeef;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "ITextSelection_GetStart\n");
  ok(start == 2, "got wrong start value: %d\n", start);
  end = 0xdeadbeef;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "ITextSelection_GetEnd\n");
  ok(end == 5, "got wrong end value: %d\n", end);

  first = 5, lim = 2;
  SendMessageA(w, EM_SETSEL, first, lim);
  start = 0xdeadbeef;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "ITextSelection_GetStart\n");
  ok(start == 2, "got wrong start value: %d\n", start);
  end = 0xdeadbeef;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "ITextSelection_GetEnd\n");
  ok(end == 5, "got wrong end value: %d\n", end);

  first = 0, lim = -1;
  SendMessageA(w, EM_SETSEL, first, lim);
  start = 0xdeadbeef;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "ITextSelection_GetStart\n");
  ok(start == 0, "got wrong start value: %d\n", start);
  end = 0xdeadbeef;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "ITextSelection_GetEnd\n");
  ok(end == 13, "got wrong end value: %d\n", end);

  first = 13, lim = 13;
  SendMessageA(w, EM_SETSEL, first, lim);
  start = 0xdeadbeef;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "ITextSelection_GetStart\n");
  ok(start == 12, "got wrong start value: %d\n", start);
  end = 0xdeadbeef;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "ITextSelection_GetEnd\n");
  ok(end == 12, "got wrong end value: %d\n", end);


  hres = ITextSelection_SetStart(txtSel, 0);
  ok(hres == S_OK, "got 0x%08x\n", hres);


  hres = ITextSelection_SetStart(txtSel, 0);
  ok(hres == S_FALSE, "got 0x%08x\n", hres);

  hres = ITextSelection_SetStart(txtSel, 1);
  ok(hres == S_OK, "got 0x%08x\n", hres);



  hres = ITextSelection_SetStart(txtSel, -1);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  hres = ITextSelection_SetStart(txtSel, -1);
  ok(hres == S_FALSE, "got 0x%08x\n", hres);

  hres = ITextSelection_SetStart(txtSel, 0);
  ok(hres == S_FALSE, "got 0x%08x\n", hres);

  start = -1;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 0, "got %d\n", start);


  hres = ITextSelection_SetStart(txtSel, 1);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  hres = ITextSelection_SetEnd(txtSel, 3);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  hres = ITextSelection_SetStart(txtSel, 10);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 10, "got %d\n", start);

  end = 0;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 10, "got %d\n", end);


  hres = ITextSelection_SetStart(txtSel, 50);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 12, "got %d\n", start);

  end = 0;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 12, "got %d\n", end);


  hres = ITextSelection_SetStart(txtSel, 0);
  ok(hres == S_OK, "got 0x%08x\n", hres);


  hres = ITextSelection_SetEnd(txtSel, 5);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  hres = ITextSelection_SetEnd(txtSel, 5);
  ok(hres == S_FALSE, "got 0x%08x\n", hres);


  hres = ITextSelection_SetEnd(txtSel, -1);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  end = -1;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 0, "got %d\n", end);

  start = -1;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 0, "got %d\n", start);


  hres = ITextSelection_SetStart(txtSel, 3);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  hres = ITextSelection_SetEnd(txtSel, 1);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 1, "got %d\n", start);

  end = 0;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 1, "got %d\n", end);


  hres = ITextSelection_SetEnd(txtSel, 50);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 1, "got %d\n", start);

  end = 0;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 13, "got %d\n", end);


  hres = ITextSelection_SetEnd(txtSel, 0);
  ok(hres == S_OK, "got 0x%08x\n", hres);

  start = 0;
  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(start == 0, "got %d\n", start);

  end = 0;
  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  ok(end == 0, "got %d\n", end);

  release_interfaces(&w, &reOle, &txtDoc, ((void*)0));


  hres = ITextSelection_GetStart(txtSel, ((void*)0));
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = ITextSelection_GetStart(txtSel, &start);
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = ITextSelection_GetEnd(txtSel, ((void*)0));
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  hres = ITextSelection_GetEnd(txtSel, &end);
  ok(hres == CO_E_RELEASED, "got 0x%08x\n", hres);

  ITextSelection_Release(txtSel);
}
