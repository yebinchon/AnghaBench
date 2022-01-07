
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
struct TYPE_6__ {TYPE_1__ xwin; int display; scalar_t__ ownbackstore; int wnd; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int Pixmap ;
typedef scalar_t__ HBITMAP ;


 int ON_ALL_SEAMLESS_WINDOWS (int (*) (int ,int ,int ,int ,int,int,int,int,int,int),int ) ;
 int RESET_FUNCTION (int ) ;
 int SET_FUNCTION (int ) ;
 int XCopyArea (int ,int ,int ,int ,int,int,int,int,int,int) ;
 TYPE_4__* sw ;

void
ui_memblt(RDPCLIENT * This, uint8 opcode,
              int x, int y, int cx, int cy,
             HBITMAP src, int srcx, int srcy)
{
 SET_FUNCTION(opcode);
 XCopyArea(This->display, (Pixmap) src, This->wnd, This->xwin.gc, srcx, srcy, cx, cy, x, y);
 ON_ALL_SEAMLESS_WINDOWS(XCopyArea,
    (This->display, (Pixmap) src, sw->wnd, This->xwin.gc,
     srcx, srcy, cx, cy, x - sw->xoffset, y - sw->yoffset));
 if (This->ownbackstore)
  XCopyArea(This->display, (Pixmap) src, This->xwin.backstore, This->xwin.gc, srcx, srcy, cx, cy, x, y);
 RESET_FUNCTION(opcode);
}
