
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int pts; int cc; int framedrop; scalar_t__ i_late_frames; int * p_context; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int AVCodecContext ;


 int FRAMEDROP_NONE ;
 int VLC_TICK_INVALID ;
 int avcodec_flush_buffers (int *) ;
 scalar_t__ avcodec_is_open (int *) ;
 int cc_Flush (int *) ;
 int date_Set (int *,int ) ;
 int decoder_AbortPictures (TYPE_1__*,int) ;

__attribute__((used)) static void Flush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *p_context = p_sys->p_context;

    p_sys->i_late_frames = 0;
    p_sys->framedrop = FRAMEDROP_NONE;
    cc_Flush( &p_sys->cc );




    decoder_AbortPictures( p_dec, 1 );


    if( avcodec_is_open( p_context ) )
        avcodec_flush_buffers( p_context );

    date_Set(&p_sys->pts, VLC_TICK_INVALID);


    decoder_AbortPictures( p_dec, 0 );
}
