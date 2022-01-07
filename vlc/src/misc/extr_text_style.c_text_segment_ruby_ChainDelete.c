
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_rt; struct TYPE_4__* psz_base; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ text_segment_ruby_t ;


 int free (TYPE_1__*) ;

void text_segment_ruby_ChainDelete( text_segment_ruby_t *p_ruby )
{
    while( p_ruby )
    {
        text_segment_ruby_t *p_next = p_ruby->p_next;
        free( p_ruby->psz_base );
        free( p_ruby->psz_rt );
        free( p_ruby );
        p_ruby = p_next;
    }
}
