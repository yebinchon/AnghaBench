
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ fz_point ;


 float fz_abs (scalar_t__) ;

__attribute__((used)) static int points_differ(fz_point a, fz_point b, float threshold)
{
 if (fz_abs(a.x - b.x) > threshold) return 1;
 if (fz_abs(a.y - b.y) > threshold) return 1;
 return 0;
}
