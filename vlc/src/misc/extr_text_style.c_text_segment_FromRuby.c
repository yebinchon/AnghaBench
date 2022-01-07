
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* psz_text; TYPE_2__* p_ruby; } ;
typedef TYPE_1__ text_segment_t ;
struct TYPE_7__ {int psz_base; struct TYPE_7__* p_next; } ;
typedef TYPE_2__ text_segment_ruby_t ;


 scalar_t__* malloc (size_t) ;
 int strcat (scalar_t__*,int ) ;
 scalar_t__ strlen (int ) ;
 TYPE_1__* text_segment_New (int *) ;

text_segment_t *text_segment_FromRuby( text_segment_ruby_t *p_ruby )
{
    text_segment_t *p_segment = text_segment_New( ((void*)0) );
    if( p_segment )
    {
        p_segment->p_ruby = p_ruby;
        size_t i_base = 1;
        for( text_segment_ruby_t *p = p_ruby; p; p = p->p_next )
            i_base += strlen( p->psz_base );
        p_segment->psz_text = malloc( i_base );

        if( p_segment->psz_text )
        {
            *p_segment->psz_text = 0;
            for( text_segment_ruby_t *p = p_ruby; p; p = p->p_next )
                strcat( p_segment->psz_text, p->psz_base );
        }
    }
    return p_segment;
}
