
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;
struct TYPE_3__ {int size; scalar_t__ len; int * buf; } ;
typedef TYPE_1__ elem_vector_t ;
typedef scalar_t__ UINT32 ;
typedef int IHTMLElementCollection ;
typedef int HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int * HTMLElementCollection_Create (int *,scalar_t__) ;
 int TRUE ;
 int elem_from_HTMLDOMNode (int *) ;
 int elem_vector_normalize (TYPE_1__*) ;
 int get_node (int *,int *,int ,int **) ;
 int * heap_alloc (int) ;
 scalar_t__ is_elem_node (int *) ;
 int nsIDOMNodeList_GetLength (int *,scalar_t__*) ;
 int nsIDOMNodeList_Item (int *,scalar_t__,int **) ;
 int nsIDOMNode_Release (int *) ;

IHTMLElementCollection *create_collection_from_nodelist(HTMLDocumentNode *doc, nsIDOMNodeList *nslist)
{
    UINT32 length = 0, i;
    HTMLDOMNode *node;
    elem_vector_t buf;
    HRESULT hres;

    nsIDOMNodeList_GetLength(nslist, &length);

    buf.len = 0;
    buf.size = length;
    if(length) {
        nsIDOMNode *nsnode;

        buf.buf = heap_alloc(buf.size*sizeof(HTMLElement*));

        for(i=0; i<length; i++) {
            nsIDOMNodeList_Item(nslist, i, &nsnode);
            if(is_elem_node(nsnode)) {
                hres = get_node(doc, nsnode, TRUE, &node);
                if(FAILED(hres))
                    continue;
                buf.buf[buf.len++] = elem_from_HTMLDOMNode(node);
            }
            nsIDOMNode_Release(nsnode);
        }

        elem_vector_normalize(&buf);
    }else {
        buf.buf = ((void*)0);
    }

    return HTMLElementCollection_Create(buf.buf, buf.len);
}
