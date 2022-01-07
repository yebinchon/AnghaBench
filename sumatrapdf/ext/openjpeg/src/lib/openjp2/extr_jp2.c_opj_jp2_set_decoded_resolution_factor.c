
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j2k; } ;
typedef TYPE_1__ opj_jp2_t ;
typedef int opj_event_mgr_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int opj_j2k_set_decoded_resolution_factor (int ,int ,int *) ;

OPJ_BOOL opj_jp2_set_decoded_resolution_factor(opj_jp2_t *p_jp2,
        OPJ_UINT32 res_factor,
        opj_event_mgr_t * p_manager)
{
    return opj_j2k_set_decoded_resolution_factor(p_jp2->j2k, res_factor, p_manager);
}
