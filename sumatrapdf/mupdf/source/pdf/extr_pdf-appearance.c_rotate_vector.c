
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_point ;


 float cosf (float) ;
 int fz_make_point (float,float) ;
 float sinf (float) ;

__attribute__((used)) static fz_point rotate_vector(float angle, float x, float y)
{
 float ca = cosf(angle);
 float sa = sinf(angle);
 return fz_make_point(x*ca - y*sa, x*sa + y*ca);
}
