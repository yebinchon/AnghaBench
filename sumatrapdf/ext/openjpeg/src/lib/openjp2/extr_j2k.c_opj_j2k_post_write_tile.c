
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int opj_stream_private_t ;
struct TYPE_7__ {scalar_t__ m_encoded_tile_size; int * m_encoded_tile_data; } ;
struct TYPE_8__ {TYPE_1__ m_encoder; } ;
struct TYPE_9__ {int m_current_tile_number; TYPE_2__ m_specific_param; } ;
typedef TYPE_3__ opj_j2k_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_BYTE ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int assert (int *) ;
 int opj_j2k_write_all_tile_parts (TYPE_3__*,int *,scalar_t__*,scalar_t__,int *,int *) ;
 int opj_j2k_write_first_tile_part (TYPE_3__*,int *,scalar_t__*,scalar_t__,int *,int *) ;
 scalar_t__ opj_stream_write_data (int *,int *,scalar_t__,int *) ;

__attribute__((used)) static OPJ_BOOL opj_j2k_post_write_tile(opj_j2k_t * p_j2k,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager)
{
    OPJ_UINT32 l_nb_bytes_written;
    OPJ_BYTE * l_current_data = 00;
    OPJ_UINT32 l_tile_size = 0;
    OPJ_UINT32 l_available_data;


    assert(p_j2k->m_specific_param.m_encoder.m_encoded_tile_data);

    l_tile_size = p_j2k->m_specific_param.m_encoder.m_encoded_tile_size;
    l_available_data = l_tile_size;
    l_current_data = p_j2k->m_specific_param.m_encoder.m_encoded_tile_data;

    l_nb_bytes_written = 0;
    if (! opj_j2k_write_first_tile_part(p_j2k, l_current_data, &l_nb_bytes_written,
                                        l_available_data, p_stream, p_manager)) {
        return OPJ_FALSE;
    }
    l_current_data += l_nb_bytes_written;
    l_available_data -= l_nb_bytes_written;

    l_nb_bytes_written = 0;
    if (! opj_j2k_write_all_tile_parts(p_j2k, l_current_data, &l_nb_bytes_written,
                                       l_available_data, p_stream, p_manager)) {
        return OPJ_FALSE;
    }

    l_available_data -= l_nb_bytes_written;
    l_nb_bytes_written = l_tile_size - l_available_data;

    if (opj_stream_write_data(p_stream,
                              p_j2k->m_specific_param.m_encoder.m_encoded_tile_data,
                              l_nb_bytes_written, p_manager) != l_nb_bytes_written) {
        return OPJ_FALSE;
    }

    ++p_j2k->m_current_tile_number;

    return OPJ_TRUE;
}
