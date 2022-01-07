
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_first; int ** pp_last; scalar_t__ i_depth; } ;
typedef TYPE_1__ sout_buffer_chain_t ;



__attribute__((used)) static inline void BufferChainInit ( sout_buffer_chain_t *c )
{
    c->i_depth = 0;
    c->p_first = ((void*)0);
    c->pp_last = &c->p_first;
}
