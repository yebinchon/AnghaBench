
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_10__ {scalar_t__ yoffset; scalar_t__ xoffset; int wnd; } ;
struct TYPE_9__ {int colour; } ;
struct TYPE_7__ {int gc; int backstore; } ;
struct TYPE_8__ {TYPE_1__ xwin; int display; scalar_t__ ownbackstore; int wnd; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef TYPE_3__ PEN ;


 int ON_ALL_SEAMLESS_WINDOWS (int (*) (int ,int ,int ,int,int,int,int),int ) ;
 int RESET_FUNCTION (int ) ;
 int SET_FOREGROUND (int ) ;
 int SET_FUNCTION (int ) ;
 int XDrawLine (int ,int ,int ,int,int,int,int) ;
 TYPE_6__* sw ;

void
ui_line(RDPCLIENT * This, uint8 opcode,
            int startx, int starty, int endx, int endy,
           PEN * pen)
{
 SET_FUNCTION(opcode);
 SET_FOREGROUND(pen->colour);
 XDrawLine(This->display, This->wnd, This->xwin.gc, startx, starty, endx, endy);
 ON_ALL_SEAMLESS_WINDOWS(XDrawLine, (This->display, sw->wnd, This->xwin.gc,
         startx - sw->xoffset, starty - sw->yoffset,
         endx - sw->xoffset, endy - sw->yoffset));
 if (This->ownbackstore)
  XDrawLine(This->display, This->xwin.backstore, This->xwin.gc, startx, starty, endx, endy);
 RESET_FUNCTION(opcode);
}
