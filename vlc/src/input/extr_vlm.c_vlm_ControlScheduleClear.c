
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_schedule; int * schedule; } ;
typedef TYPE_1__ vlm_t ;


 int VLC_SUCCESS ;
 int vlm_ScheduleDelete (TYPE_1__*,int ) ;

__attribute__((used)) static int vlm_ControlScheduleClear( vlm_t *p_vlm )
{
    while( p_vlm->i_schedule > 0 )
        vlm_ScheduleDelete( p_vlm, p_vlm->schedule[0] );

    return VLC_SUCCESS;
}
