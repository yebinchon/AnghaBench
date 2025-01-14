
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_tcp_t ;
typedef int opj_tcd_tile_t ;
typedef int opj_t2_t ;
typedef int opj_pi_iterator_t ;
typedef int opj_packet_info_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_BYTE ;
typedef scalar_t__ OPJ_BOOL ;


 scalar_t__ OPJ_FALSE ;
 scalar_t__ OPJ_TRUE ;
 int opj_t2_read_packet_data (int *,int *,int *,int *,scalar_t__*,scalar_t__,int *,int *) ;
 int opj_t2_read_packet_header (int *,int *,int *,int *,scalar_t__*,int *,scalar_t__*,scalar_t__,int *,int *) ;

__attribute__((used)) static OPJ_BOOL opj_t2_decode_packet(opj_t2_t* p_t2,
                                     opj_tcd_tile_t *p_tile,
                                     opj_tcp_t *p_tcp,
                                     opj_pi_iterator_t *p_pi,
                                     OPJ_BYTE *p_src,
                                     OPJ_UINT32 * p_data_read,
                                     OPJ_UINT32 p_max_length,
                                     opj_packet_info_t *p_pack_info,
                                     opj_event_mgr_t *p_manager)
{
    OPJ_BOOL l_read_data;
    OPJ_UINT32 l_nb_bytes_read = 0;
    OPJ_UINT32 l_nb_total_bytes_read = 0;

    *p_data_read = 0;

    if (! opj_t2_read_packet_header(p_t2, p_tile, p_tcp, p_pi, &l_read_data, p_src,
                                    &l_nb_bytes_read, p_max_length, p_pack_info, p_manager)) {
        return OPJ_FALSE;
    }

    p_src += l_nb_bytes_read;
    l_nb_total_bytes_read += l_nb_bytes_read;
    p_max_length -= l_nb_bytes_read;


    if (l_read_data) {
        l_nb_bytes_read = 0;

        if (! opj_t2_read_packet_data(p_t2, p_tile, p_pi, p_src, &l_nb_bytes_read,
                                      p_max_length, p_pack_info, p_manager)) {
            return OPJ_FALSE;
        }

        l_nb_total_bytes_read += l_nb_bytes_read;
    }

    *p_data_read = l_nb_total_bytes_read;

    return OPJ_TRUE;
}
