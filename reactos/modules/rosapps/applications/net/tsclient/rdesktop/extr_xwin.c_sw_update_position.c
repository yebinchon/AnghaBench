
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int outpos_serial; int outpos_xoffset; int outpos_yoffset; int outpos_height; int outpos_width; int outstanding_position; int id; int wnd; } ;
typedef TYPE_1__ seamless_window ;
struct TYPE_9__ {int height; int width; int border_width; int root; } ;
typedef TYPE_2__ XWindowAttributes ;
typedef int Window ;
struct TYPE_10__ {int display; } ;
typedef TYPE_3__ RDPCLIENT ;


 int True ;
 int XGetWindowAttributes (int ,int ,TYPE_2__*) ;
 int XTranslateCoordinates (int ,int ,int ,int ,int ,int*,int*,int *) ;
 unsigned int seamless_send_position (TYPE_3__*,int ,int,int,int ,int ,int ) ;

__attribute__((used)) static void
sw_update_position(RDPCLIENT * This, seamless_window * sw)
{
 XWindowAttributes wa;
 int x, y;
 Window child_return;
 unsigned int serial;

 XGetWindowAttributes(This->display, sw->wnd, &wa);
 XTranslateCoordinates(This->display, sw->wnd, wa.root,
         -wa.border_width, -wa.border_width, &x, &y, &child_return);

 serial = seamless_send_position(This, sw->id, x, y, wa.width, wa.height, 0);

 sw->outstanding_position = True;
 sw->outpos_serial = serial;

 sw->outpos_xoffset = x;
 sw->outpos_yoffset = y;
 sw->outpos_width = wa.width;
 sw->outpos_height = wa.height;
}
