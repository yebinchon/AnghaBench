
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct decoder_owner {float output_rate; int p_clock; int lock; scalar_t__ paused; scalar_t__ b_waiting; } ;
typedef int decoder_t ;


 int VLC_TICK_INVALID ;
 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_clock_ConvertToSystem (int ,int ,int ,float) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static vlc_tick_t ModuleThread_GetDisplayDate( decoder_t *p_dec,
                                       vlc_tick_t system_now, vlc_tick_t i_ts )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    vlc_mutex_lock( &p_owner->lock );
    if( p_owner->b_waiting || p_owner->paused )
        i_ts = VLC_TICK_INVALID;
    float rate = p_owner->output_rate;
    vlc_mutex_unlock( &p_owner->lock );

    if( !p_owner->p_clock || i_ts == VLC_TICK_INVALID )
        return i_ts;

    return vlc_clock_ConvertToSystem( p_owner->p_clock, system_now, i_ts, rate );
}
