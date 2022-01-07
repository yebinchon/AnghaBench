
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct deinterlace_ctx {int ** pp_history; scalar_t__ i_frame_offset; TYPE_1__* meta; } ;
struct TYPE_2__ {int pi_nb_fields; int pb_top_field_first; int pi_date; } ;


 int HISTORY_SIZE ;
 int METADATA_SIZE ;
 int VLC_TICK_INVALID ;
 int picture_Release (int *) ;

void FlushDeinterlacing(struct deinterlace_ctx *p_context)
{
    p_context->meta[0].pi_date = VLC_TICK_INVALID;
    p_context->meta[0].pi_nb_fields = 2;
    p_context->meta[0].pb_top_field_first = 1;
    for( int i = 1; i < METADATA_SIZE; i++ )
        p_context->meta[i] = p_context->meta[i-1];

    p_context->i_frame_offset = 0;

    for( int i = 0; i < HISTORY_SIZE; i++ )
    {
        if( p_context->pp_history[i] )
            picture_Release( p_context->pp_history[i] );
        p_context->pp_history[i] = ((void*)0);
    }
}
