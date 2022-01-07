
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_buffer_size; int * pf_window_table; } ;
typedef TYPE_1__ window_context ;


 int free (int *) ;

void window_close( window_context * p_ctx )
{
    if( p_ctx->pf_window_table )
    {
        free( p_ctx->pf_window_table );
        p_ctx->pf_window_table = ((void*)0);
        p_ctx->i_buffer_size = 0;
    }
}
