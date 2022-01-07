
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
typedef int XPoint ;
struct TYPE_11__ {int yoffset; int xoffset; int wnd; } ;
struct TYPE_10__ {int colour; } ;
struct TYPE_8__ {int gc; int backstore; } ;
struct TYPE_9__ {TYPE_1__ xwin; int display; scalar_t__ ownbackstore; int wnd; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int POINT ;
typedef TYPE_3__ PEN ;


 int CoordModePrevious ;
 int ON_ALL_SEAMLESS_WINDOWS (int ,TYPE_2__*) ;
 int RESET_FUNCTION (int ) ;
 int SET_FOREGROUND (int ) ;
 int SET_FUNCTION (int ) ;
 int XDrawLines (int ,int ,int ,int *,int,int ) ;
 int seamless_XDrawLines ;
 TYPE_6__* sw ;

void
ui_polyline(RDPCLIENT * This, uint8 opcode,
                POINT * points, int npoints,
               PEN * pen)
{

 SET_FUNCTION(opcode);
 SET_FOREGROUND(pen->colour);
 XDrawLines(This->display, This->wnd, This->xwin.gc, (XPoint *) points, npoints, CoordModePrevious);
 if (This->ownbackstore)
  XDrawLines(This->display, This->xwin.backstore, This->xwin.gc, (XPoint *) points, npoints,
      CoordModePrevious);

 ON_ALL_SEAMLESS_WINDOWS(seamless_XDrawLines,
    (This, sw->wnd, (XPoint *) points, npoints, sw->xoffset, sw->yoffset));

 RESET_FUNCTION(opcode);
}
