
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rfbCursorPtr ;
typedef scalar_t__ HCURSOR ;


 int FALSE ;
 int rfbSetCursor (int ,int ,int ) ;
 int server ;

void
ui_set_cursor(HCURSOR cursor)
{

 rfbSetCursor(server, (rfbCursorPtr) cursor, FALSE);
}
