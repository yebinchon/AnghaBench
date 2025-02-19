
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int x; int y; } ;
typedef TYPE_1__ fz_point ;



__attribute__((used)) static fz_point
compute_tensor_interior(
 fz_point a, fz_point b, fz_point c, fz_point d,
 fz_point e, fz_point f, fz_point g, fz_point h)
{
 fz_point pt;



 pt.x = -4 * a.x;
 pt.x += 6 * (b.x + c.x);
 pt.x += -2 * (d.x + e.x);
 pt.x += 3 * (f.x + g.x);
 pt.x += -1 * h.x;
 pt.x /= 9;

 pt.y = -4 * a.y;
 pt.y += 6 * (b.y + c.y);
 pt.y += -2 * (d.y + e.y);
 pt.y += 3 * (f.y + g.y);
 pt.y += -1 * h.y;
 pt.y /= 9;

 return pt;
}
