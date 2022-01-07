
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLScriptElement ;
struct TYPE_3__ {int * nsscript; } ;
typedef TYPE_1__ HTMLScriptElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLScriptElement_Release (int *) ;

__attribute__((used)) static void HTMLScriptElement_unlink(HTMLDOMNode *iface)
{
    HTMLScriptElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsscript) {
        nsIDOMHTMLScriptElement *nsscript = This->nsscript;

        This->nsscript = ((void*)0);
        nsIDOMHTMLScriptElement_Release(nsscript);
    }
}
