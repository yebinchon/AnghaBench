
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float x; float y; } ;
typedef TYPE_1__ fz_point ;



__attribute__((used)) static float
vec_dot(const fz_point *a, const fz_point *b)
{
 return a->x * b->x + a->y * b->y;
}
