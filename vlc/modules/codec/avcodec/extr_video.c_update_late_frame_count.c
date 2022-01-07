
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int int64_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {int b_from_preroll; scalar_t__ i_last_late_delay; scalar_t__ i_late_frames; int i_last_output_frame; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_9__ {int i_flags; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_PREROLL ;
 scalar_t__ VLC_TICK_FROM_MS (int) ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ decoder_GetDisplayDate (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void update_late_frame_count( decoder_t *p_dec, block_t *p_block,
                                     vlc_tick_t current_time, vlc_tick_t i_pts,
                                     vlc_tick_t i_next_pts, int64_t i_fnum )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

   vlc_tick_t i_display_date = VLC_TICK_INVALID;
   if( !p_block || !(p_block->i_flags & BLOCK_FLAG_PREROLL) )
       i_display_date = decoder_GetDisplayDate( p_dec, current_time, i_pts );

   vlc_tick_t i_threshold = i_next_pts != VLC_TICK_INVALID
                          ? (i_next_pts - i_pts) / 2 : VLC_TICK_FROM_MS(20);

   if( i_display_date != VLC_TICK_INVALID && i_display_date + i_threshold <= current_time )
   {

       if( p_sys->b_from_preroll )
       {
           if( p_sys->i_last_late_delay > current_time - i_display_date )
           {
               p_sys->i_last_late_delay = current_time - i_display_date;
               return;
           }
           p_sys->b_from_preroll = 0;
       }

       p_sys->i_late_frames++;
   }
   else
   {
       p_sys->i_last_output_frame = i_fnum;
       p_sys->i_late_frames = 0;
   }
}
