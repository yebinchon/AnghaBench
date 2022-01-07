
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int i_pid; } ;
struct TYPE_5__ {int i_pid; int i_flags; } ;
struct TYPE_7__ {int * p_last; scalar_t__ i_last_pid; scalar_t__ i_all_alloc; scalar_t__ i_all; int * pp_all; TYPE_2__ base_si; TYPE_1__ dummy; } ;
typedef TYPE_3__ ts_pid_list_t ;


 int FLAG_SEEN ;

void ts_pid_list_Init( ts_pid_list_t *p_list )
{
    p_list->dummy.i_pid = 8191;
    p_list->dummy.i_flags = FLAG_SEEN;
    p_list->base_si.i_pid = 0x1FFB;
    p_list->pp_all = ((void*)0);
    p_list->i_all = 0;
    p_list->i_all_alloc = 0;
    p_list->i_last_pid = 0;
    p_list->p_last = ((void*)0);
}
