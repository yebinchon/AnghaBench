
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int server ;
 int vncSetRect (int ,int,int,int,int,int) ;
 scalar_t__ vncwinClipRect (int*,int*,int*,int*) ;

void
ui_rect(
                   int x, int y, int cx, int cy,
                    int colour)
{
 if (vncwinClipRect(&x, &y, &cx, &cy))
 {
  vncSetRect(server, x, y, cx, cy, colour);
 }
}
