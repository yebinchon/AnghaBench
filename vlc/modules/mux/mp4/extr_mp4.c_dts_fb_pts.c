
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_3__ {scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef TYPE_1__ block_t ;


 scalar_t__ VLC_TICK_INVALID ;

__attribute__((used)) static inline vlc_tick_t dts_fb_pts( const block_t *p_data )
{
    return p_data->i_dts != VLC_TICK_INVALID ? p_data->i_dts: p_data->i_pts;
}
