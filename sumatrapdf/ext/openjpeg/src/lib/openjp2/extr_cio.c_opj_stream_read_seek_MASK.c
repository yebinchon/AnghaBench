#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  m_byte_offset; int /*<<< orphan*/  m_status; int /*<<< orphan*/  m_user_data; int /*<<< orphan*/  (* m_seek_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ m_bytes_in_buffer; int /*<<< orphan*/  m_stored_data; int /*<<< orphan*/  m_current_data; } ;
typedef  TYPE_1__ opj_stream_private_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
typedef  int /*<<< orphan*/  OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPJ_FALSE ; 
 int /*<<< orphan*/  OPJ_STREAM_STATUS_END ; 
 int /*<<< orphan*/  OPJ_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

OPJ_BOOL FUNC2(opj_stream_private_t * p_stream, OPJ_OFF_T p_size,
                              opj_event_mgr_t * p_event_mgr)
{
    FUNC0(p_event_mgr);
    p_stream->m_current_data = p_stream->m_stored_data;
    p_stream->m_bytes_in_buffer = 0;

    if (!(p_stream->m_seek_fn(p_size, p_stream->m_user_data))) {
        p_stream->m_status |= OPJ_STREAM_STATUS_END;
        return OPJ_FALSE;
    } else {
        /* reset stream status */
        p_stream->m_status &= (~OPJ_STREAM_STATUS_END);
        p_stream->m_byte_offset = p_size;

    }

    return OPJ_TRUE;
}