
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y1; scalar_t__ y0; scalar_t__ x1; scalar_t__ x0; } ;
typedef TYPE_1__ rectangle_t ;


 scalar_t__ __MAX (scalar_t__,scalar_t__) ;
 scalar_t__ __MIN (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool r_overlap( const rectangle_t *a, const rectangle_t *b, int i_dx, int i_dy )
{
    return __MAX(a->x0-i_dx, b->x0) < __MIN( a->x1+i_dx, b->x1 ) &&
            __MAX(a->y0-i_dy, b->y0) < __MIN( a->y1+i_dy, b->y1 );
}
