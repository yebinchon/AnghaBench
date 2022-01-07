
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_10__ {int lock; } ;
struct TYPE_8__ {unsigned int i_visible_width; unsigned int i_visible_height; } ;
struct TYPE_9__ {TYPE_2__ video; } ;
struct TYPE_7__ {unsigned int i_visible_width; unsigned int i_visible_height; } ;
struct TYPE_11__ {TYPE_4__ fifo; TYPE_3__ decoder_out; TYPE_1__ fmt_input_video; } ;
typedef TYPE_5__ sout_stream_id_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int transcode_video_get_output_dimensions( sout_stream_t *p_stream, sout_stream_id_sys_t *id,
                                           unsigned *w, unsigned *h )
{
    VLC_UNUSED(p_stream);
    vlc_mutex_lock( &id->fifo.lock );
    *w = id->fmt_input_video.i_visible_width;
    *h = id->fmt_input_video.i_visible_height;
    if( !*w || !*h )
    {
        *w = id->decoder_out.video.i_visible_width;
        *h = id->decoder_out.video.i_visible_height;
    }
    vlc_mutex_unlock( &id->fifo.lock );
    return (*w && *h) ? VLC_SUCCESS : VLC_EGENERIC;
}
