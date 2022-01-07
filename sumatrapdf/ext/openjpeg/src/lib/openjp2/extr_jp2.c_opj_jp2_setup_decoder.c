
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ jp2_has_colr; } ;
struct TYPE_8__ {int ignore_pclr_cmap_cdef; TYPE_1__ color; int j2k; } ;
typedef TYPE_2__ opj_jp2_t ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_3__ opj_dparameters_t ;


 int OPJ_DPARAMETERS_IGNORE_PCLR_CMAP_CDEF_FLAG ;
 int opj_j2k_setup_decoder (int ,TYPE_3__*) ;

void opj_jp2_setup_decoder(opj_jp2_t *jp2, opj_dparameters_t *parameters)
{

    opj_j2k_setup_decoder(jp2->j2k, parameters);


    jp2->color.jp2_has_colr = 0;
    jp2->ignore_pclr_cmap_cdef = parameters->flags &
                                 OPJ_DPARAMETERS_IGNORE_PCLR_CMAP_CDEF_FLAG;
}
