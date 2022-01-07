
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLDocument2 ;
typedef int IHTMLDOMNode ;


 int ET_COMMENT ;
 int IHTMLDOMNode_Release (int *) ;
 int IHTMLDocument2_Release (int *) ;
 int * get_doc_node (int *) ;
 int * get_first_child (int *) ;
 int get_node_type (int *) ;
 int ok (int,char*,int) ;
 int test_comment_text (int *,char*) ;
 int test_elem_type (int *,int ) ;

__attribute__((used)) static void test_doctype(IHTMLDocument2 *doc)
{
    IHTMLDocument2 *doc_node;
    IHTMLDOMNode *doctype;
    int type;

    doc_node = get_doc_node(doc);
    doctype = get_first_child((IUnknown*)doc_node);
    IHTMLDocument2_Release(doc_node);

    type = get_node_type((IUnknown*)doctype);
    ok(type == 8, "type = %d\n", type);

    test_comment_text((IUnknown*)doctype, "<!DOCTYPE html>");
    test_elem_type((IUnknown*)doctype, ET_COMMENT);
    IHTMLDOMNode_Release(doctype);
}
