
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double alpha; double theta; } ;
typedef TYPE_1__ cmsSpherical ;


 double SECTORS ;
 scalar_t__ floor (double) ;

__attribute__((used)) static
void QuantizeToSector(const cmsSpherical* sp, int* alpha, int* theta)
{
    *alpha = (int) floor(((sp->alpha * (SECTORS)) / 360.0) );
    *theta = (int) floor(((sp->theta * (SECTORS)) / 180.0) );

    if (*alpha >= SECTORS)
        *alpha = SECTORS-1;
    if (*theta >= SECTORS)
        *theta = SECTORS-1;
}
