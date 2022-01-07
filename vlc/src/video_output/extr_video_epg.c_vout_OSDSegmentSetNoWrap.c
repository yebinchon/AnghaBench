
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* style; struct TYPE_5__* p_next; } ;
typedef TYPE_2__ text_segment_t ;
struct TYPE_4__ {int i_features; int e_wrapinfo; } ;


 int STYLE_HAS_WRAP_INFO ;
 int STYLE_WRAP_NONE ;

__attribute__((used)) static void vout_OSDSegmentSetNoWrap(text_segment_t *p_segment)
{
    for( ; p_segment; p_segment = p_segment->p_next )
    {
        p_segment->style->e_wrapinfo = STYLE_WRAP_NONE;
        p_segment->style->i_features |= STYLE_HAS_WRAP_INFO;
    }
}
