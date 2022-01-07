
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXRES ;
 int MINRES ;
 int canvas_x ;
 int canvas_y ;
 int currentzoom ;
 int fz_clamp (int,int ,int ) ;
 int scroll_x ;
 int scroll_y ;

__attribute__((used)) static void set_zoom(int z, int cx, int cy)
{
 z = fz_clamp(z, MINRES, MAXRES);
 scroll_x = (scroll_x + cx - canvas_x) * z / currentzoom - cx + canvas_x;
 scroll_y = (scroll_y + cy - canvas_y) * z / currentzoom - cy + canvas_y;
 currentzoom = z;
}
