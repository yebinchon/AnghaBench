
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbSize; int dwMask; int wNumbering; int wNumberingStart; int wNumberingStyle; int wNumberingTab; int wAlignment; } ;
typedef TYPE_1__ PARAFORMAT2 ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef int HRESULT ;


 int DestroyWindow (int ) ;
 int EM_GETPARAFORMAT ;
 int EM_SETPARAFORMAT ;
 int PFA_LEFT ;
 int PFM_ALIGNMENT ;
 int PFM_ALL2 ;
 int PFM_TABLEROWDELIMITER ;
 int SendMessageA (int ,int ,int ,int ) ;
 int new_richedit (int *) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_SETPARAFORMAT(void)
{
  HWND hwndRichEdit = new_richedit(((void*)0));
  PARAFORMAT2 fmt;
  HRESULT ret;
  LONG expectedMask = PFM_ALL2 & ~PFM_TABLEROWDELIMITER;
  fmt.cbSize = sizeof(PARAFORMAT2);
  fmt.dwMask = PFM_ALIGNMENT;
  fmt.wAlignment = PFA_LEFT;

  ret = SendMessageA(hwndRichEdit, EM_SETPARAFORMAT, 0, (LPARAM)&fmt);
  ok(ret != 0, "expected non-zero got %d\n", ret);

  fmt.cbSize = sizeof(PARAFORMAT2);
  fmt.dwMask = -1;
  ret = SendMessageA(hwndRichEdit, EM_GETPARAFORMAT, 0, (LPARAM)&fmt);



  ret &= ~PFM_TABLEROWDELIMITER;
  fmt.dwMask &= ~PFM_TABLEROWDELIMITER;

  ok(ret == expectedMask, "expected %x got %x\n", expectedMask, ret);
  ok(fmt.dwMask == expectedMask, "expected %x got %x\n", expectedMask, fmt.dwMask);


  ok( fmt.wNumbering == 0, "got %d\n", fmt.wNumbering );
  ok( fmt.wNumberingStart == 0, "got %d\n", fmt.wNumberingStart );
  ok( fmt.wNumberingStyle == 0, "got %04x\n", fmt.wNumberingStyle );
  ok( fmt.wNumberingTab == 0, "got %d\n", fmt.wNumberingTab );

  DestroyWindow(hwndRichEdit);
}
