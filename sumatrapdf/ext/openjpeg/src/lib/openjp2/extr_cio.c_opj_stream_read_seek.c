
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_byte_offset; int m_status; int m_user_data; int (* m_seek_fn ) (int ,int ) ;scalar_t__ m_bytes_in_buffer; int m_stored_data; int m_current_data; } ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef int OPJ_OFF_T ;
typedef int OPJ_BOOL ;


 int OPJ_ARG_NOT_USED (int *) ;
 int OPJ_FALSE ;
 int OPJ_STREAM_STATUS_END ;
 int OPJ_TRUE ;
 int stub1 (int ,int ) ;

OPJ_BOOL opj_stream_read_seek(opj_stream_private_t * p_stream, OPJ_OFF_T p_size,
                              opj_event_mgr_t * p_event_mgr)
{
    OPJ_ARG_NOT_USED(p_event_mgr);
    p_stream->m_current_data = p_stream->m_stored_data;
    p_stream->m_bytes_in_buffer = 0;

    if (!(p_stream->m_seek_fn(p_size, p_stream->m_user_data))) {
        p_stream->m_status |= OPJ_STREAM_STATUS_END;
        return OPJ_FALSE;
    } else {

        p_stream->m_status &= (~OPJ_STREAM_STATUS_END);
        p_stream->m_byte_offset = p_size;

    }

    return OPJ_TRUE;
}
