
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** pp_last_segment; } ;
typedef TYPE_1__ ttml_region_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_2__ text_segment_t ;


 TYPE_2__* text_segment_New (char*) ;

__attribute__((used)) static void AppendLineBreakToRegion( ttml_region_t *p_region )
{
    text_segment_t *p_segment = text_segment_New( "\n" );
    if( p_segment )
    {
        *p_region->pp_last_segment = p_segment;
        p_region->pp_last_segment = &p_segment->p_next;
    }
}
