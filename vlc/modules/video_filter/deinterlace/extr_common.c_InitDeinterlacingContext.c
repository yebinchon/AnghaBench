
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_double_rate; int b_half_height; int b_use_frame_history; int b_custom_pts; } ;
struct deinterlace_ctx {int ** pp_history; scalar_t__ i_frame_offset; TYPE_2__* meta; TYPE_1__ settings; } ;
struct TYPE_4__ {int pi_nb_fields; int pb_top_field_first; int pi_date; } ;


 int HISTORY_SIZE ;
 int METADATA_SIZE ;
 int VLC_TICK_INVALID ;

void InitDeinterlacingContext( struct deinterlace_ctx *p_context )
{
    p_context->settings.b_double_rate = 0;
    p_context->settings.b_half_height = 0;
    p_context->settings.b_use_frame_history = 0;
    p_context->settings.b_custom_pts = 0;

    p_context->meta[0].pi_date = VLC_TICK_INVALID;
    p_context->meta[0].pi_nb_fields = 2;
    p_context->meta[0].pb_top_field_first = 1;
    for( int i = 1; i < METADATA_SIZE; i++ )
        p_context->meta[i] = p_context->meta[i-1];

    p_context->i_frame_offset = 0;

    for( int i = 0; i < HISTORY_SIZE; i++ )
        p_context->pp_history[i] = ((void*)0);
}
