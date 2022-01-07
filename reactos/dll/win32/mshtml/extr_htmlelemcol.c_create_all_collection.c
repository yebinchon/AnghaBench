
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int member_2; int size; int len; int buf; int member_1; int * member_0; } ;
typedef TYPE_1__ elem_vector_t ;
struct TYPE_11__ {int doc; } ;
typedef int IHTMLElementCollection ;
typedef int HTMLElement ;
typedef TYPE_2__ HTMLDOMNode ;
typedef scalar_t__ BOOL ;


 int * HTMLElementCollection_Create (int ,int ) ;
 int create_all_list (int ,TYPE_2__*,TYPE_1__*) ;
 int elem_from_HTMLDOMNode (TYPE_2__*) ;
 int elem_vector_add (TYPE_1__*,int ) ;
 int elem_vector_normalize (TYPE_1__*) ;
 int heap_alloc (int) ;
 int node_addref (TYPE_2__*) ;

IHTMLElementCollection *create_all_collection(HTMLDOMNode *node, BOOL include_root)
{
    elem_vector_t buf = {((void*)0), 0, 8};

    buf.buf = heap_alloc(buf.size*sizeof(HTMLElement*));

    if(include_root) {
        node_addref(node);
        elem_vector_add(&buf, elem_from_HTMLDOMNode(node));
    }
    create_all_list(node->doc, node, &buf);
    elem_vector_normalize(&buf);

    return HTMLElementCollection_Create(buf.buf, buf.len);
}
