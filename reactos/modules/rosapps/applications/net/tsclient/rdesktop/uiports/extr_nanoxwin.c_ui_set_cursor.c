
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GR_CURSOR_ID ;


 int GrSetWindowCursor (int ,int ) ;
 int g_wnd ;

void ui_set_cursor(void * cursor)
{
  GrSetWindowCursor(g_wnd, (GR_CURSOR_ID)cursor);
}
