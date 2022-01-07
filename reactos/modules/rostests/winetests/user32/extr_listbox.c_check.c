
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int add_style; } ;
struct listbox_test {TYPE_1__ prop; } ;
struct listbox_stat {int dummy; } ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_2__ RECT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;
typedef int CHAR ;


 int CP_ACP ;
 int DestroyWindow (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LB_DELETESTRING ;
 int LB_ERR ;
 int LB_GETCOUNT ;
 int LB_GETITEMRECT ;
 int LB_GETTEXT ;
 int LB_GETTEXTLEN ;
 int LB_SELITEMRANGE ;
 int MAKELPARAM (int,int) ;
 int SendMessageA (int ,int ,int,int ) ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRUE ;
 int VK_DOWN ;
 int WAIT ;
 int WideCharToMultiByte (int ,int ,int *,int,int *,int,int *,int *) ;
 int buttonpress (int ,int ,int ) ;
 int click ;
 int create_listbox (int ,int ) ;
 int init ;
 int keypress (int ,int ,int,int) ;
 int listbox_ok (struct listbox_test const,int ,struct listbox_stat) ;
 int listbox_query (int ,struct listbox_stat*) ;
 int ok (int,char*,int,...) ;
 int sel ;
 int step ;
 int strcmp (int *,int ) ;
 int * strings ;
 int trace (char*,int,int) ;

__attribute__((used)) static void
check (const struct listbox_test test)
{
  struct listbox_stat answer;
  HWND hLB=create_listbox (test.prop.add_style, 0);
  RECT second_item;
  int i;
  int res;

  listbox_query (hLB, &answer);
  listbox_ok (test, init, answer);

  SendMessageA(hLB, LB_GETITEMRECT, 1, (LPARAM) &second_item);
  buttonpress(hLB, (WORD)second_item.left, (WORD)second_item.top);

  listbox_query (hLB, &answer);
  listbox_ok (test, click, answer);

  keypress (hLB, VK_DOWN, 0x50, TRUE);

  listbox_query (hLB, &answer);
  listbox_ok (test, step, answer);

  DestroyWindow (hLB);
  hLB=create_listbox (test.prop.add_style, 0);

  SendMessageA(hLB, LB_SELITEMRANGE, TRUE, MAKELPARAM(1, 2));
  listbox_query (hLB, &answer);
  listbox_ok (test, sel, answer);

  for (i=0;i<4;i++) {
 DWORD size = SendMessageA(hLB, LB_GETTEXTLEN, i, 0);
 CHAR *txt;
 WCHAR *txtw;
 int resA, resW;

 txt = HeapAlloc (GetProcessHeap(), HEAP_ZERO_MEMORY, size+1);
 resA=SendMessageA(hLB, LB_GETTEXT, i, (LPARAM)txt);
        ok(!strcmp (txt, strings[i]), "returned string for item %d does not match %s vs %s\n", i, txt, strings[i]);

 txtw = HeapAlloc (GetProcessHeap(), HEAP_ZERO_MEMORY, 2*size+2);
 resW=SendMessageW(hLB, LB_GETTEXT, i, (LPARAM)txtw);
 if (resA != resW) {
            trace("SendMessageW(LB_GETTEXT) not supported on this platform (resA=%d resW=%d), skipping...\n",
                resA, resW);
 } else {
     WideCharToMultiByte( CP_ACP, 0, txtw, -1, txt, size, ((void*)0), ((void*)0) );
            ok(!strcmp (txt, strings[i]), "returned string for item %d does not match %s vs %s\n", i, txt, strings[i]);
 }

 HeapFree (GetProcessHeap(), 0, txtw);
 HeapFree (GetProcessHeap(), 0, txt);
  }


  res = SendMessageA(hLB, LB_GETCOUNT, 0, 0);
  ok((res==4), "Expected 4 items, got %d\n", res);
  res = SendMessageA(hLB, LB_DELETESTRING, -1, 0);
  ok((res==LB_ERR), "Expected LB_ERR items, got %d\n", res);
  res = SendMessageA(hLB, LB_DELETESTRING, 4, 0);
  ok((res==LB_ERR), "Expected LB_ERR items, got %d\n", res);
  res = SendMessageA(hLB, LB_GETCOUNT, 0, 0);
  ok((res==4), "Expected 4 items, got %d\n", res);

  WAIT;
  DestroyWindow (hLB);
}
