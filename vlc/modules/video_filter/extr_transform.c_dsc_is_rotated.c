
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ plane32; scalar_t__ yuyv; } ;
typedef TYPE_1__ transform_description_t ;



__attribute__((used)) static bool dsc_is_rotated(const transform_description_t *dsc)
{
    return dsc->plane32 != dsc->yuyv;
}
