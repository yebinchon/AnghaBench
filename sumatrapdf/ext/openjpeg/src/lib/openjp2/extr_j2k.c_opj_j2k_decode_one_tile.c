
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int opj_stream_private_t ;
struct TYPE_17__ {size_t tw; size_t th; TYPE_8__* tcps; } ;
struct TYPE_15__ {scalar_t__ m_state; scalar_t__ m_last_sot_read_pos; scalar_t__ m_tile_ind_to_dec; } ;
struct TYPE_16__ {TYPE_3__ m_decoder; } ;
struct TYPE_19__ {TYPE_6__* cstr_index; TYPE_5__ m_cp; int m_output_image; int m_tcd; TYPE_4__ m_specific_param; } ;
typedef TYPE_7__ opj_j2k_t ;
typedef int opj_event_mgr_t ;
struct TYPE_20__ {int m_current_tile_part_number; } ;
struct TYPE_18__ {scalar_t__ main_head_end; TYPE_2__* tile_index; } ;
struct TYPE_14__ {TYPE_1__* tp_index; int nb_tps; } ;
struct TYPE_13__ {scalar_t__ start_pos; } ;
typedef size_t OPJ_UINT32 ;
typedef int OPJ_INT32 ;
typedef int OPJ_BOOL ;


 int EVT_ERROR ;
 int EVT_INFO ;
 int EVT_WARNING ;
 scalar_t__ J2K_STATE_EOC ;
 scalar_t__ J2K_STATE_TPHSOT ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_event_msg (int *,int ,char*,...) ;
 int opj_j2k_allocate_tile_element_cstr_index (TYPE_7__*) ;
 int opj_j2k_decode_tile (TYPE_7__*,size_t,int *,int ,int *,int *) ;
 int opj_j2k_read_tile_header (TYPE_7__*,size_t*,int *,int *,int *,int *,int *,size_t*,int *,int *,int *) ;
 int opj_j2k_tcp_data_destroy (TYPE_8__*) ;
 int opj_j2k_update_image_data (int ,int ) ;
 int opj_stream_read_seek (int *,scalar_t__,int *) ;

__attribute__((used)) static OPJ_BOOL opj_j2k_decode_one_tile(opj_j2k_t *p_j2k,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager)
{
    OPJ_BOOL l_go_on = OPJ_TRUE;
    OPJ_UINT32 l_current_tile_no;
    OPJ_UINT32 l_tile_no_to_dec;
    OPJ_INT32 l_tile_x0, l_tile_y0, l_tile_x1, l_tile_y1;
    OPJ_UINT32 l_nb_comps;
    OPJ_UINT32 l_nb_tiles;
    OPJ_UINT32 i;


    if (!p_j2k->cstr_index->tile_index) {
        if (!opj_j2k_allocate_tile_element_cstr_index(p_j2k)) {
            return OPJ_FALSE;
        }
    }

    l_tile_no_to_dec = (OPJ_UINT32)
                       p_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec;
    if (p_j2k->cstr_index->tile_index)
        if (p_j2k->cstr_index->tile_index->tp_index) {
            if (! p_j2k->cstr_index->tile_index[l_tile_no_to_dec].nb_tps) {


                if (!(opj_stream_read_seek(p_stream,
                                           p_j2k->m_specific_param.m_decoder.m_last_sot_read_pos + 2, p_manager))) {
                    opj_event_msg(p_manager, EVT_ERROR, "Problem with seek function\n");
                    return OPJ_FALSE;
                }
            } else {
                if (!(opj_stream_read_seek(p_stream,
                                           p_j2k->cstr_index->tile_index[l_tile_no_to_dec].tp_index[0].start_pos + 2,
                                           p_manager))) {
                    opj_event_msg(p_manager, EVT_ERROR, "Problem with seek function\n");
                    return OPJ_FALSE;
                }
            }

            if (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_EOC) {
                p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_TPHSOT;
            }
        }





    l_nb_tiles = p_j2k->m_cp.tw * p_j2k->m_cp.th;
    for (i = 0; i < l_nb_tiles; ++i) {
        p_j2k->m_cp.tcps[i].m_current_tile_part_number = -1;
    }

    for (;;) {
        if (! opj_j2k_read_tile_header(p_j2k,
                                       &l_current_tile_no,
                                       ((void*)0),
                                       &l_tile_x0, &l_tile_y0,
                                       &l_tile_x1, &l_tile_y1,
                                       &l_nb_comps,
                                       &l_go_on,
                                       p_stream,
                                       p_manager)) {
            return OPJ_FALSE;
        }

        if (! l_go_on) {
            break;
        }

        if (! opj_j2k_decode_tile(p_j2k, l_current_tile_no, ((void*)0), 0,
                                  p_stream, p_manager)) {
            return OPJ_FALSE;
        }
        opj_event_msg(p_manager, EVT_INFO, "Tile %d/%d has been decoded.\n",
                      l_current_tile_no + 1, p_j2k->m_cp.th * p_j2k->m_cp.tw);

        if (! opj_j2k_update_image_data(p_j2k->m_tcd,
                                        p_j2k->m_output_image)) {
            return OPJ_FALSE;
        }
        opj_j2k_tcp_data_destroy(&p_j2k->m_cp.tcps[l_current_tile_no]);

        opj_event_msg(p_manager, EVT_INFO,
                      "Image data has been updated with tile %d.\n\n", l_current_tile_no + 1);

        if (l_current_tile_no == l_tile_no_to_dec) {

            if (!(opj_stream_read_seek(p_stream, p_j2k->cstr_index->main_head_end + 2,
                                       p_manager))) {
                opj_event_msg(p_manager, EVT_ERROR, "Problem with seek function\n");
                return OPJ_FALSE;
            }
            break;
        } else {
            opj_event_msg(p_manager, EVT_WARNING,
                          "Tile read, decoded and updated is not the desired one (%d vs %d).\n",
                          l_current_tile_no + 1, l_tile_no_to_dec + 1);
        }

    }

    return OPJ_TRUE;
}
