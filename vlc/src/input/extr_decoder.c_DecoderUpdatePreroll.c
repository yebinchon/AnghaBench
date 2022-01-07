
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int i_flags; scalar_t__ i_buffer; scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int BLOCK_FLAG_PREROLL ;
 int PREROLL_FORCED ;
 scalar_t__ VLC_TICK_INVALID ;
 int __MIN (int ,scalar_t__) ;

__attribute__((used)) static inline void DecoderUpdatePreroll( vlc_tick_t *pi_preroll, const block_t *p )
{
    if( p->i_flags & BLOCK_FLAG_PREROLL )
        *pi_preroll = PREROLL_FORCED;

    else if( (p->i_flags & BLOCK_FLAG_DISCONTINUITY) &&
             (p->i_buffer == 0 || (p->i_flags & BLOCK_FLAG_CORRUPTED)) )
        *pi_preroll = PREROLL_FORCED;
    else if( p->i_dts != VLC_TICK_INVALID )
        *pi_preroll = __MIN( *pi_preroll, p->i_dts );
    else if( p->i_pts != VLC_TICK_INVALID )
        *pi_preroll = __MIN( *pi_preroll, p->i_pts );
}
