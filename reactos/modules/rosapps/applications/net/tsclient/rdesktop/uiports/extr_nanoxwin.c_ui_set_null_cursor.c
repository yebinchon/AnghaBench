
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GrSetWindowCursor (int ,int ) ;
 int g_null_cursor ;
 int g_wnd ;

void ui_set_null_cursor(void)
{
  GrSetWindowCursor(g_wnd, g_null_cursor);
}
