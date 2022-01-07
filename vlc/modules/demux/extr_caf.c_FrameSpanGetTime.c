
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int uint32_t ;
struct TYPE_3__ {int i_samples; } ;
typedef TYPE_1__ frame_span_t ;


 scalar_t__ VLC_TICK_0 ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ vlc_tick_from_samples (int ,int ) ;

__attribute__((used)) static inline vlc_tick_t FrameSpanGetTime( frame_span_t *span, uint32_t i_sample_rate )
{
    if( !i_sample_rate )
        return VLC_TICK_INVALID;

    return vlc_tick_from_samples( span->i_samples, i_sample_rate) + VLC_TICK_0;
}
