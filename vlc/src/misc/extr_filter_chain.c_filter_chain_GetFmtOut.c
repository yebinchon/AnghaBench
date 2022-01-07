
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int const fmt_out; TYPE_2__* last; } ;
typedef TYPE_3__ filter_chain_t ;
typedef int es_format_t ;
struct TYPE_5__ {int const fmt_out; } ;
struct TYPE_6__ {TYPE_1__ filter; } ;



const es_format_t *filter_chain_GetFmtOut( const filter_chain_t *p_chain )
{
    if( p_chain->last != ((void*)0) )
        return &p_chain->last->filter.fmt_out;


    return &p_chain->fmt_out;
}
