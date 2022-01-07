
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ height; scalar_t__ y; scalar_t__ width; scalar_t__ x; } ;
typedef TYPE_1__ spu_area_t ;


 scalar_t__ __MAX (scalar_t__,scalar_t__) ;
 scalar_t__ __MIN (scalar_t__,scalar_t__) ;
 TYPE_1__ spu_area_scaled (TYPE_1__) ;

__attribute__((used)) static bool spu_area_overlap(spu_area_t a, spu_area_t b)
{
    a = spu_area_scaled(a);
    b = spu_area_scaled(b);

    return __MAX(a.x, b.x) < __MIN(a.x + a.width , b.x + b.width ) &&
           __MAX(a.y, b.y) < __MIN(a.y + a.height, b.y + b.height);
}
