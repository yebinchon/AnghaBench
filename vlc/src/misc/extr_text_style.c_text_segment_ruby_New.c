
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* psz_rt; void* psz_base; int * p_next; } ;
typedef TYPE_1__ text_segment_ruby_t ;


 TYPE_1__* malloc (int) ;
 void* strdup (char const*) ;
 int text_segment_ruby_ChainDelete (TYPE_1__*) ;

text_segment_ruby_t *text_segment_ruby_New( const char *psz_base,
                                            const char *psz_rt )
{
    text_segment_ruby_t *p_rb = malloc(sizeof(*p_rb));
    if( p_rb )
    {
        p_rb->p_next = ((void*)0);
        p_rb->psz_base = strdup( psz_base );
        p_rb->psz_rt = strdup( psz_rt );
        if( !p_rb->psz_base || !p_rb->psz_rt )
        {
            text_segment_ruby_ChainDelete( p_rb );
            return ((void*)0);
        }
    }
    return p_rb;
}
