
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double f_width; double anchor_y; int i_lines_max_scroll; double viewport_anchor_y; int b_scroll_up; int * p_child; int * p_cssstyle; scalar_t__ viewport_anchor_x; scalar_t__ anchor_x; int * p_next; int * psz_id; int type; } ;
typedef TYPE_1__ webvtt_region_t ;


 int NODE_REGION ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static webvtt_region_t * webvtt_region_New( void )
{
    webvtt_region_t *p_region = malloc(sizeof(*p_region));
    if( p_region )
    {
        p_region->type = NODE_REGION;
        p_region->psz_id = ((void*)0);
        p_region->p_next = ((void*)0);
        p_region->f_width = 1.0;
        p_region->anchor_x = 0;
        p_region->anchor_y = 1.0;
        p_region->i_lines_max_scroll = 3;
        p_region->viewport_anchor_x = 0;
        p_region->viewport_anchor_y = 1.0;
        p_region->b_scroll_up = 0;
        p_region->p_cssstyle = ((void*)0);
        p_region->p_child = ((void*)0);
    }
    return p_region;
}
