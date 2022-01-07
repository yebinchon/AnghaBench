
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int filter_t ;
struct TYPE_4__ {int filter_cap; } ;
typedef TYPE_1__ filter_chain_t ;
typedef int es_format_t ;
typedef int config_chain_t ;


 int * filter_chain_AppendInner (TYPE_1__*,char const*,int ,int *,int const*) ;

filter_t *filter_chain_AppendFilter( filter_chain_t *chain,
    const char *name, config_chain_t *cfg,
    const es_format_t *fmt_out )
{
    return filter_chain_AppendInner( chain, name, chain->filter_cap, cfg,
                                     fmt_out );
}
