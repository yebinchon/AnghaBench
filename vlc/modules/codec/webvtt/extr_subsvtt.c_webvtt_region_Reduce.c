
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* p_child; } ;
typedef TYPE_2__ webvtt_region_t ;
struct TYPE_9__ {int i_lines; TYPE_1__* p_next; } ;
typedef TYPE_3__ webvtt_dom_cue_t ;
struct TYPE_7__ {scalar_t__ type; } ;


 scalar_t__ NODE_CUE ;
 int assert (int) ;
 int webvtt_dom_cue_Delete (TYPE_3__*) ;
 int webvtt_dom_cue_Reduced (TYPE_3__*) ;

__attribute__((used)) static void webvtt_region_Reduce( webvtt_region_t *p_region )
{
    if( p_region->p_child )
    {
        assert( p_region->p_child->type == NODE_CUE );
        if( p_region->p_child->type != NODE_CUE )
            return;
        webvtt_dom_cue_t *p_cue = (webvtt_dom_cue_t *)p_region->p_child;
        if( p_cue->i_lines == 1 ||
            webvtt_dom_cue_Reduced( p_cue ) < 1 )
        {
            p_region->p_child = p_cue->p_next;
            p_cue->p_next = ((void*)0);
            webvtt_dom_cue_Delete( p_cue );
        }
    }
}
