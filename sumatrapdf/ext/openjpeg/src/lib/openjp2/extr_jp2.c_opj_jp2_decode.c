
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef int opj_stream_private_t ;
struct TYPE_23__ {int * icc_profile_buf; int icc_profile_len; scalar_t__ jp2_cdef; TYPE_3__* jp2_pclr; } ;
struct TYPE_21__ {int enumcs; TYPE_6__ color; int ignore_pclr_cmap_cdef; TYPE_15__* j2k; } ;
typedef TYPE_4__ opj_jp2_t ;
struct TYPE_22__ {int icc_profile_len; int * icc_profile_buf; int color_space; } ;
typedef TYPE_5__ opj_image_t ;
typedef int opj_event_mgr_t ;
struct TYPE_20__ {int cmap; } ;
struct TYPE_18__ {scalar_t__ m_numcomps_to_decode; } ;
struct TYPE_19__ {TYPE_1__ m_decoder; } ;
struct TYPE_17__ {TYPE_2__ m_specific_param; } ;
typedef int OPJ_BOOL ;


 int EVT_ERROR ;
 int OPJ_CLRSPC_CMYK ;
 int OPJ_CLRSPC_EYCC ;
 int OPJ_CLRSPC_GRAY ;
 int OPJ_CLRSPC_SRGB ;
 int OPJ_CLRSPC_SYCC ;
 int OPJ_CLRSPC_UNKNOWN ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_event_msg (int *,int ,char*) ;
 int opj_j2k_decode (TYPE_15__*,int *,TYPE_5__*,int *) ;
 int opj_jp2_apply_cdef (TYPE_5__*,TYPE_6__*,int *) ;
 int opj_jp2_apply_pclr (TYPE_5__*,TYPE_6__*,int *) ;
 int opj_jp2_check_color (TYPE_5__*,TYPE_6__*,int *) ;
 int opj_jp2_free_pclr (TYPE_6__*) ;

OPJ_BOOL opj_jp2_decode(opj_jp2_t *jp2,
                        opj_stream_private_t *p_stream,
                        opj_image_t* p_image,
                        opj_event_mgr_t * p_manager)
{
    if (!p_image) {
        return OPJ_FALSE;
    }


    if (! opj_j2k_decode(jp2->j2k, p_stream, p_image, p_manager)) {
        opj_event_msg(p_manager, EVT_ERROR,
                      "Failed to decode the codestream in the JP2 file\n");
        return OPJ_FALSE;
    }

    if (jp2->j2k->m_specific_param.m_decoder.m_numcomps_to_decode) {

        return OPJ_TRUE;
    }

    if (!jp2->ignore_pclr_cmap_cdef) {
        if (!opj_jp2_check_color(p_image, &(jp2->color), p_manager)) {
            return OPJ_FALSE;
        }


        if (jp2->enumcs == 16) {
            p_image->color_space = OPJ_CLRSPC_SRGB;
        } else if (jp2->enumcs == 17) {
            p_image->color_space = OPJ_CLRSPC_GRAY;
        } else if (jp2->enumcs == 18) {
            p_image->color_space = OPJ_CLRSPC_SYCC;
        } else if (jp2->enumcs == 24) {
            p_image->color_space = OPJ_CLRSPC_EYCC;
        } else if (jp2->enumcs == 12) {
            p_image->color_space = OPJ_CLRSPC_CMYK;
        } else {
            p_image->color_space = OPJ_CLRSPC_UNKNOWN;
        }

        if (jp2->color.jp2_pclr) {

            if (!jp2->color.jp2_pclr->cmap) {
                opj_jp2_free_pclr(&(jp2->color));
            } else {
                if (!opj_jp2_apply_pclr(p_image, &(jp2->color), p_manager)) {
                    return OPJ_FALSE;
                }
            }
        }


        if (jp2->color.jp2_cdef) {
            opj_jp2_apply_cdef(p_image, &(jp2->color), p_manager);
        }

        if (jp2->color.icc_profile_buf) {
            p_image->icc_profile_buf = jp2->color.icc_profile_buf;
            p_image->icc_profile_len = jp2->color.icc_profile_len;
            jp2->color.icc_profile_buf = ((void*)0);
        }
    }

    return OPJ_TRUE;
}
