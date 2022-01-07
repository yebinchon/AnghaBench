
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsISupports ;
typedef int nsCycleCollectionTraversalCallback ;
struct TYPE_3__ {scalar_t__ nsbody; } ;
typedef int HTMLDOMNode ;
typedef TYPE_1__ HTMLBodyElement ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int note_cc_edge (int *,char*,int *) ;

__attribute__((used)) static void HTMLBodyElement_traverse(HTMLDOMNode *iface, nsCycleCollectionTraversalCallback *cb)
{
    HTMLBodyElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsbody)
        note_cc_edge((nsISupports*)This->nsbody, "This->nsbody", cb);
}
