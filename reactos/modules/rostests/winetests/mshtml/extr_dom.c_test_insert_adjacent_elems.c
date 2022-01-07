
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const elem_type_t ;
typedef int IUnknown ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;




 int IHTMLElement_Release (int *) ;
 int insert_adjacent_elem (int *,char*,int *) ;
 int * test_create_elem (int *,char*) ;
 int test_elem_all (int *,int const*,int) ;

__attribute__((used)) static void test_insert_adjacent_elems(IHTMLDocument2 *doc, IHTMLElement *parent)
{
    IHTMLElement *elem, *elem2;

    static const elem_type_t br_br[] = {129, 129};
    static const elem_type_t br_div_br[] = {129, 128, 129};

    elem = test_create_elem(doc, "BR");
    insert_adjacent_elem(parent, "BeforeEnd", elem);
    IHTMLElement_Release(elem);

    test_elem_all((IUnknown*)parent, br_br, 1);

    elem = test_create_elem(doc, "BR");
    insert_adjacent_elem(parent, "beforeend", elem);

    test_elem_all((IUnknown*)parent, br_br, 2);

    elem2 = test_create_elem(doc, "DIV");
    insert_adjacent_elem(elem, "beforebegin", elem2);
    IHTMLElement_Release(elem2);
    IHTMLElement_Release(elem);

    test_elem_all((IUnknown*)parent, br_div_br, 3);
}
