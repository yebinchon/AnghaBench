
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ nsISimpleEnumerator_iface; int * value; } ;
typedef TYPE_1__ nsSingletonEnumerator ;
typedef int nsISupports ;
typedef TYPE_2__ nsISimpleEnumerator ;


 TYPE_1__* heap_alloc (int) ;
 int nsISupports_AddRef (int *) ;
 int nsSingletonEnumeratorVtbl ;

__attribute__((used)) static nsISimpleEnumerator *create_singleton_enumerator(nsISupports *value)
{
    nsSingletonEnumerator *ret;

    ret = heap_alloc(sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->nsISimpleEnumerator_iface.lpVtbl = &nsSingletonEnumeratorVtbl;
    ret->ref = 1;

    if(value)
        nsISupports_AddRef(value);
    ret->value = value;
    return &ret->nsISimpleEnumerator_iface;
}
