
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int es_out_t ;
struct TYPE_3__ {scalar_t__ i_scr; int tk; } ;
typedef TYPE_1__ demux_sys_t ;


 int NotifyDiscontinuity (int ,int *) ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ llabs (scalar_t__) ;

__attribute__((used)) static void CheckPCR( demux_sys_t *p_sys, es_out_t *out, vlc_tick_t i_scr )
{
    if( p_sys->i_scr != VLC_TICK_INVALID &&
        llabs( p_sys->i_scr - i_scr ) > VLC_TICK_FROM_SEC(1) )
        NotifyDiscontinuity( p_sys->tk, out );
}
