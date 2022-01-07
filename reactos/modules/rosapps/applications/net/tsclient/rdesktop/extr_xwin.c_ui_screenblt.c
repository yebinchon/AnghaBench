
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_7__ {scalar_t__ yoffset; scalar_t__ xoffset; int wnd; } ;
struct TYPE_5__ {int gc; int backstore; } ;
struct TYPE_6__ {TYPE_1__ xwin; int wnd; scalar_t__ ownbackstore; int display; scalar_t__ Unobscured; } ;
typedef TYPE_2__ RDPCLIENT ;


 int ON_ALL_SEAMLESS_WINDOWS (int (*) (int ,int ,int ,int ,int,int,int,int,int,int),int ) ;
 int RESET_FUNCTION (int ) ;
 int SET_FUNCTION (int ) ;
 int XCopyArea (int ,int ,int ,int ,int,int,int,int,int,int) ;
 TYPE_4__* sw ;

void
ui_screenblt(RDPCLIENT * This, uint8 opcode,
                 int x, int y, int cx, int cy,
                int srcx, int srcy)
{
 SET_FUNCTION(opcode);
 if (This->ownbackstore)
 {
  XCopyArea(This->display, This->Unobscured ? This->wnd : This->xwin.backstore,
     This->wnd, This->xwin.gc, srcx, srcy, cx, cy, x, y);
  XCopyArea(This->display, This->xwin.backstore, This->xwin.backstore, This->xwin.gc, srcx, srcy, cx, cy, x, y);
 }
 else
 {
  XCopyArea(This->display, This->wnd, This->wnd, This->xwin.gc, srcx, srcy, cx, cy, x, y);
 }

 ON_ALL_SEAMLESS_WINDOWS(XCopyArea,
    (This->display, This->ownbackstore ? This->xwin.backstore : This->wnd,
     sw->wnd, This->xwin.gc, x, y, cx, cy, x - sw->xoffset, y - sw->yoffset));

 RESET_FUNCTION(opcode);
}
