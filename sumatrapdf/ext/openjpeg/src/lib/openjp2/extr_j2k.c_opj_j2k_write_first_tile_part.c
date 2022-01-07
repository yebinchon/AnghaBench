
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct opj_event_mgr {int dummy; } ;
struct TYPE_20__ {scalar_t__ cur_pino; } ;
typedef TYPE_5__ opj_tcd_t ;
typedef int opj_stream_private_t ;
struct TYPE_16__ {scalar_t__ m_current_poc_tile_part_number; } ;
struct TYPE_17__ {TYPE_1__ m_encoder; } ;
struct TYPE_22__ {int rsiz; TYPE_4__* tcps; } ;
struct TYPE_21__ {size_t m_current_tile_number; TYPE_3__* m_private_image; TYPE_2__ m_specific_param; TYPE_7__ m_cp; TYPE_5__* m_tcd; } ;
typedef TYPE_6__ opj_j2k_t ;
typedef TYPE_7__ opj_cp_t ;
struct TYPE_19__ {scalar_t__ numpocs; } ;
struct TYPE_18__ {int numcomps; } ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_BYTE ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 scalar_t__ OPJ_IS_CINEMA (int ) ;
 int OPJ_TRUE ;
 int compno ;
 int opj_j2k_update_tlm (TYPE_6__*,scalar_t__) ;
 int opj_j2k_write_coc_in_memory (TYPE_6__*,int,int *,scalar_t__*,struct opj_event_mgr*) ;
 int opj_j2k_write_poc_in_memory (TYPE_6__*,int *,scalar_t__*,struct opj_event_mgr*) ;
 int opj_j2k_write_qcc_in_memory (TYPE_6__*,int,int *,scalar_t__*,struct opj_event_mgr*) ;
 int opj_j2k_write_sod (TYPE_6__*,TYPE_5__*,int *,scalar_t__*,scalar_t__,int *,struct opj_event_mgr*) ;
 int opj_j2k_write_sot (TYPE_6__*,int *,scalar_t__,scalar_t__*,int *,struct opj_event_mgr*) ;
 int opj_write_bytes (int *,scalar_t__,int) ;

__attribute__((used)) static OPJ_BOOL opj_j2k_write_first_tile_part(opj_j2k_t *p_j2k,
        OPJ_BYTE * p_data,
        OPJ_UINT32 * p_data_written,
        OPJ_UINT32 p_total_data_size,
        opj_stream_private_t *p_stream,
        struct opj_event_mgr * p_manager)
{
    OPJ_UINT32 l_nb_bytes_written = 0;
    OPJ_UINT32 l_current_nb_bytes_written;
    OPJ_BYTE * l_begin_data = 00;

    opj_tcd_t * l_tcd = 00;
    opj_cp_t * l_cp = 00;

    l_tcd = p_j2k->m_tcd;
    l_cp = &(p_j2k->m_cp);

    l_tcd->cur_pino = 0;


    p_j2k->m_specific_param.m_encoder.m_current_poc_tile_part_number = 0;




    l_current_nb_bytes_written = 0;
    l_begin_data = p_data;
    if (! opj_j2k_write_sot(p_j2k, p_data, p_total_data_size,
                            &l_current_nb_bytes_written, p_stream,
                            p_manager)) {
        return OPJ_FALSE;
    }

    l_nb_bytes_written += l_current_nb_bytes_written;
    p_data += l_current_nb_bytes_written;
    p_total_data_size -= l_current_nb_bytes_written;

    if (!OPJ_IS_CINEMA(l_cp->rsiz)) {
        if (l_cp->tcps[p_j2k->m_current_tile_number].numpocs) {
            l_current_nb_bytes_written = 0;
            opj_j2k_write_poc_in_memory(p_j2k, p_data, &l_current_nb_bytes_written,
                                        p_manager);
            l_nb_bytes_written += l_current_nb_bytes_written;
            p_data += l_current_nb_bytes_written;
            p_total_data_size -= l_current_nb_bytes_written;
        }
    }

    l_current_nb_bytes_written = 0;
    if (! opj_j2k_write_sod(p_j2k, l_tcd, p_data, &l_current_nb_bytes_written,
                            p_total_data_size, p_stream, p_manager)) {
        return OPJ_FALSE;
    }

    l_nb_bytes_written += l_current_nb_bytes_written;
    * p_data_written = l_nb_bytes_written;


    opj_write_bytes(l_begin_data + 6, l_nb_bytes_written,
                    4);

    if (OPJ_IS_CINEMA(l_cp->rsiz)) {
        opj_j2k_update_tlm(p_j2k, l_nb_bytes_written);
    }

    return OPJ_TRUE;
}
