
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int nsIDOMNode ;
typedef int nsIDOMHTMLCollection ;
struct TYPE_2__ {size_t len; size_t size; int * buf; } ;
typedef TYPE_1__ elem_vector_t ;
typedef size_t UINT32 ;
typedef int IHTMLElementCollection ;
typedef int HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int * HTMLElementCollection_Create (int *,size_t) ;
 int S_OK ;
 int TRUE ;
 int elem_from_HTMLDOMNode (int *) ;
 int get_node (int *,int *,int ,int **) ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 int nsIDOMHTMLCollection_GetLength (int *,size_t*) ;
 int nsIDOMHTMLCollection_Item (int *,size_t,int **) ;
 int nsIDOMNode_Release (int *) ;

IHTMLElementCollection *create_collection_from_htmlcol(HTMLDocumentNode *doc, nsIDOMHTMLCollection *nscol)
{
    UINT32 length = 0, i;
    elem_vector_t buf;
    HTMLDOMNode *node;
    HRESULT hres = S_OK;

    nsIDOMHTMLCollection_GetLength(nscol, &length);

    buf.len = buf.size = length;
    if(buf.len) {
        nsIDOMNode *nsnode;

        buf.buf = heap_alloc(buf.size*sizeof(HTMLElement*));

        for(i=0; i<length; i++) {
            nsIDOMHTMLCollection_Item(nscol, i, &nsnode);
            hres = get_node(doc, nsnode, TRUE, &node);
            nsIDOMNode_Release(nsnode);
            if(FAILED(hres))
                break;
            buf.buf[i] = elem_from_HTMLDOMNode(node);
        }
    }else {
        buf.buf = ((void*)0);
    }

    if(FAILED(hres)) {
        heap_free(buf.buf);
        return ((void*)0);
    }

    return HTMLElementCollection_Create(buf.buf, buf.len);
}
