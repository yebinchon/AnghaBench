
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsISupports ;
typedef int nsIDOMNode ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_10__ {TYPE_1__ IHTMLDOMNode_iface; int * nsnode; TYPE_3__* doc; int ccref; TYPE_2__ IHTMLDOMNode2_iface; } ;
struct TYPE_9__ {int basedoc; TYPE_4__ node; } ;
typedef TYPE_3__ HTMLDocumentNode ;
typedef TYPE_4__ HTMLDOMNode ;


 int HTMLDOMNode2Vtbl ;
 int HTMLDOMNodeVtbl ;
 scalar_t__ NS_OK ;
 int assert (int) ;
 int ccref_init (int *,int) ;
 int htmldoc_addref (int *) ;
 int nsIDOMNode_AddRef (int *) ;
 scalar_t__ nsIDOMNode_SetMshtmlNode (int *,int *) ;

void HTMLDOMNode_Init(HTMLDocumentNode *doc, HTMLDOMNode *node, nsIDOMNode *nsnode)
{
    nsresult nsres;

    node->IHTMLDOMNode_iface.lpVtbl = &HTMLDOMNodeVtbl;
    node->IHTMLDOMNode2_iface.lpVtbl = &HTMLDOMNode2Vtbl;

    ccref_init(&node->ccref, 1);

    if(&doc->node != node)
        htmldoc_addref(&doc->basedoc);
    node->doc = doc;

    nsIDOMNode_AddRef(nsnode);
    node->nsnode = nsnode;

    nsres = nsIDOMNode_SetMshtmlNode(nsnode, (nsISupports*)&node->IHTMLDOMNode_iface);
    assert(nsres == NS_OK);
}
