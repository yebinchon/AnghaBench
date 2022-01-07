
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_9__ {scalar_t__ p_sout_input; } ;
struct decoder_owner {int vout_thread_started; int dec; int mouse_lock; int lock; int wait_request; int wait_acknowledge; int wait_fifo; int * p_packetizer; scalar_t__ p_description; int fmt; int * p_vout; int i_spu_channel; int p_resource; int * out_pool; int p_aout; TYPE_2__ cc; scalar_t__ p_sout_input; int p_fifo; scalar_t__ vctx; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_8__ {int i_cat; int i_codec; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;







 int VOUT_SPU_CHANNEL_INVALID ;
 int aout_DecDelete (int ) ;
 int assert (int) ;
 int block_FifoRelease (int ) ;
 struct decoder_owner* dec_get_owner (TYPE_3__*) ;
 int decoder_Clean (TYPE_3__*) ;
 int decoder_Destroy (int *) ;
 int decoder_Notify (struct decoder_owner*,int ,int *) ;
 int es_format_Clean (int *) ;
 int input_resource_PutAout (int ,int ) ;
 int input_resource_PutVout (int ,int *) ;
 int msg_Dbg (TYPE_3__*,char*,char*) ;
 int on_vout_stopped ;
 int picture_pool_Cancel (int *,int) ;
 int picture_pool_Release (int *) ;
 int sout_InputDelete (scalar_t__) ;
 int vlc_assert_unreachable () ;
 int vlc_cond_destroy (int *) ;
 int vlc_meta_Delete (scalar_t__) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_video_context_Release (scalar_t__) ;
 int vout_Release (int *) ;
 int vout_StopDisplay (int *) ;
 int vout_UnregisterSubpictureChannel (int *,int ) ;

__attribute__((used)) static void DeleteDecoder( decoder_t * p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    msg_Dbg( p_dec, "killing decoder fourcc `%4.4s'",
             (char*)&p_dec->fmt_in.i_codec );

    const enum es_format_category_e i_cat =p_dec->fmt_in.i_cat;
    if ( p_owner->out_pool )
    {
        picture_pool_Release( p_owner->out_pool );
        p_owner->out_pool = ((void*)0);
    }
    decoder_Clean( p_dec );

    if (p_owner->vctx)
        vlc_video_context_Release( p_owner->vctx );


    block_FifoRelease( p_owner->p_fifo );
    switch( i_cat )
    {
        case 132:
            if( p_owner->p_aout )
            {

                aout_DecDelete( p_owner->p_aout );
                input_resource_PutAout( p_owner->p_resource, p_owner->p_aout );
            }
            break;
        case 128: {
            vout_thread_t *vout = p_owner->p_vout;

            if (vout != ((void*)0) && p_owner->vout_thread_started)
            {


                if (p_owner->out_pool)
                    picture_pool_Cancel( p_owner->out_pool, 0 );
                vout_StopDisplay(vout);
                p_owner->vout_thread_started = 0;
                decoder_Notify(p_owner, on_vout_stopped, vout);
                input_resource_PutVout(p_owner->p_resource, vout);
            }
            break;
        }
        case 130:
        {
            if( p_owner->p_vout )
            {
                assert( p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID );
                decoder_Notify(p_owner, on_vout_stopped, p_owner->p_vout);

                vout_UnregisterSubpictureChannel( p_owner->p_vout,
                                                  p_owner->i_spu_channel );
                vout_Release(p_owner->p_vout);
                p_owner->vout_thread_started = 0;
            }
            break;
        }
        case 131:
        case 129:
            break;
        default:
            vlc_assert_unreachable();
    }

    es_format_Clean( &p_owner->fmt );

    if( p_owner->p_description )
        vlc_meta_Delete( p_owner->p_description );

    decoder_Destroy( p_owner->p_packetizer );

    vlc_cond_destroy( &p_owner->wait_fifo );
    vlc_cond_destroy( &p_owner->wait_acknowledge );
    vlc_cond_destroy( &p_owner->wait_request );
    vlc_mutex_destroy( &p_owner->lock );
    vlc_mutex_destroy( &p_owner->mouse_lock );

    decoder_Destroy( &p_owner->dec );
}
