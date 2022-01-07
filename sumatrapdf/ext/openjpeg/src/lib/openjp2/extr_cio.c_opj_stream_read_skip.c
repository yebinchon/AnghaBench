
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ m_bytes_in_buffer; scalar_t__ m_byte_offset; int m_status; scalar_t__ m_user_data_length; scalar_t__ (* m_skip_fn ) (scalar_t__,int ) ;int m_user_data; int m_stored_data; int m_current_data; } ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_UINT64 ;
typedef scalar_t__ OPJ_SIZE_T ;
typedef scalar_t__ OPJ_OFF_T ;


 int EVT_INFO ;
 int OPJ_STREAM_STATUS_END ;
 int assert (int) ;
 int opj_event_msg (int *,int ,char*) ;
 int opj_stream_read_seek (TYPE_1__*,scalar_t__,int *) ;
 scalar_t__ stub1 (scalar_t__,int ) ;

OPJ_OFF_T opj_stream_read_skip(opj_stream_private_t * p_stream,
                               OPJ_OFF_T p_size, opj_event_mgr_t * p_event_mgr)
{
    OPJ_OFF_T l_skip_nb_bytes = 0;
    OPJ_OFF_T l_current_skip_nb_bytes = 0;

    assert(p_size >= 0);

    if (p_stream->m_bytes_in_buffer >= (OPJ_SIZE_T)p_size) {
        p_stream->m_current_data += p_size;


        p_stream->m_bytes_in_buffer -= (OPJ_SIZE_T)p_size;
        l_skip_nb_bytes += p_size;
        p_stream->m_byte_offset += l_skip_nb_bytes;
        return l_skip_nb_bytes;
    }


    if (p_stream->m_status & OPJ_STREAM_STATUS_END) {
        l_skip_nb_bytes += (OPJ_OFF_T)p_stream->m_bytes_in_buffer;
        p_stream->m_current_data += p_stream->m_bytes_in_buffer;
        p_stream->m_bytes_in_buffer = 0;
        p_stream->m_byte_offset += l_skip_nb_bytes;
        return l_skip_nb_bytes ? l_skip_nb_bytes : (OPJ_OFF_T) - 1;
    }


    if (p_stream->m_bytes_in_buffer) {
        l_skip_nb_bytes += (OPJ_OFF_T)p_stream->m_bytes_in_buffer;
        p_stream->m_current_data = p_stream->m_stored_data;
        p_size -= (OPJ_OFF_T)p_stream->m_bytes_in_buffer;
        p_stream->m_bytes_in_buffer = 0;
    }

    while (p_size > 0) {




        if ((OPJ_UINT64)(p_stream->m_byte_offset + l_skip_nb_bytes + p_size) >
                p_stream->m_user_data_length) {
            opj_event_msg(p_event_mgr, EVT_INFO, "Stream reached its end !\n");

            p_stream->m_byte_offset += l_skip_nb_bytes;
            l_skip_nb_bytes = (OPJ_OFF_T)(p_stream->m_user_data_length -
                                          (OPJ_UINT64)p_stream->m_byte_offset);

            opj_stream_read_seek(p_stream, (OPJ_OFF_T)p_stream->m_user_data_length,
                                 p_event_mgr);
            p_stream->m_status |= OPJ_STREAM_STATUS_END;


            return l_skip_nb_bytes ? l_skip_nb_bytes : (OPJ_OFF_T) - 1;
        }


        l_current_skip_nb_bytes = p_stream->m_skip_fn(p_size, p_stream->m_user_data);
        if (l_current_skip_nb_bytes == (OPJ_OFF_T) - 1) {
            opj_event_msg(p_event_mgr, EVT_INFO, "Stream reached its end !\n");

            p_stream->m_status |= OPJ_STREAM_STATUS_END;
            p_stream->m_byte_offset += l_skip_nb_bytes;

            return l_skip_nb_bytes ? l_skip_nb_bytes : (OPJ_OFF_T) - 1;
        }
        p_size -= l_current_skip_nb_bytes;
        l_skip_nb_bytes += l_current_skip_nb_bytes;
    }

    p_stream->m_byte_offset += l_skip_nb_bytes;

    return l_skip_nb_bytes;
}
