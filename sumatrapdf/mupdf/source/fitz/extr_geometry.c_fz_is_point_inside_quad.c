
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_quad ;
typedef int fz_point ;


 int fz_is_point_inside_rect (int ,int ) ;
 int fz_rect_from_quad (int ) ;

int fz_is_point_inside_quad(fz_point p, fz_quad q)
{

 return fz_is_point_inside_rect(p, fz_rect_from_quad(q));
}
