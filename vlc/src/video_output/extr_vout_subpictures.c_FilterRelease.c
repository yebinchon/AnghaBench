
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ p_module; } ;
typedef TYPE_1__ filter_t ;


 int module_unneed (TYPE_1__*,scalar_t__) ;
 int vlc_object_delete (TYPE_1__*) ;

__attribute__((used)) static void FilterRelease(filter_t *filter)
{
    if (filter->p_module)
        module_unneed(filter, filter->p_module);
    vlc_object_delete(filter);
}
