
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cursorX; int cursorY; } ;


 int rfbUndrawCursor (TYPE_1__*) ;
 TYPE_1__* server ;

void
ui_move_pointer(int x, int y)
{

 rfbUndrawCursor(server);
 server->cursorX = x;
 server->cursorY = y;
}
