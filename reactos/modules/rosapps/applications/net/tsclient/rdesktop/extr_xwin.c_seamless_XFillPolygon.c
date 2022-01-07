
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int x; int y; } ;
typedef TYPE_2__ XPoint ;
struct TYPE_7__ {int gc; } ;
struct TYPE_9__ {TYPE_1__ xwin; int display; } ;
typedef TYPE_3__ RDPCLIENT ;
typedef int Drawable ;


 int Complex ;
 int CoordModePrevious ;
 int XFillPolygon (int ,int ,int ,TYPE_2__*,int,int ,int ) ;

__attribute__((used)) static void
seamless_XFillPolygon(RDPCLIENT * This, Drawable d, XPoint * points, int npoints, int xoffset, int yoffset)
{
 points[0].x -= xoffset;
 points[0].y -= yoffset;
 XFillPolygon(This->display, d, This->xwin.gc, points, npoints, Complex, CoordModePrevious);
 points[0].x += xoffset;
 points[0].y += yoffset;
}
