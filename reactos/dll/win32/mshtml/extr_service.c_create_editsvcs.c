
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IHTMLEditServices_iface; } ;
typedef TYPE_1__ editsvcs ;
typedef TYPE_2__ IHTMLEditServices ;


 int editsvcsVtbl ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static IHTMLEditServices *create_editsvcs(void)
{
    editsvcs *ret = heap_alloc(sizeof(*ret));

    if (ret) {
        ret->IHTMLEditServices_iface.lpVtbl = &editsvcsVtbl;
        ret->ref = 1;
        return &ret->IHTMLEditServices_iface;
    }

    return ((void*)0);
}
