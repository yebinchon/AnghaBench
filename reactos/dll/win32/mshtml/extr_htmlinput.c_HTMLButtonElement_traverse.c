
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsISupports ;
typedef int nsCycleCollectionTraversalCallback ;
struct TYPE_3__ {scalar_t__ nsbutton; } ;
typedef int HTMLDOMNode ;
typedef TYPE_1__ HTMLButtonElement ;


 TYPE_1__* button_from_HTMLDOMNode (int *) ;
 int note_cc_edge (int *,char*,int *) ;

__attribute__((used)) static void HTMLButtonElement_traverse(HTMLDOMNode *iface, nsCycleCollectionTraversalCallback *cb)
{
    HTMLButtonElement *This = button_from_HTMLDOMNode(iface);

    if(This->nsbutton)
        note_cc_edge((nsISupports*)This->nsbutton, "This->nsbutton", cb);
}
