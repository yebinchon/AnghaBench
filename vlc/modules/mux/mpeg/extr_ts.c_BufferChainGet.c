
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_first; TYPE_2__** pp_last; int i_depth; } ;
typedef TYPE_1__ sout_buffer_chain_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_2__ block_t ;



__attribute__((used)) static inline block_t *BufferChainGet( sout_buffer_chain_t *c )
{
    block_t *b = c->p_first;

    if( b )
    {
        c->i_depth--;
        c->p_first = b->p_next;

        if( c->p_first == ((void*)0) )
        {
            c->pp_last = &c->p_first;
        }

        b->p_next = ((void*)0);
    }
    return b;
}
