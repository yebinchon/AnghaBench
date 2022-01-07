
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {int save_level; TYPE_2__* saved_state; TYPE_2__ state; } ;
typedef TYPE_1__ enum_emh_data ;
typedef TYPE_2__ EMF_dc_state ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,int ) ;

__attribute__((used)) static void EMF_SaveDC( enum_emh_data *info )
{
    EMF_dc_state *state = HeapAlloc( GetProcessHeap(), 0, sizeof(*state));
    if (state)
    {
        *state = info->state;
        state->next = info->saved_state;
        info->saved_state = state;
        info->save_level++;
        TRACE("save_level %d\n", info->save_level);
    }
}
