
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* first; } ;
typedef TYPE_2__ filter_chain_t ;
struct TYPE_5__ {int filter; } ;


 int filter_chain_DeleteFilter (TYPE_2__*,int *) ;

void filter_chain_Clear( filter_chain_t *p_chain )
{
    while( p_chain->first != ((void*)0) )
        filter_chain_DeleteFilter( p_chain, &p_chain->first->filter );
}
