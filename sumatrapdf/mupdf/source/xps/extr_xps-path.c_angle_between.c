
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float x; float y; } ;
typedef TYPE_1__ fz_point ;


 float acosf (float) ;

__attribute__((used)) static float
angle_between(fz_point u, fz_point v)
{
 float det = u.x * v.y - u.y * v.x;
 float sign = (det < 0 ? -1 : 1);
 float magu = u.x * u.x + u.y * u.y;
 float magv = v.x * v.x + v.y * v.y;
 float udotv = u.x * v.x + u.y * v.y;
 float t = udotv / (magu * magv);

 if (t < -1) t = -1;
 if (t > 1) t = 1;
 return sign * acosf(t);
}
