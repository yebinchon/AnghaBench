
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_spu_highlight_t ;
struct decoder_owner {int lock; int p_vout; scalar_t__ p_sout_input; } ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
struct TYPE_6__ {TYPE_1__ fmt_in; } ;
typedef TYPE_2__ decoder_t ;


 int SOUT_INPUT_SET_SPU_HIGHLIGHT ;
 scalar_t__ SPU_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 struct decoder_owner* dec_get_owner (TYPE_2__*) ;
 int sout_InputControl (scalar_t__,int ,int const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SetSpuHighlight (int ,int const*) ;

int input_DecoderSetSpuHighlight( decoder_t *dec,
                                  const vlc_spu_highlight_t *spu_hl )
{
    struct decoder_owner *p_owner = dec_get_owner( dec );
    assert( dec->fmt_in.i_cat == SPU_ES );






    vlc_mutex_lock( &p_owner->lock );
    if( !p_owner->p_vout )
    {
        vlc_mutex_unlock( &p_owner->lock );
        return VLC_EGENERIC;
    }

    vout_SetSpuHighlight( p_owner->p_vout, spu_hl );

    vlc_mutex_unlock( &p_owner->lock );
    return VLC_SUCCESS;
}
