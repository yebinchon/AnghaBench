
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float x; float y; } ;
typedef TYPE_1__ fz_point ;


 float sqrtf (float) ;

fz_point
fz_normalize_vector(fz_point p)
{
 float len = p.x * p.x + p.y * p.y;
 if (len != 0)
 {
  len = sqrtf(len);
  p.x /= len;
  p.y /= len;
 }
 return p;
}
