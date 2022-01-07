
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef int opj_stream_private_t ;
struct TYPE_20__ {scalar_t__ m_reduce; } ;
struct TYPE_21__ {TYPE_3__ m_dec; } ;
struct TYPE_22__ {TYPE_4__ m_specific_param; } ;
struct TYPE_23__ {TYPE_15__* m_private_image; int m_procedure_list; int * m_output_image; TYPE_5__ m_cp; } ;
typedef TYPE_6__ opj_j2k_t ;
struct TYPE_24__ {scalar_t__ numcomps; TYPE_2__* comps; } ;
typedef TYPE_7__ opj_image_t ;
typedef int opj_event_mgr_t ;
struct TYPE_19__ {scalar_t__ factor; int * data; } ;
struct TYPE_18__ {scalar_t__ factor; } ;
struct TYPE_17__ {scalar_t__ numcomps; TYPE_1__* comps; } ;
typedef size_t OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int opj_copy_image_header (TYPE_7__*,int *) ;
 int * opj_image_create0 () ;
 int opj_image_destroy (TYPE_15__*) ;
 int opj_j2k_exec (TYPE_6__*,int ,int *,int *) ;
 int opj_j2k_move_data_from_codec_to_output_image (TYPE_6__*,TYPE_7__*) ;
 int opj_j2k_setup_decoding (TYPE_6__*,int *) ;
 int opj_j2k_update_image_dimensions (TYPE_7__*,int *) ;

OPJ_BOOL opj_j2k_decode(opj_j2k_t * p_j2k,
                        opj_stream_private_t * p_stream,
                        opj_image_t * p_image,
                        opj_event_mgr_t * p_manager)
{
    if (!p_image) {
        return OPJ_FALSE;
    }





    if (p_j2k->m_cp.m_specific_param.m_dec.m_reduce > 0 &&
            p_j2k->m_private_image != ((void*)0) &&
            p_j2k->m_private_image->numcomps > 0 &&
            p_j2k->m_private_image->comps[0].factor ==
            p_j2k->m_cp.m_specific_param.m_dec.m_reduce &&
            p_image->numcomps > 0 &&
            p_image->comps[0].factor == 0 &&

            p_image->comps[0].data == ((void*)0)) {
        OPJ_UINT32 it_comp;



        for (it_comp = 0; it_comp < p_image->numcomps; ++it_comp) {
            p_image->comps[it_comp].factor = p_j2k->m_cp.m_specific_param.m_dec.m_reduce;
        }
        if (!opj_j2k_update_image_dimensions(p_image, p_manager)) {
            return OPJ_FALSE;
        }
    }

    if (p_j2k->m_output_image == ((void*)0)) {
        p_j2k->m_output_image = opj_image_create0();
        if (!(p_j2k->m_output_image)) {
            return OPJ_FALSE;
        }
    }
    opj_copy_image_header(p_image, p_j2k->m_output_image);


    if (!opj_j2k_setup_decoding(p_j2k, p_manager)) {
        return OPJ_FALSE;
    }


    if (! opj_j2k_exec(p_j2k, p_j2k->m_procedure_list, p_stream, p_manager)) {
        opj_image_destroy(p_j2k->m_private_image);
        p_j2k->m_private_image = ((void*)0);
        return OPJ_FALSE;
    }


    return opj_j2k_move_data_from_codec_to_output_image(p_j2k, p_image);
}
