
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rfbCursorPtr ;
typedef scalar_t__ HCURSOR ;


 int rfbFreeCursor (int ) ;

void
ui_destroy_cursor(HCURSOR cursor)
{
 if (cursor)
  rfbFreeCursor((rfbCursorPtr) cursor);
}
