
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int conv_cap; } ;
typedef TYPE_1__ filter_chain_t ;
typedef int es_format_t ;


 int * filter_chain_AppendInner (TYPE_1__*,int *,int ,int *,int const*) ;

int filter_chain_AppendConverter( filter_chain_t *chain,
    const es_format_t *fmt_out )
{
    return filter_chain_AppendInner( chain, ((void*)0), chain->conv_cap, ((void*)0),
                                     fmt_out ) != ((void*)0) ? 0 : -1;
}
