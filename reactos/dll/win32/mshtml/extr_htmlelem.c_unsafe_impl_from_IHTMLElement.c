
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IHTMLElement ;
typedef int HTMLElement ;


 int HTMLElementVtbl ;
 int * impl_from_IHTMLElement (TYPE_1__*) ;

HTMLElement *unsafe_impl_from_IHTMLElement(IHTMLElement *iface)
{
    return iface->lpVtbl == &HTMLElementVtbl ? impl_from_IHTMLElement(iface) : ((void*)0);
}
