
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsISupports ;
typedef int nsCycleCollectionTraversalCallback ;
struct TYPE_4__ {scalar_t__ nsframe; } ;
struct TYPE_5__ {TYPE_1__ framebase; } ;
typedef TYPE_2__ HTMLFrameElement ;
typedef int HTMLDOMNode ;


 TYPE_2__* impl_from_HTMLDOMNode (int *) ;
 int note_cc_edge (int *,char*,int *) ;

__attribute__((used)) static void HTMLFrameElement_traverse(HTMLDOMNode *iface, nsCycleCollectionTraversalCallback *cb)
{
    HTMLFrameElement *This = impl_from_HTMLDOMNode(iface);

    if(This->framebase.nsframe)
        note_cc_edge((nsISupports*)This->framebase.nsframe, "This->nsframe", cb);
}
