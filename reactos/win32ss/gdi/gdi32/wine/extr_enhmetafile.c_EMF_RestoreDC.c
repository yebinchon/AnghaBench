
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {scalar_t__ save_level; TYPE_2__ state; TYPE_2__* saved_state; } ;
typedef TYPE_1__ enum_emh_data ;
typedef scalar_t__ INT ;
typedef TYPE_2__ EMF_dc_state ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ abs (scalar_t__) ;

__attribute__((used)) static void EMF_RestoreDC( enum_emh_data *info, INT level )
{
    if (abs(level) > info->save_level || level == 0) return;

    if (level < 0) level = info->save_level + level + 1;

    while (info->save_level >= level)
    {
        EMF_dc_state *state = info->saved_state;
        info->saved_state = state->next;
        state->next = ((void*)0);
        if (--info->save_level < level)
            info->state = *state;
        HeapFree( GetProcessHeap(), 0, state );
    }
}
