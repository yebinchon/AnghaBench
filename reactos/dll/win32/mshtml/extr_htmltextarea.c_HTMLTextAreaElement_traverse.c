
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsISupports ;
typedef int nsCycleCollectionTraversalCallback ;
struct TYPE_3__ {scalar_t__ nstextarea; } ;
typedef TYPE_1__ HTMLTextAreaElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int note_cc_edge (int *,char*,int *) ;

__attribute__((used)) static void HTMLTextAreaElement_traverse(HTMLDOMNode *iface, nsCycleCollectionTraversalCallback *cb)
{
    HTMLTextAreaElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nstextarea)
        note_cc_edge((nsISupports*)This->nstextarea, "This->nstextarea", cb);
}
