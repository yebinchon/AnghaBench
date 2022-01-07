
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * style_sheet; } ;
typedef TYPE_1__ HTMLStyleElement ;
typedef int HTMLDOMNode ;


 int HTMLElement_destructor (int *) ;
 int IHTMLStyleSheet_Release (int *) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static void HTMLStyleElement_destructor(HTMLDOMNode *iface)
{
    HTMLStyleElement *This = impl_from_HTMLDOMNode(iface);

    if(This->style_sheet) {
        IHTMLStyleSheet_Release(This->style_sheet);
        This->style_sheet = ((void*)0);
    }

    HTMLElement_destructor(iface);
}
