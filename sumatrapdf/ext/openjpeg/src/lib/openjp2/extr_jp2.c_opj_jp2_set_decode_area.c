
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j2k; } ;
typedef TYPE_1__ opj_jp2_t ;
typedef int opj_image_t ;
typedef int opj_event_mgr_t ;
typedef int OPJ_INT32 ;
typedef int OPJ_BOOL ;


 int opj_j2k_set_decode_area (int ,int *,int ,int ,int ,int ,int *) ;

OPJ_BOOL opj_jp2_set_decode_area(opj_jp2_t *p_jp2,
                                 opj_image_t* p_image,
                                 OPJ_INT32 p_start_x, OPJ_INT32 p_start_y,
                                 OPJ_INT32 p_end_x, OPJ_INT32 p_end_y,
                                 opj_event_mgr_t * p_manager
                                )
{
    return opj_j2k_set_decode_area(p_jp2->j2k, p_image, p_start_x, p_start_y,
                                   p_end_x, p_end_y, p_manager);
}
