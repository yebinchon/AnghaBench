
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int colour; } ;
typedef TYPE_1__ PEN ;


 int rfbDrawLine (int ,int,int,int,int,int ) ;
 int server ;

void
ui_line(uint8 opcode,
            int startx, int starty, int endx, int endy,
           PEN * pen)
{



 rfbDrawLine(server, startx, starty, endx, endy, pen->colour);
}
