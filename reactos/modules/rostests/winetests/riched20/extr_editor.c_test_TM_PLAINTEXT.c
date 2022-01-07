
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cbSize; int dwMask; int dwEffects; } ;
struct TYPE_3__ {int cpMin; int cpMax; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ CHARRANGE ;
typedef TYPE_2__ CHARFORMAT2A ;


 int CFE_BOLD ;
 int CFE_ITALIC ;
 int CFM_BOLD ;
 int CFM_ITALIC ;
 int DestroyWindow (int ) ;
 int EM_EXSETSEL ;
 int EM_GETCHARFORMAT ;
 int EM_SETCHARFORMAT ;
 int EM_SETTEXTMODE ;
 int SCF_ALL ;
 int SCF_DEFAULT ;
 int SCF_SELECTION ;
 int SCF_WORD ;
 int SendMessageA (int ,int ,int,int ) ;
 int TM_PLAINTEXT ;
 int TM_RICHTEXT ;
 int WM_COPY ;
 int WM_PASTE ;
 int WM_SETTEXT ;
 int new_richedit (int *) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_TM_PLAINTEXT(void)
{


  HWND hwndRichEdit = new_richedit(((void*)0));
  CHARFORMAT2A cf2, cf2test;
  CHARRANGE cr;
  int rc = 0;



  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"");
  SendMessageA(hwndRichEdit, EM_SETTEXTMODE, TM_PLAINTEXT, 0);



  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"Is Wine an emulator? No it's not");



  cr.cpMin = 10;
  cr.cpMax = 20;
  SendMessageA(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  cf2.cbSize = sizeof(CHARFORMAT2A);
  SendMessageA(hwndRichEdit, EM_GETCHARFORMAT, SCF_DEFAULT, (LPARAM)&cf2);

  cf2.dwMask = CFM_BOLD | cf2.dwMask;
  cf2.dwEffects = CFE_BOLD ^ cf2.dwEffects;

  rc = SendMessageA(hwndRichEdit, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2);
  ok(rc == 0, "EM_SETCHARFORMAT returned %d instead of 0\n", rc);

  rc = SendMessageA(hwndRichEdit, EM_SETCHARFORMAT, SCF_WORD | SCF_SELECTION, (LPARAM)&cf2);
  ok(rc == 0, "EM_SETCHARFORMAT returned %d instead of 0\n", rc);

  rc = SendMessageA(hwndRichEdit, EM_SETCHARFORMAT, SCF_ALL, (LPARAM)&cf2);
  ok(rc == 1, "EM_SETCHARFORMAT returned %d instead of 1\n", rc);



  SendMessageA(hwndRichEdit, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2);


  cf2test.cbSize = sizeof(CHARFORMAT2A);
  cr.cpMin = 21;
  cr.cpMax = 30;
  SendMessageA(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  SendMessageA(hwndRichEdit, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2test);



  ok((cf2.dwMask == cf2test.dwMask) && (cf2.dwEffects == cf2test.dwEffects),
     "two selections' formats differ - cf2.dwMask: %x, cf2test.dwMask %x, cf2.dwEffects: %x, cf2test.dwEffects: %x\n",
     cf2.dwMask, cf2test.dwMask, cf2.dwEffects, cf2test.dwEffects);



  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"wine");



  cr.cpMin = 0;
  cr.cpMax = 4;
  SendMessageA(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  SendMessageA(hwndRichEdit, WM_COPY, 0, 0);



  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"");
  SendMessageA(hwndRichEdit, EM_SETTEXTMODE, TM_RICHTEXT, 0);



  SendMessageA(hwndRichEdit, EM_GETCHARFORMAT, SCF_DEFAULT, (LPARAM)&cf2);
  cf2.dwMask |= CFM_ITALIC;
  cf2.dwEffects ^= CFE_ITALIC;
  rc = SendMessageA(hwndRichEdit, EM_SETCHARFORMAT, SCF_ALL, (LPARAM)&cf2);
  ok(rc == 1, "EM_SETCHARFORMAT returned %d instead of 1\n", rc);



  SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"wine");




  SendMessageA(hwndRichEdit, WM_PASTE, 0, 0);



  cr.cpMin = 1;
  cr.cpMax = 3;
  SendMessageA(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  SendMessageA(hwndRichEdit, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2);



  cr.cpMin = 5;
  cr.cpMax = 7;
  SendMessageA(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  SendMessageA(hwndRichEdit, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2test);



  ok((cf2.dwMask == cf2test.dwMask) && (cf2.dwEffects == cf2test.dwEffects),
     "Copied text retained formatting - cf2.dwMask: %x, cf2test.dwMask: %x, cf2.dwEffects: %x, cf2test.dwEffects: %x\n",
     cf2.dwMask, cf2test.dwMask, cf2.dwEffects, cf2test.dwEffects);
  DestroyWindow(hwndRichEdit);
}
