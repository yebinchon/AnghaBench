
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* lr; void* ll; void* ur; void* ul; } ;
typedef TYPE_1__ fz_quad ;
typedef int fz_matrix ;


 void* fz_transform_point (void*,int ) ;

fz_quad
fz_transform_quad(fz_quad q, fz_matrix m)
{
 q.ul = fz_transform_point(q.ul, m);
 q.ur = fz_transform_point(q.ur, m);
 q.ll = fz_transform_point(q.ll, m);
 q.lr = fz_transform_point(q.lr, m);
 return q;
}
