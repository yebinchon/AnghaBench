
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_cat; } ;
struct TYPE_5__ {TYPE_1__ fmt_out; } ;
struct decoder_owner {float output_rate; int lock; int i_spu_channel; int * p_vout; int * p_aout; TYPE_2__ dec; } ;
typedef TYPE_2__ decoder_t ;





 int VOUT_SPU_CHANNEL_INVALID ;
 int aout_DecChangeRate (int *,float) ;
 int assert (int) ;
 int msg_Dbg (TYPE_2__*,char*,float) ;
 int vlc_assert_unreachable () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_ChangeRate (int *,float) ;
 int vout_ChangeSpuRate (int *,int ,float) ;

__attribute__((used)) static void DecoderThread_ChangeRate( struct decoder_owner *p_owner, float rate )
{
    decoder_t *p_dec = &p_owner->dec;

    msg_Dbg( p_dec, "changing rate: %f", rate );
    vlc_mutex_lock( &p_owner->lock );
    switch( p_dec->fmt_out.i_cat )
    {
        case 128:
            if( p_owner->p_vout != ((void*)0) )
                vout_ChangeRate( p_owner->p_vout, rate );
            break;
        case 130:
            if( p_owner->p_aout != ((void*)0) )
                aout_DecChangeRate( p_owner->p_aout, rate );
            break;
        case 129:
            if( p_owner->p_vout != ((void*)0) )
            {
                assert(p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID);
                vout_ChangeSpuRate(p_owner->p_vout, p_owner->i_spu_channel,
                                   rate );
            }
            break;
        default:
            vlc_assert_unreachable();
    }
    p_owner->output_rate = rate;
    vlc_mutex_unlock( &p_owner->lock );
}
