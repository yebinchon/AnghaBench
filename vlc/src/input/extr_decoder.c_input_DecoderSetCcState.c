
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_20__ {int i_reorder_depth; } ;
struct TYPE_21__ {TYPE_6__** pp_decoder; TYPE_3__ desc; } ;
struct decoder_owner {int lock; TYPE_4__ cc; int p_clock; int p_sout; int p_resource; } ;
struct TYPE_18__ {int i_channel; int i_reorder_depth; } ;
struct TYPE_19__ {TYPE_1__ cc; } ;
struct TYPE_22__ {TYPE_2__ subs; } ;
typedef TYPE_5__ es_format_t ;
struct TYPE_23__ {int p_module; } ;
typedef TYPE_6__ decoder_t ;


 int DecoderUnsupportedCodec (TYPE_6__*,TYPE_5__*,int) ;
 int SPU_ES ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (TYPE_6__*) ;
 int VLC_SUCCESS ;
 int _ (char*) ;
 struct decoder_owner* dec_get_owner (TYPE_6__*) ;
 int es_format_Init (TYPE_5__*,int ,int ) ;
 int input_DecoderDelete (TYPE_6__*) ;
 int input_DecoderHasCCChanFlag (struct decoder_owner*,int ,int) ;
 TYPE_6__* input_DecoderNew (int ,TYPE_5__*,int ,int ,int ,int,int *,int *) ;
 int msg_Err (TYPE_6__*,char*) ;
 int vlc_dialog_display_error (TYPE_6__*,int ,char*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int input_DecoderSetCcState( decoder_t *p_dec, vlc_fourcc_t codec,
                             int i_channel, bool b_decode )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );



    if( !input_DecoderHasCCChanFlag( p_owner, codec, i_channel ) )
        return VLC_EGENERIC;

    if( b_decode )
    {
        decoder_t *p_cc;
        es_format_t fmt;

        es_format_Init( &fmt, SPU_ES, codec );
        fmt.subs.cc.i_channel = i_channel;
        fmt.subs.cc.i_reorder_depth = p_owner->cc.desc.i_reorder_depth;
        p_cc = input_DecoderNew( VLC_OBJECT(p_dec), &fmt, p_owner->p_clock,
                                 p_owner->p_resource, p_owner->p_sout, 0,
                                 ((void*)0), ((void*)0) );
        if( !p_cc )
        {
            msg_Err( p_dec, "could not create decoder" );
            vlc_dialog_display_error( p_dec,
                _("Streaming / Transcoding failed"), "%s",
                _("VLC could not open the decoder module.") );
            return VLC_EGENERIC;
        }
        else if( !p_cc->p_module )
        {
            DecoderUnsupportedCodec( p_dec, &fmt, 1 );
            input_DecoderDelete(p_cc);
            return VLC_EGENERIC;
        }
        struct decoder_owner *p_ccowner = dec_get_owner( p_cc );
        p_ccowner->p_clock = p_owner->p_clock;

        vlc_mutex_lock( &p_owner->lock );
        p_owner->cc.pp_decoder[i_channel] = p_cc;
        vlc_mutex_unlock( &p_owner->lock );
    }
    else
    {
        decoder_t *p_cc;

        vlc_mutex_lock( &p_owner->lock );
        p_cc = p_owner->cc.pp_decoder[i_channel];
        p_owner->cc.pp_decoder[i_channel] = ((void*)0);
        vlc_mutex_unlock( &p_owner->lock );

        if( p_cc )
            input_DecoderDelete(p_cc);
    }
    return VLC_SUCCESS;
}
