
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__** pp_decoder; scalar_t__ b_supported; } ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_9__ {TYPE_2__ fmt_out; int (* pf_flush ) (TYPE_3__*) ;} ;
struct decoder_owner {scalar_t__ i_spu_channel; int lock; int i_preroll_end; scalar_t__ p_vout; scalar_t__ p_aout; int * p_sout_input; TYPE_1__ cc; scalar_t__ error; TYPE_3__* p_packetizer; TYPE_3__ dec; } ;
typedef TYPE_3__ decoder_t ;


 scalar_t__ AUDIO_ES ;
 int MAX_CC_DECODERS ;
 int PREROLL_NONE ;
 scalar_t__ SPU_ES ;
 scalar_t__ VIDEO_ES ;
 scalar_t__ VOUT_SPU_CHANNEL_INVALID ;
 int aout_DecFlush (scalar_t__) ;
 int assert (int) ;
 int sout_InputFlush (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_FlushAll (scalar_t__) ;
 int vout_FlushSubpictureChannel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void DecoderThread_Flush( struct decoder_owner *p_owner )
{
    decoder_t *p_dec = &p_owner->dec;
    decoder_t *p_packetizer = p_owner->p_packetizer;

    if( p_owner->error )
        return;

    if( p_packetizer != ((void*)0) && p_packetizer->pf_flush != ((void*)0) )
        p_packetizer->pf_flush( p_packetizer );

    if ( p_dec->pf_flush != ((void*)0) )
        p_dec->pf_flush( p_dec );


    if( p_owner->cc.b_supported )
    {
        for( int i=0; i<MAX_CC_DECODERS; i++ )
        {
            decoder_t *p_subdec = p_owner->cc.pp_decoder[i];
            if( p_subdec && p_subdec->pf_flush )
                p_subdec->pf_flush( p_subdec );
        }
    }

    vlc_mutex_lock( &p_owner->lock );






    if( p_dec->fmt_out.i_cat == AUDIO_ES )
    {
        if( p_owner->p_aout )
            aout_DecFlush( p_owner->p_aout );
    }
    else if( p_dec->fmt_out.i_cat == VIDEO_ES )
    {
        if( p_owner->p_vout )
            vout_FlushAll( p_owner->p_vout );
    }
    else if( p_dec->fmt_out.i_cat == SPU_ES )
    {
        if( p_owner->p_vout )
        {
            assert( p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID );
            vout_FlushSubpictureChannel( p_owner->p_vout, p_owner->i_spu_channel );
        }
    }

    p_owner->i_preroll_end = PREROLL_NONE;
    vlc_mutex_unlock( &p_owner->lock );
}
