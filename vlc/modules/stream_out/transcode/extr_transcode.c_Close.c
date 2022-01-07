
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_5__ {int lock; int senc_cfg; int afilters_cfg; int aenc_cfg; int vfilters_cfg; int venc_cfg; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int free (TYPE_2__*) ;
 int sout_filters_config_clean (int *) ;
 int transcode_encoder_config_clean (int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    transcode_encoder_config_clean( &p_sys->venc_cfg );
    sout_filters_config_clean( &p_sys->vfilters_cfg );

    transcode_encoder_config_clean( &p_sys->aenc_cfg );
    sout_filters_config_clean( &p_sys->afilters_cfg );

    transcode_encoder_config_clean( &p_sys->senc_cfg );

    vlc_mutex_destroy( &p_sys->lock );

    free( p_sys );
}
