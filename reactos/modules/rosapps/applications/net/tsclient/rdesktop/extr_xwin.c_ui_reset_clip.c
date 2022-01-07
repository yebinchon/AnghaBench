
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {TYPE_4__ clip_rectangle; int gc; } ;
struct TYPE_6__ {TYPE_1__ xwin; int display; int height; int width; } ;
typedef TYPE_2__ RDPCLIENT ;


 int XSetClipRectangles (int ,int ,int ,int ,TYPE_4__*,int,int ) ;
 int YXBanded ;

void
ui_reset_clip(RDPCLIENT * This)
{
 This->xwin.clip_rectangle.x = 0;
 This->xwin.clip_rectangle.y = 0;
 This->xwin.clip_rectangle.width = This->width;
 This->xwin.clip_rectangle.height = This->height;
 XSetClipRectangles(This->display, This->xwin.gc, 0, 0, &This->xwin.clip_rectangle, 1, YXBanded);
}
