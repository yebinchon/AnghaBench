
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ frames; scalar_t__ base; } ;
typedef TYPE_1__ tt_time_t ;


 int TT_FRAME_RATE ;
 scalar_t__ vlc_tick_from_sec (unsigned int) ;

__attribute__((used)) static inline tt_time_t tt_time_Sub( tt_time_t t1, tt_time_t t2 )
{
    if( t2.frames > t1.frames )
    {
        unsigned diff = 1 + (t2.frames - t1.frames) / TT_FRAME_RATE;
        t1.base -= vlc_tick_from_sec( diff );
        t1.frames += diff * TT_FRAME_RATE;
    }
    t1.frames -= t2.frames;
    t1.base -= t2.base;
    return t1;
}
