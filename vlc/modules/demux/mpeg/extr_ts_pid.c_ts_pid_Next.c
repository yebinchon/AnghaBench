
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ts_pid_t ;
struct TYPE_5__ {scalar_t__ i_pos; } ;
typedef TYPE_1__ ts_pid_next_context_t ;
struct TYPE_6__ {scalar_t__ i_all; int ** pp_all; } ;
typedef TYPE_2__ ts_pid_list_t ;


 scalar_t__ likely (int) ;

ts_pid_t * ts_pid_Next( ts_pid_list_t *p_list, ts_pid_next_context_t *p_ctx )
{
    if( likely(p_list->i_all && p_ctx) )
    {
        if( p_ctx->i_pos < p_list->i_all )
            return p_list->pp_all[p_ctx->i_pos++];
    }
    return ((void*)0);
}
