
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_module; } ;
typedef TYPE_1__ filter_t ;


 int module_unneed (TYPE_1__*,int ) ;
 int vlc_object_delete (TYPE_1__*) ;

__attribute__((used)) static void aout_FiltersPipelineDestroy(filter_t *const *filters, unsigned n)
{
    for( unsigned i = 0; i < n; i++ )
    {
        filter_t *p_filter = filters[i];

        module_unneed( p_filter, p_filter->p_module );
        vlc_object_delete(p_filter);
    }
}
