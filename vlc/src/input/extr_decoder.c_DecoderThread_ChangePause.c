
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {int i_cat; } ;
struct TYPE_5__ {TYPE_1__ fmt_out; } ;
struct decoder_owner {int lock; int * p_aout; int * p_vout; TYPE_2__ dec; } ;
typedef TYPE_2__ decoder_t ;





 int aout_DecChangePause (int *,int,int ) ;
 int msg_Dbg (TYPE_2__*,char*,char*) ;
 int vlc_assert_unreachable () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_ChangePause (int *,int,int ) ;

__attribute__((used)) static void DecoderThread_ChangePause( struct decoder_owner *p_owner, bool paused, vlc_tick_t date )
{
    decoder_t *p_dec = &p_owner->dec;

    msg_Dbg( p_dec, "toggling %s", paused ? "resume" : "pause" );
    switch( p_dec->fmt_out.i_cat )
    {
        case 128:
            vlc_mutex_lock( &p_owner->lock );
            if( p_owner->p_vout != ((void*)0) )
                vout_ChangePause( p_owner->p_vout, paused, date );
            vlc_mutex_unlock( &p_owner->lock );
            break;
        case 130:
            vlc_mutex_lock( &p_owner->lock );
            if( p_owner->p_aout != ((void*)0) )
                aout_DecChangePause( p_owner->p_aout, paused, date );
            vlc_mutex_unlock( &p_owner->lock );
            break;
        case 129:
            break;
        default:
            vlc_assert_unreachable();
    }
}
