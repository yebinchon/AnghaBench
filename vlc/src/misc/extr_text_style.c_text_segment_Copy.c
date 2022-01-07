
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_next; int p_ruby; int style; int psz_text; } ;
typedef TYPE_1__ text_segment_t ;


 TYPE_1__* text_segment_New (int ) ;
 int text_segment_ruby_Duplicate (int ) ;
 int text_style_Duplicate (int ) ;
 scalar_t__ unlikely (int) ;

text_segment_t *text_segment_Copy( text_segment_t *p_src )
{
    text_segment_t *p_dst = ((void*)0), *p_dst0 = ((void*)0);

    while( p_src ) {
        text_segment_t *p_new = text_segment_New( p_src->psz_text );

        if( unlikely( !p_new ) )
            break;

        p_new->style = text_style_Duplicate( p_src->style );
        p_new->p_ruby = text_segment_ruby_Duplicate( p_src->p_ruby );

        if( p_dst == ((void*)0) )
        {
            p_dst = p_dst0 = p_new;
        }
        else
        {
            p_dst->p_next = p_new;
            p_dst = p_dst->p_next;
        }

        p_src = p_src->p_next;
    }

    return p_dst0;
}
