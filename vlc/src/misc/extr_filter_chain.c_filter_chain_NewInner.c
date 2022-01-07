
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int b_allow_fmt_out_change; char const* filter_cap; char const* conv_cap; int fmt_out; int fmt_in; int * last; int * first; int * obj; } ;
typedef TYPE_1__ filter_chain_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int assert (int ) ;
 int es_format_Init (int *,int,int ) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static filter_chain_t *filter_chain_NewInner( vlc_object_t *obj,
    const char *cap, const char *conv_cap, bool fmt_out_change,
    enum es_format_category_e cat )
{
    assert( obj != ((void*)0) );
    assert( cap != ((void*)0) );

    filter_chain_t *chain = malloc( sizeof (*chain) );
    if( unlikely(chain == ((void*)0)) )
        return ((void*)0);

    chain->obj = obj;
    chain->first = ((void*)0);
    chain->last = ((void*)0);
    es_format_Init( &chain->fmt_in, cat, 0 );
    es_format_Init( &chain->fmt_out, cat, 0 );
    chain->b_allow_fmt_out_change = fmt_out_change;
    chain->filter_cap = cap;
    chain->conv_cap = conv_cap;
    return chain;
}
