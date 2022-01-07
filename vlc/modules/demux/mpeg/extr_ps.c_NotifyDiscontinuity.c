
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_next_block_flags; scalar_t__ es; } ;
typedef TYPE_1__ ps_track_t ;
typedef int es_out_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int ES_OUT_GET_ES_STATE ;
 size_t PS_TK_COUNT ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ es_out_Control (int *,int ,scalar_t__,int*) ;

__attribute__((used)) static void NotifyDiscontinuity( ps_track_t *p_tk, es_out_t *out )
{
    bool b_selected;
    for( size_t i = 0; i < PS_TK_COUNT; i++ )
    {
        ps_track_t *tk = &p_tk[i];
        if( tk->es &&
                es_out_Control( out, ES_OUT_GET_ES_STATE, tk->es, &b_selected ) == VLC_SUCCESS
                && b_selected )
        {
            tk->i_next_block_flags |= BLOCK_FLAG_DISCONTINUITY;
        }
    }
}
