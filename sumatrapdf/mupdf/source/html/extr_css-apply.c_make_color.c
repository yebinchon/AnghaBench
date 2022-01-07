
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r; int g; int b; int a; } ;
typedef TYPE_1__ fz_css_color ;



__attribute__((used)) static fz_css_color
make_color(int r, int g, int b, int a)
{
 fz_css_color c;
 c.r = r < 0 ? 0 : r > 255 ? 255 : r;
 c.g = g < 0 ? 0 : g > 255 ? 255 : g;
 c.b = b < 0 ? 0 : b > 255 ? 255 : b;
 c.a = a < 0 ? 0 : a > 255 ? 255 : a;
 return c;
}
