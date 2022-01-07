
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ m_bytes_in_buffer; scalar_t__ (* m_write_fn ) (int ,scalar_t__,int ) ;int m_stored_data; int m_current_data; int m_status; int m_user_data; } ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_SIZE_T ;
typedef int OPJ_BOOL ;


 int EVT_INFO ;
 int OPJ_FALSE ;
 int OPJ_STREAM_STATUS_ERROR ;
 int OPJ_TRUE ;
 int opj_event_msg (int *,int ,char*) ;
 scalar_t__ stub1 (int ,scalar_t__,int ) ;

OPJ_BOOL opj_stream_flush(opj_stream_private_t * p_stream,
                          opj_event_mgr_t * p_event_mgr)
{

    OPJ_SIZE_T l_current_write_nb_bytes = 0;

    p_stream->m_current_data = p_stream->m_stored_data;

    while (p_stream->m_bytes_in_buffer) {

        l_current_write_nb_bytes = p_stream->m_write_fn(p_stream->m_current_data,
                                   p_stream->m_bytes_in_buffer,
                                   p_stream->m_user_data);

        if (l_current_write_nb_bytes == (OPJ_SIZE_T) - 1) {
            p_stream->m_status |= OPJ_STREAM_STATUS_ERROR;
            opj_event_msg(p_event_mgr, EVT_INFO, "Error on writing stream!\n");

            return OPJ_FALSE;
        }

        p_stream->m_current_data += l_current_write_nb_bytes;
        p_stream->m_bytes_in_buffer -= l_current_write_nb_bytes;
    }

    p_stream->m_current_data = p_stream->m_stored_data;

    return OPJ_TRUE;
}
