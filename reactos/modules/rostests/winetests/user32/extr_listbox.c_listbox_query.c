
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listbox_stat {void* selcount; void* caret; void* anchor; void* selected; } ;
typedef int HWND ;


 int LB_GETANCHORINDEX ;
 int LB_GETCARETINDEX ;
 int LB_GETCURSEL ;
 int LB_GETSELCOUNT ;
 void* SendMessageA (int ,int ,int ,int ) ;

__attribute__((used)) static void
listbox_query (HWND handle, struct listbox_stat *results)
{
  results->selected = SendMessageA(handle, LB_GETCURSEL, 0, 0);
  results->anchor = SendMessageA(handle, LB_GETANCHORINDEX, 0, 0);
  results->caret = SendMessageA(handle, LB_GETCARETINDEX, 0, 0);
  results->selcount = SendMessageA(handle, LB_GETSELCOUNT, 0, 0);
}
