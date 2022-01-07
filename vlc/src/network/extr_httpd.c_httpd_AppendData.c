
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_buffer_pos; int i_buffer_size; int * p_buffer; } ;
typedef TYPE_1__ httpd_stream_t ;


 int __MIN (int,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void httpd_AppendData(httpd_stream_t *stream, uint8_t *p_data, int i_data)
{
    int i_pos = stream->i_buffer_pos % stream->i_buffer_size;
    int i_count = i_data;
    while (i_count > 0) {
        int i_copy = __MIN(i_count, stream->i_buffer_size - i_pos);


        memcpy(&stream->p_buffer[i_pos], p_data, i_copy);

        i_pos = (i_pos + i_copy) % stream->i_buffer_size;
        i_count -= i_copy;
        p_data += i_copy;
    }

    stream->i_buffer_pos += i_data;
}
