
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x1; scalar_t__ x0; scalar_t__ y1; scalar_t__ y0; } ;
typedef TYPE_1__ opj_tcd_band_t ;
typedef int OPJ_BOOL ;



OPJ_BOOL opj_tcd_is_band_empty(opj_tcd_band_t* band)
{
    return (band->x1 - band->x0 == 0) || (band->y1 - band->y0 == 0);
}
