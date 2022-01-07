
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_next; int psz_rt; int psz_base; } ;
typedef TYPE_1__ text_segment_ruby_t ;


 TYPE_1__* text_segment_ruby_New (int ,int ) ;

__attribute__((used)) static text_segment_ruby_t *text_segment_ruby_Duplicate( const text_segment_ruby_t *p_src )
{
    text_segment_ruby_t *p_dup = ((void*)0);
    text_segment_ruby_t **pp_append = &p_dup;
    for ( ; p_src ; p_src = p_src->p_next )
    {
        *pp_append = text_segment_ruby_New( p_src->psz_base, p_src->psz_rt );
        if( *pp_append )
            pp_append = &((*pp_append)->p_next);
    }
    return p_dup;
}
