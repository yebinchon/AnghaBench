
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_status; scalar_t__ (* m_skip_fn ) (scalar_t__,int ) ;int m_byte_offset; int m_user_data; scalar_t__ m_bytes_in_buffer; } ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_OFF_T ;
typedef scalar_t__ OPJ_BOOL ;


 int EVT_INFO ;
 int OPJ_STREAM_STATUS_ERROR ;
 int opj_event_msg (int *,int ,char*) ;
 scalar_t__ opj_stream_flush (TYPE_1__*,int *) ;
 scalar_t__ stub1 (scalar_t__,int ) ;

OPJ_OFF_T opj_stream_write_skip(opj_stream_private_t * p_stream,
                                OPJ_OFF_T p_size, opj_event_mgr_t * p_event_mgr)
{
    OPJ_BOOL l_is_written = 0;
    OPJ_OFF_T l_current_skip_nb_bytes = 0;
    OPJ_OFF_T l_skip_nb_bytes = 0;

    if (p_stream->m_status & OPJ_STREAM_STATUS_ERROR) {
        return (OPJ_OFF_T) - 1;
    }


    l_is_written = opj_stream_flush(p_stream, p_event_mgr);
    if (! l_is_written) {
        p_stream->m_status |= OPJ_STREAM_STATUS_ERROR;
        p_stream->m_bytes_in_buffer = 0;
        return (OPJ_OFF_T) - 1;
    }


    while (p_size > 0) {

        l_current_skip_nb_bytes = p_stream->m_skip_fn(p_size, p_stream->m_user_data);

        if (l_current_skip_nb_bytes == (OPJ_OFF_T) - 1) {
            opj_event_msg(p_event_mgr, EVT_INFO, "Stream error!\n");

            p_stream->m_status |= OPJ_STREAM_STATUS_ERROR;
            p_stream->m_byte_offset += l_skip_nb_bytes;

            return l_skip_nb_bytes ? l_skip_nb_bytes : (OPJ_OFF_T) - 1;
        }
        p_size -= l_current_skip_nb_bytes;
        l_skip_nb_bytes += l_current_skip_nb_bytes;
    }

    p_stream->m_byte_offset += l_skip_nb_bytes;

    return l_skip_nb_bytes;
}
