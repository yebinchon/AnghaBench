
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fmt_out; int fmt_in; } ;
typedef TYPE_1__ filter_chain_t ;


 int es_format_Clean (int *) ;
 int filter_chain_Clear (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void filter_chain_Delete( filter_chain_t *p_chain )
{
    filter_chain_Clear( p_chain );

    es_format_Clean( &p_chain->fmt_in );
    es_format_Clean( &p_chain->fmt_out );

    free( p_chain );
}
