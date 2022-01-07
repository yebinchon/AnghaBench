
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_buffer_size; int * pf_window_table; } ;
typedef TYPE_1__ window_context ;
typedef int int16_t ;



void window_scale_in_place( int16_t * p_buffer, window_context * p_ctx )
{
    for( int i = 0; i < p_ctx->i_buffer_size; i++ )
    {
        p_buffer[i] *= p_ctx->pf_window_table[i];
    }
}
