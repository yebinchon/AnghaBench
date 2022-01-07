
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct TYPE_18__ {int p_next; TYPE_3__* p_sys; } ;
typedef TYPE_2__ sout_stream_t ;
struct TYPE_19__ {int lock; TYPE_4__* id_video; TYPE_4__* id_master_sync; } ;
typedef TYPE_3__ sout_stream_sys_t ;
struct TYPE_20__ {scalar_t__ downstream_id; TYPE_11__* p_decoder; scalar_t__ b_transcode; } ;
typedef TYPE_4__ sout_stream_id_sys_t ;
struct TYPE_17__ {int i_cat; } ;
struct TYPE_16__ {TYPE_1__ fmt_in; } ;



 int DeleteSoutStreamID (TYPE_4__*) ;

 int Send (TYPE_2__*,TYPE_4__*,int *) ;
 int UNKNOWN_ES ;

 int decoder_Destroy (TYPE_11__*) ;
 int sout_StreamIdDel (int ,scalar_t__) ;
 int transcode_audio_clean (TYPE_2__*,TYPE_4__*) ;
 int transcode_spu_clean (TYPE_2__*,TYPE_4__*) ;
 int transcode_video_clean (TYPE_2__*,TYPE_4__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *_id )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    if( id->b_transcode )
    {
        int i_cat = id->p_decoder ? id->p_decoder->fmt_in.i_cat : UNKNOWN_ES;
        switch( i_cat )
        {
        case 130:
            Send( p_stream, id, ((void*)0) );
            decoder_Destroy( id->p_decoder );
            vlc_mutex_lock( &p_sys->lock );
            if( id == p_sys->id_master_sync )
                p_sys->id_master_sync = ((void*)0);
            vlc_mutex_unlock( &p_sys->lock );
            transcode_audio_clean( p_stream, id );
            break;
        case 128:
            Send( p_stream, id, ((void*)0) );
            decoder_Destroy( id->p_decoder );
            vlc_mutex_lock( &p_sys->lock );
            if( id == p_sys->id_video )
                p_sys->id_video = ((void*)0);
            vlc_mutex_unlock( &p_sys->lock );
            transcode_video_clean( p_stream, id );
            break;
        case 129:
            decoder_Destroy( id->p_decoder );
            transcode_spu_clean( p_stream, id );
            break;
        default:
            break;
        }
    }
    else decoder_Destroy( id->p_decoder );

    if( id->downstream_id ) sout_StreamIdDel( p_stream->p_next, id->downstream_id );

    DeleteSoutStreamID( id );
}
