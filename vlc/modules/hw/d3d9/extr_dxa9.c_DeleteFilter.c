
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fmt_out; int fmt_in; scalar_t__ p_module; } ;
typedef TYPE_1__ filter_t ;


 int es_format_Clean (int *) ;
 int module_unneed (TYPE_1__*,scalar_t__) ;
 int vlc_object_delete (TYPE_1__*) ;

__attribute__((used)) static void DeleteFilter( filter_t * p_filter )
{
    if( p_filter->p_module )
        module_unneed( p_filter, p_filter->p_module );

    es_format_Clean( &p_filter->fmt_in );
    es_format_Clean( &p_filter->fmt_out );

    vlc_object_delete(p_filter);
}
