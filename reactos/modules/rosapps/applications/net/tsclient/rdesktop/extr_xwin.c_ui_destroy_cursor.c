
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef scalar_t__ HCURSOR ;
typedef int Cursor ;


 int XFreeCursor (int ,int ) ;

void
ui_destroy_cursor(RDPCLIENT * This, HCURSOR cursor)
{
 XFreeCursor(This->display, (Cursor) cursor);
}
