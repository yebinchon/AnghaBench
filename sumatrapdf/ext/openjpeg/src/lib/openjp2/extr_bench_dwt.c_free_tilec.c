
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resolutions; int data; } ;
typedef TYPE_1__ opj_tcd_tilecomp_t ;


 int opj_free (int ) ;

void free_tilec(opj_tcd_tilecomp_t * l_tilec)
{
    opj_free(l_tilec->data);
    opj_free(l_tilec->resolutions);
}
