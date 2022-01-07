
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fmt_out; int fmt_in; } ;
typedef TYPE_1__ filter_chain_t ;
typedef int es_format_t ;


 int assert (int ) ;
 int es_format_Clean (int *) ;
 int es_format_Copy (int *,int const*) ;
 int filter_chain_Clear (TYPE_1__*) ;

void filter_chain_Reset( filter_chain_t *p_chain, const es_format_t *p_fmt_in,
                         const es_format_t *p_fmt_out )
{
    filter_chain_Clear( p_chain );

    assert(p_fmt_in != ((void*)0));
    es_format_Clean( &p_chain->fmt_in );
    es_format_Copy( &p_chain->fmt_in, p_fmt_in );

    assert(p_fmt_out != ((void*)0));
    es_format_Clean( &p_chain->fmt_out );
    es_format_Copy( &p_chain->fmt_out, p_fmt_out );
}
