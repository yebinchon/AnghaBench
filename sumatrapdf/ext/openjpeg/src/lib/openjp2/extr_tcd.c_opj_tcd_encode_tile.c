
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_27__ {size_t numresolutions; TYPE_8__* resolutions; } ;
typedef TYPE_6__ opj_tcd_tilecomp_t ;
struct TYPE_28__ {scalar_t__ cur_tp_num; size_t tcd_tileno; TYPE_4__* tcp; TYPE_3__* tcd_image; TYPE_1__* cp; } ;
typedef TYPE_7__ opj_tcd_t ;
struct TYPE_29__ {size_t pw; size_t ph; } ;
typedef TYPE_8__ opj_tcd_resolution_t ;
struct TYPE_30__ {scalar_t__* prch; scalar_t__* prcw; } ;
typedef TYPE_9__ opj_tccp_t ;
typedef int opj_packet_info_t ;
typedef int opj_event_mgr_t ;
struct TYPE_21__ {int index_write; TYPE_5__* tile; scalar_t__ numlayers; scalar_t__ numcomps; } ;
typedef TYPE_10__ opj_codestream_info_t ;
struct TYPE_26__ {int* pw; int* ph; int* pdx; int* pdy; int * packet; } ;
struct TYPE_25__ {TYPE_9__* tccps; } ;
struct TYPE_24__ {TYPE_2__* tiles; } ;
struct TYPE_23__ {TYPE_6__* comps; } ;
struct TYPE_22__ {TYPE_4__* tcps; } ;
typedef size_t OPJ_UINT32 ;
typedef size_t OPJ_SIZE_T ;
typedef int OPJ_BYTE ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 scalar_t__ opj_calloc (size_t,int) ;
 int opj_tcd_dc_level_shift_encode (TYPE_7__*) ;
 int opj_tcd_dwt_encode (TYPE_7__*) ;
 int opj_tcd_mct_encode (TYPE_7__*) ;
 int opj_tcd_rate_allocate_encode (TYPE_7__*,int *,size_t,TYPE_10__*,int *) ;
 int opj_tcd_t1_encode (TYPE_7__*) ;
 int opj_tcd_t2_encode (TYPE_7__*,int *,size_t*,size_t,TYPE_10__*,int *) ;

OPJ_BOOL opj_tcd_encode_tile(opj_tcd_t *p_tcd,
                             OPJ_UINT32 p_tile_no,
                             OPJ_BYTE *p_dest,
                             OPJ_UINT32 * p_data_written,
                             OPJ_UINT32 p_max_length,
                             opj_codestream_info_t *p_cstr_info,
                             opj_event_mgr_t *p_manager)
{

    if (p_tcd->cur_tp_num == 0) {

        p_tcd->tcd_tileno = p_tile_no;
        p_tcd->tcp = &p_tcd->cp->tcps[p_tile_no];


        if (p_cstr_info) {
            OPJ_UINT32 l_num_packs = 0;
            OPJ_UINT32 i;
            opj_tcd_tilecomp_t *l_tilec_idx =
                &p_tcd->tcd_image->tiles->comps[0];
            opj_tccp_t *l_tccp = p_tcd->tcp->tccps;

            for (i = 0; i < l_tilec_idx->numresolutions; i++) {
                opj_tcd_resolution_t *l_res_idx = &l_tilec_idx->resolutions[i];

                p_cstr_info->tile[p_tile_no].pw[i] = (int)l_res_idx->pw;
                p_cstr_info->tile[p_tile_no].ph[i] = (int)l_res_idx->ph;

                l_num_packs += l_res_idx->pw * l_res_idx->ph;
                p_cstr_info->tile[p_tile_no].pdx[i] = (int)l_tccp->prcw[i];
                p_cstr_info->tile[p_tile_no].pdy[i] = (int)l_tccp->prch[i];
            }
            p_cstr_info->tile[p_tile_no].packet = (opj_packet_info_t*) opj_calloc((
                    OPJ_SIZE_T)p_cstr_info->numcomps * (OPJ_SIZE_T)p_cstr_info->numlayers *
                                                  l_num_packs,
                                                  sizeof(opj_packet_info_t));
            if (!p_cstr_info->tile[p_tile_no].packet) {

                return OPJ_FALSE;
            }
        }




        if (! opj_tcd_dc_level_shift_encode(p_tcd)) {
            return OPJ_FALSE;
        }



        if (! opj_tcd_mct_encode(p_tcd)) {
            return OPJ_FALSE;
        }



        if (! opj_tcd_dwt_encode(p_tcd)) {
            return OPJ_FALSE;
        }



        if (! opj_tcd_t1_encode(p_tcd)) {
            return OPJ_FALSE;
        }



        if (! opj_tcd_rate_allocate_encode(p_tcd, p_dest, p_max_length,
                                           p_cstr_info, p_manager)) {
            return OPJ_FALSE;
        }


    }



    if (p_cstr_info) {
        p_cstr_info->index_write = 1;
    }


    if (! opj_tcd_t2_encode(p_tcd, p_dest, p_data_written, p_max_length,
                            p_cstr_info, p_manager)) {
        return OPJ_FALSE;
    }




    return OPJ_TRUE;
}
