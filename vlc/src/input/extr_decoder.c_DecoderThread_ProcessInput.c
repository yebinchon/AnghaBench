
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ pf_get_cc; int fmt_out; int fmt_in; TYPE_2__* (* pf_packetize ) (TYPE_1__*,TYPE_2__**) ;} ;
struct decoder_owner {scalar_t__ error; TYPE_1__* p_packetizer; int * p_sout; int lock; int i_preroll_end; int reload; TYPE_1__ dec; } ;
typedef enum reload { ____Placeholder_reload } reload ;
typedef TYPE_1__ decoder_t ;
struct TYPE_16__ {scalar_t__ i_buffer; int i_flags; struct TYPE_16__* p_next; } ;
typedef TYPE_2__ block_t ;


 int BLOCK_FLAG_CORE_PRIVATE_RELOADED ;
 int DecoderThread_DecodeBlock (struct decoder_owner*,TYPE_2__*) ;
 int DecoderThread_ProcessSout (struct decoder_owner*,TYPE_2__*) ;
 scalar_t__ DecoderThread_Reload (struct decoder_owner*,int,int *,int) ;
 int DecoderUpdatePreroll (int *,TYPE_2__*) ;
 int PacketizerGetCc (struct decoder_owner*,TYPE_1__*) ;
 int RELOAD_DECODER ;
 int RELOAD_DECODER_AOUT ;
 int RELOAD_NO_REQUEST ;
 scalar_t__ VLC_SUCCESS ;
 int atomic_exchange (int *,int ) ;
 int block_ChainRelease (TYPE_2__*) ;
 int block_Release (TYPE_2__*) ;
 int es_format_IsSimilar (int *,int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Warn (TYPE_1__*,char*,char*) ;
 TYPE_2__* stub1 (TYPE_1__*,TYPE_2__**) ;
 scalar_t__ unlikely (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void DecoderThread_ProcessInput( struct decoder_owner *p_owner, block_t *p_block )
{
    decoder_t *p_dec = &p_owner->dec;

    if( p_owner->error )
        goto error;





    enum reload reload;
    if( ( reload = atomic_exchange( &p_owner->reload, RELOAD_NO_REQUEST ) ) )
    {
        msg_Warn( p_dec, "Reloading the decoder module%s",
                  reload == RELOAD_DECODER_AOUT ? " and the audio output" : "" );

        if( DecoderThread_Reload( p_owner, 0, &p_dec->fmt_in, reload ) != VLC_SUCCESS )
            goto error;
    }

    bool packetize = p_owner->p_packetizer != ((void*)0);
    if( p_block )
    {
        if( p_block->i_buffer <= 0 )
            goto error;

        vlc_mutex_lock( &p_owner->lock );
        DecoderUpdatePreroll( &p_owner->i_preroll_end, p_block );
        vlc_mutex_unlock( &p_owner->lock );
        if( unlikely( p_block->i_flags & BLOCK_FLAG_CORE_PRIVATE_RELOADED ) )
        {

            packetize = 0;
        }
    }
    if( packetize )
    {
        block_t *p_packetized_block;
        block_t **pp_block = p_block ? &p_block : ((void*)0);
        decoder_t *p_packetizer = p_owner->p_packetizer;

        while( (p_packetized_block =
                p_packetizer->pf_packetize( p_packetizer, pp_block ) ) )
        {
            if( !es_format_IsSimilar( &p_dec->fmt_in, &p_packetizer->fmt_out ) )
            {
                msg_Dbg( p_dec, "restarting module due to input format change");


                DecoderThread_DecodeBlock( p_owner, ((void*)0) );

                if( DecoderThread_Reload( p_owner, 0, &p_packetizer->fmt_out,
                                          RELOAD_DECODER ) != VLC_SUCCESS )
                {
                    block_ChainRelease( p_packetized_block );
                    return;
                }
            }

            if( p_packetizer->pf_get_cc )
                PacketizerGetCc( p_owner, p_packetizer );

            while( p_packetized_block )
            {
                block_t *p_next = p_packetized_block->p_next;
                p_packetized_block->p_next = ((void*)0);

                DecoderThread_DecodeBlock( p_owner, p_packetized_block );
                if( p_owner->error )
                {
                    block_ChainRelease( p_next );
                    return;
                }

                p_packetized_block = p_next;
            }
        }

        if( !pp_block )
            DecoderThread_DecodeBlock( p_owner, ((void*)0) );
    }
    else
        DecoderThread_DecodeBlock( p_owner, p_block );
    return;

error:
    if( p_block )
        block_Release( p_block );
}
