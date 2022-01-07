
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IHTMLEventObj ;
typedef int HTMLEventObj ;


 int HTMLEventObjVtbl ;
 int * impl_from_IHTMLEventObj (TYPE_1__*) ;

__attribute__((used)) static inline HTMLEventObj *unsafe_impl_from_IHTMLEventObj(IHTMLEventObj *iface)
{
    return iface->lpVtbl == &HTMLEventObjVtbl ? impl_from_IHTMLEventObj(iface) : ((void*)0);
}
