
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ m_bytes_in_buffer; int m_status; scalar_t__ m_buffer_size; scalar_t__ (* m_read_fn ) (int *,scalar_t__,int ) ;int * m_stored_data; int * m_current_data; int m_byte_offset; int m_user_data; } ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_SIZE_T ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int OPJ_BYTE ;


 int EVT_INFO ;
 int OPJ_STREAM_STATUS_END ;
 int memcpy (int *,int *,scalar_t__) ;
 int opj_event_msg (int *,int ,char*) ;
 scalar_t__ stub1 (int *,scalar_t__,int ) ;
 scalar_t__ stub2 (int *,scalar_t__,int ) ;

OPJ_SIZE_T opj_stream_read_data(opj_stream_private_t * p_stream,
                                OPJ_BYTE * p_buffer, OPJ_SIZE_T p_size, opj_event_mgr_t * p_event_mgr)
{
    OPJ_SIZE_T l_read_nb_bytes = 0;
    if (p_stream->m_bytes_in_buffer >= p_size) {
        memcpy(p_buffer, p_stream->m_current_data, p_size);
        p_stream->m_current_data += p_size;
        p_stream->m_bytes_in_buffer -= p_size;
        l_read_nb_bytes += p_size;
        p_stream->m_byte_offset += (OPJ_OFF_T)p_size;
        return l_read_nb_bytes;
    }


    if (p_stream->m_status & OPJ_STREAM_STATUS_END) {
        l_read_nb_bytes += p_stream->m_bytes_in_buffer;
        memcpy(p_buffer, p_stream->m_current_data, p_stream->m_bytes_in_buffer);
        p_stream->m_current_data += p_stream->m_bytes_in_buffer;
        p_stream->m_byte_offset += (OPJ_OFF_T)p_stream->m_bytes_in_buffer;
        p_stream->m_bytes_in_buffer = 0;
        return l_read_nb_bytes ? l_read_nb_bytes : (OPJ_SIZE_T) - 1;
    }


    if (p_stream->m_bytes_in_buffer) {
        l_read_nb_bytes += p_stream->m_bytes_in_buffer;
        memcpy(p_buffer, p_stream->m_current_data, p_stream->m_bytes_in_buffer);
        p_stream->m_current_data = p_stream->m_stored_data;
        p_buffer += p_stream->m_bytes_in_buffer;
        p_size -= p_stream->m_bytes_in_buffer;
        p_stream->m_byte_offset += (OPJ_OFF_T)p_stream->m_bytes_in_buffer;
        p_stream->m_bytes_in_buffer = 0;
    } else {



        p_stream->m_current_data = p_stream->m_stored_data;
    }

    for (;;) {

        if (p_size < p_stream->m_buffer_size) {

            p_stream->m_bytes_in_buffer = p_stream->m_read_fn(p_stream->m_stored_data,
                                          p_stream->m_buffer_size, p_stream->m_user_data);

            if (p_stream->m_bytes_in_buffer == (OPJ_SIZE_T) - 1) {

                opj_event_msg(p_event_mgr, EVT_INFO, "Stream reached its end !\n");

                p_stream->m_bytes_in_buffer = 0;
                p_stream->m_status |= OPJ_STREAM_STATUS_END;

                return l_read_nb_bytes ? l_read_nb_bytes : (OPJ_SIZE_T) - 1;
            } else if (p_stream->m_bytes_in_buffer < p_size) {

                l_read_nb_bytes += p_stream->m_bytes_in_buffer;
                memcpy(p_buffer, p_stream->m_current_data, p_stream->m_bytes_in_buffer);
                p_stream->m_current_data = p_stream->m_stored_data;
                p_buffer += p_stream->m_bytes_in_buffer;
                p_size -= p_stream->m_bytes_in_buffer;
                p_stream->m_byte_offset += (OPJ_OFF_T)p_stream->m_bytes_in_buffer;
                p_stream->m_bytes_in_buffer = 0;
            } else {
                l_read_nb_bytes += p_size;
                memcpy(p_buffer, p_stream->m_current_data, p_size);
                p_stream->m_current_data += p_size;
                p_stream->m_bytes_in_buffer -= p_size;
                p_stream->m_byte_offset += (OPJ_OFF_T)p_size;
                return l_read_nb_bytes;
            }
        } else {

            p_stream->m_bytes_in_buffer = p_stream->m_read_fn(p_buffer, p_size,
                                          p_stream->m_user_data);

            if (p_stream->m_bytes_in_buffer == (OPJ_SIZE_T) - 1) {

                opj_event_msg(p_event_mgr, EVT_INFO, "Stream reached its end !\n");

                p_stream->m_bytes_in_buffer = 0;
                p_stream->m_status |= OPJ_STREAM_STATUS_END;

                return l_read_nb_bytes ? l_read_nb_bytes : (OPJ_SIZE_T) - 1;
            } else if (p_stream->m_bytes_in_buffer < p_size) {

                l_read_nb_bytes += p_stream->m_bytes_in_buffer;
                p_stream->m_current_data = p_stream->m_stored_data;
                p_buffer += p_stream->m_bytes_in_buffer;
                p_size -= p_stream->m_bytes_in_buffer;
                p_stream->m_byte_offset += (OPJ_OFF_T)p_stream->m_bytes_in_buffer;
                p_stream->m_bytes_in_buffer = 0;
            } else {

                l_read_nb_bytes += p_stream->m_bytes_in_buffer;
                p_stream->m_byte_offset += (OPJ_OFF_T)p_stream->m_bytes_in_buffer;
                p_stream->m_current_data = p_stream->m_stored_data;
                p_stream->m_bytes_in_buffer = 0;
                return l_read_nb_bytes;
            }
        }
    }
}
