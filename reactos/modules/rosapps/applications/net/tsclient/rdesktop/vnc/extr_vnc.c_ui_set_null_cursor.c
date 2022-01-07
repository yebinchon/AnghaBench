
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int rfbSetCursor (int ,int ,int ) ;
 int server ;

void
ui_set_null_cursor(void)
{
 rfbSetCursor(server, 0, FALSE);
}
