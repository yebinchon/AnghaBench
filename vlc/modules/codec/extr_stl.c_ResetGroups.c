
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_accumulating; scalar_t__ i_justify; void* i_start; void* i_end; int * p_style; int * p_segment; int ** pp_segment_last; } ;
typedef TYPE_1__ stl_sg_t ;
struct TYPE_5__ {TYPE_1__* groups; } ;
typedef TYPE_2__ decoder_sys_t ;


 size_t STL_GROUPS_MAX ;
 void* VLC_TICK_INVALID ;
 int text_segment_ChainDelete (int *) ;
 int text_style_Delete (int *) ;

__attribute__((used)) static void ResetGroups(decoder_sys_t *p_sys)
{
    for(size_t i=0; i<=STL_GROUPS_MAX; i++)
    {
        stl_sg_t *p_group = &p_sys->groups[i];
        if(p_group->p_segment)
        {
            text_segment_ChainDelete(p_group->p_segment);
            p_group->p_segment = ((void*)0);
            p_group->pp_segment_last = &p_group->p_segment;
        }

        if(p_group->p_style)
        {
            text_style_Delete(p_group->p_style);
            p_group->p_style = ((void*)0);
        }

        p_group->i_accumulating = 0;
        p_group->i_end = VLC_TICK_INVALID;
        p_group->i_start = VLC_TICK_INVALID;
        p_group->i_justify = 0;
    }
}
