
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_header; int lock; int * p_header; } ;
typedef TYPE_1__ httpd_stream_t ;


 int VLC_SUCCESS ;
 int free (int *) ;
 int memcpy (int *,int *,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int * xmalloc (int) ;

int httpd_StreamHeader(httpd_stream_t *stream, uint8_t *p_data, int i_data)
{
    vlc_mutex_lock(&stream->lock);
    free(stream->p_header);
    stream->p_header = ((void*)0);

    stream->i_header = i_data;
    if (i_data > 0) {
        stream->p_header = xmalloc(i_data);
        memcpy(stream->p_header, p_data, i_data);
    }
    vlc_mutex_unlock(&stream->lock);

    return VLC_SUCCESS;
}
