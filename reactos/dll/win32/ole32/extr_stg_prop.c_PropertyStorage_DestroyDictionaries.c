
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * propid_to_prop; int * propid_to_name; int * name_to_propid; } ;
typedef TYPE_1__ PropertyStorage_impl ;


 int dictionary_destroy (int *) ;

__attribute__((used)) static void PropertyStorage_DestroyDictionaries(PropertyStorage_impl *This)
{
    dictionary_destroy(This->name_to_propid);
    This->name_to_propid = ((void*)0);
    dictionary_destroy(This->propid_to_name);
    This->propid_to_name = ((void*)0);
    dictionary_destroy(This->propid_to_prop);
    This->propid_to_prop = ((void*)0);
}
