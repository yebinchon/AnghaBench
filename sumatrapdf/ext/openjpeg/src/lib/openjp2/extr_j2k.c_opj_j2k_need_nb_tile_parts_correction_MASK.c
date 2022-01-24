#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  opj_stream_private_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
typedef  scalar_t__ OPJ_UINT32 ;
typedef  int OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EVT_ERROR ; 
 scalar_t__ J2K_MS_SOT ; 
 int /*<<< orphan*/  OPJ_FALSE ; 
 int /*<<< orphan*/  OPJ_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static OPJ_BOOL FUNC8(opj_stream_private_t
        *p_stream, OPJ_UINT32 tile_no, OPJ_BOOL* p_correction_needed,
        opj_event_mgr_t * p_manager)
{
    OPJ_BYTE   l_header_data[10];
    OPJ_OFF_T  l_stream_pos_backup;
    OPJ_UINT32 l_current_marker;
    OPJ_UINT32 l_marker_size;
    OPJ_UINT32 l_tile_no, l_tot_len, l_current_part, l_num_parts;

    /* initialize to no correction needed */
    *p_correction_needed = OPJ_FALSE;

    if (!FUNC3(p_stream)) {
        /* We can't do much in this case, seek is needed */
        return OPJ_TRUE;
    }

    l_stream_pos_backup = FUNC7(p_stream);
    if (l_stream_pos_backup == -1) {
        /* let's do nothing */
        return OPJ_TRUE;
    }

    for (;;) {
        /* Try to read 2 bytes (the next marker ID) from stream and copy them into the buffer */
        if (FUNC4(p_stream, l_header_data, 2, p_manager) != 2) {
            /* assume all is OK */
            if (! FUNC5(p_stream, l_stream_pos_backup, p_manager)) {
                return OPJ_FALSE;
            }
            return OPJ_TRUE;
        }

        /* Read 2 bytes from buffer as the new marker ID */
        FUNC2(l_header_data, &l_current_marker, 2);

        if (l_current_marker != J2K_MS_SOT) {
            /* assume all is OK */
            if (! FUNC5(p_stream, l_stream_pos_backup, p_manager)) {
                return OPJ_FALSE;
            }
            return OPJ_TRUE;
        }

        /* Try to read 2 bytes (the marker size) from stream and copy them into the buffer */
        if (FUNC4(p_stream, l_header_data, 2, p_manager) != 2) {
            FUNC0(p_manager, EVT_ERROR, "Stream too short\n");
            return OPJ_FALSE;
        }

        /* Read 2 bytes from the buffer as the marker size */
        FUNC2(l_header_data, &l_marker_size, 2);

        /* Check marker size for SOT Marker */
        if (l_marker_size != 10) {
            FUNC0(p_manager, EVT_ERROR, "Inconsistent marker size\n");
            return OPJ_FALSE;
        }
        l_marker_size -= 2;

        if (FUNC4(p_stream, l_header_data, l_marker_size,
                                 p_manager) != l_marker_size) {
            FUNC0(p_manager, EVT_ERROR, "Stream too short\n");
            return OPJ_FALSE;
        }

        if (! FUNC1(l_header_data, l_marker_size, &l_tile_no,
                                     &l_tot_len, &l_current_part, &l_num_parts, p_manager)) {
            return OPJ_FALSE;
        }

        if (l_tile_no == tile_no) {
            /* we found what we were looking for */
            break;
        }

        if (l_tot_len < 14U) {
            /* last SOT until EOC or invalid Psot value */
            /* assume all is OK */
            if (! FUNC5(p_stream, l_stream_pos_backup, p_manager)) {
                return OPJ_FALSE;
            }
            return OPJ_TRUE;
        }
        l_tot_len -= 12U;
        /* look for next SOT marker */
        if (FUNC6(p_stream, (OPJ_OFF_T)(l_tot_len),
                            p_manager) != (OPJ_OFF_T)(l_tot_len)) {
            /* assume all is OK */
            if (! FUNC5(p_stream, l_stream_pos_backup, p_manager)) {
                return OPJ_FALSE;
            }
            return OPJ_TRUE;
        }
    }

    /* check for correction */
    if (l_current_part == l_num_parts) {
        *p_correction_needed = OPJ_TRUE;
    }

    if (! FUNC5(p_stream, l_stream_pos_backup, p_manager)) {
        return OPJ_FALSE;
    }
    return OPJ_TRUE;
}