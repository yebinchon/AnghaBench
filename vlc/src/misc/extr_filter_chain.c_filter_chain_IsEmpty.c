
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * first; } ;
typedef TYPE_1__ filter_chain_t ;



bool filter_chain_IsEmpty(const filter_chain_t *chain)
{
    return chain->first == ((void*)0);
}
