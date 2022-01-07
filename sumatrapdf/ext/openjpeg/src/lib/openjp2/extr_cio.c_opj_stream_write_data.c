
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_status; scalar_t__ m_buffer_size; scalar_t__ m_bytes_in_buffer; int m_byte_offset; int m_stored_data; int m_current_data; } ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_SIZE_T ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int OPJ_BYTE ;


 int OPJ_STREAM_STATUS_ERROR ;
 int memcpy (int ,int const*,scalar_t__) ;
 int opj_stream_flush (TYPE_1__*,int *) ;

OPJ_SIZE_T opj_stream_write_data(opj_stream_private_t * p_stream,
                                 const OPJ_BYTE * p_buffer,
                                 OPJ_SIZE_T p_size,
                                 opj_event_mgr_t * p_event_mgr)
{
    OPJ_SIZE_T l_remaining_bytes = 0;
    OPJ_SIZE_T l_write_nb_bytes = 0;

    if (p_stream->m_status & OPJ_STREAM_STATUS_ERROR) {
        return (OPJ_SIZE_T) - 1;
    }

    for (;;) {
        l_remaining_bytes = p_stream->m_buffer_size - p_stream->m_bytes_in_buffer;


        if (l_remaining_bytes >= p_size) {
            memcpy(p_stream->m_current_data, p_buffer, p_size);

            p_stream->m_current_data += p_size;
            p_stream->m_bytes_in_buffer += p_size;
            l_write_nb_bytes += p_size;
            p_stream->m_byte_offset += (OPJ_OFF_T)p_size;

            return l_write_nb_bytes;
        }


        if (l_remaining_bytes) {
            l_write_nb_bytes += l_remaining_bytes;

            memcpy(p_stream->m_current_data, p_buffer, l_remaining_bytes);

            p_stream->m_current_data = p_stream->m_stored_data;

            p_buffer += l_remaining_bytes;
            p_size -= l_remaining_bytes;
            p_stream->m_bytes_in_buffer += l_remaining_bytes;
            p_stream->m_byte_offset += (OPJ_OFF_T)l_remaining_bytes;
        }

        if (! opj_stream_flush(p_stream, p_event_mgr)) {
            return (OPJ_SIZE_T) - 1;
        }
    }

}
