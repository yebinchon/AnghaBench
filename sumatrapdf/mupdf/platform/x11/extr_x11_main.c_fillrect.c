
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFillRectangle (int ,int ,int ,int,int,int,int) ;
 int xdpy ;
 int xgc ;
 int xwin ;

__attribute__((used)) static void fillrect(int x, int y, int w, int h)
{
 if (w > 0 && h > 0)
  XFillRectangle(xdpy, xwin, xgc, x, y, w, h);
}
