
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_4__ {int frames; scalar_t__ base; } ;
typedef TYPE_1__ tt_time_t ;


 int TT_FRAME_RATE ;
 scalar_t__ VLC_TICK_INVALID ;
 int tt_time_Valid (TYPE_1__ const*) ;
 scalar_t__ vlc_tick_from_samples (int ,int ) ;

__attribute__((used)) static inline vlc_tick_t tt_time_Convert( const tt_time_t *t )
{
    if( !tt_time_Valid( t ) )
        return VLC_TICK_INVALID;
    else
        return t->base + vlc_tick_from_samples( t->frames, TT_FRAME_RATE);
}
