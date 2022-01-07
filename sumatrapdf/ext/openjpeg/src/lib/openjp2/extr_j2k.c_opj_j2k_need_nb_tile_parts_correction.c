
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_OFF_T ;
typedef int OPJ_BYTE ;
typedef int OPJ_BOOL ;


 int EVT_ERROR ;
 scalar_t__ J2K_MS_SOT ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_event_msg (int *,int ,char*) ;
 int opj_j2k_get_sot_values (int *,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int opj_read_bytes (int *,scalar_t__*,int) ;
 int opj_stream_has_seek (int *) ;
 scalar_t__ opj_stream_read_data (int *,int *,scalar_t__,int *) ;
 int opj_stream_seek (int *,int,int *) ;
 int opj_stream_skip (int *,int,int *) ;
 int opj_stream_tell (int *) ;

__attribute__((used)) static OPJ_BOOL opj_j2k_need_nb_tile_parts_correction(opj_stream_private_t
        *p_stream, OPJ_UINT32 tile_no, OPJ_BOOL* p_correction_needed,
        opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_header_data[10];
    OPJ_OFF_T l_stream_pos_backup;
    OPJ_UINT32 l_current_marker;
    OPJ_UINT32 l_marker_size;
    OPJ_UINT32 l_tile_no, l_tot_len, l_current_part, l_num_parts;


    *p_correction_needed = OPJ_FALSE;

    if (!opj_stream_has_seek(p_stream)) {

        return OPJ_TRUE;
    }

    l_stream_pos_backup = opj_stream_tell(p_stream);
    if (l_stream_pos_backup == -1) {

        return OPJ_TRUE;
    }

    for (;;) {

        if (opj_stream_read_data(p_stream, l_header_data, 2, p_manager) != 2) {

            if (! opj_stream_seek(p_stream, l_stream_pos_backup, p_manager)) {
                return OPJ_FALSE;
            }
            return OPJ_TRUE;
        }


        opj_read_bytes(l_header_data, &l_current_marker, 2);

        if (l_current_marker != J2K_MS_SOT) {

            if (! opj_stream_seek(p_stream, l_stream_pos_backup, p_manager)) {
                return OPJ_FALSE;
            }
            return OPJ_TRUE;
        }


        if (opj_stream_read_data(p_stream, l_header_data, 2, p_manager) != 2) {
            opj_event_msg(p_manager, EVT_ERROR, "Stream too short\n");
            return OPJ_FALSE;
        }


        opj_read_bytes(l_header_data, &l_marker_size, 2);


        if (l_marker_size != 10) {
            opj_event_msg(p_manager, EVT_ERROR, "Inconsistent marker size\n");
            return OPJ_FALSE;
        }
        l_marker_size -= 2;

        if (opj_stream_read_data(p_stream, l_header_data, l_marker_size,
                                 p_manager) != l_marker_size) {
            opj_event_msg(p_manager, EVT_ERROR, "Stream too short\n");
            return OPJ_FALSE;
        }

        if (! opj_j2k_get_sot_values(l_header_data, l_marker_size, &l_tile_no,
                                     &l_tot_len, &l_current_part, &l_num_parts, p_manager)) {
            return OPJ_FALSE;
        }

        if (l_tile_no == tile_no) {

            break;
        }

        if (l_tot_len < 14U) {


            if (! opj_stream_seek(p_stream, l_stream_pos_backup, p_manager)) {
                return OPJ_FALSE;
            }
            return OPJ_TRUE;
        }
        l_tot_len -= 12U;

        if (opj_stream_skip(p_stream, (OPJ_OFF_T)(l_tot_len),
                            p_manager) != (OPJ_OFF_T)(l_tot_len)) {

            if (! opj_stream_seek(p_stream, l_stream_pos_backup, p_manager)) {
                return OPJ_FALSE;
            }
            return OPJ_TRUE;
        }
    }


    if (l_current_part == l_num_parts) {
        *p_correction_needed = OPJ_TRUE;
    }

    if (! opj_stream_seek(p_stream, l_stream_pos_backup, p_manager)) {
        return OPJ_FALSE;
    }
    return OPJ_TRUE;
}
