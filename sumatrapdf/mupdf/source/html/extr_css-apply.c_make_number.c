
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float value; int unit; } ;
typedef TYPE_1__ fz_css_number ;



__attribute__((used)) static fz_css_number
make_number(float v, int u)
{
 fz_css_number n;
 n.value = v;
 n.unit = u;
 return n;
}
