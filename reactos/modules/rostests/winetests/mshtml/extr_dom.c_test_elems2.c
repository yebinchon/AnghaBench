
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int outer_types ;
typedef int elem_type_t ;
typedef int IUnknown ;
typedef int IHTMLFormElement ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;




 int E_INVALIDARG ;
 int IHTMLElement_Release (int *) ;
 int IHTMLFormElement_Release (int *) ;
 int S_OK ;
 int TRUE ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int * get_doc_elem_by_id (int *,char*) ;
 int * get_elem_by_id (int *,char*,int ) ;
 int * get_textarea_form (int *) ;
 int iface_cmp (int *,int *) ;
 int link_put_disabled (int *,int ) ;
 int link_put_href (int *,char*) ;
 int link_put_rel (int *,char*) ;
 int link_put_rev (int *,char*) ;
 int link_put_type (int *,char*) ;
 int ok (int,char*,...) ;
 int test_attr (int *) ;
 int test_blocked (int *,int *) ;
 int test_elem_all (int *,int const*,int) ;
 int test_elem_istextedit (int *,int ) ;
 int test_elem_names (int *) ;
 int test_elem_set_innerhtml (int *,char*) ;
 int test_elem_set_outerhtml (int *,char*) ;
 int test_form_action (int *,int *) ;
 int test_form_elements (int *) ;
 int test_form_encoding (int *,char*) ;
 int test_form_item (int *) ;
 int test_form_length (int *,int) ;
 int test_form_method (int *,char*) ;
 int test_form_name (int *,int *) ;
 int test_form_put_action (int *,char*) ;
 int test_form_put_encoding (int *,int ,char*) ;
 int test_form_put_method (int *,int ,char*) ;
 int test_form_put_name (int *,char*) ;
 int test_form_reset (int *) ;
 int test_form_target (int *) ;
 int test_input_defaultValue (int *,char*) ;
 int test_input_get_form (int *,char*) ;
 int test_input_put_defaultValue (int *,char*) ;
 int test_input_put_value (int *,char*) ;
 int test_input_value (int *,char*) ;
 int test_insert_adjacent_elems (int *,int *) ;
 int test_link_disabled (int *,int ) ;
 int test_link_href (int *,char*) ;
 int test_link_media (int *,char*) ;
 int test_link_rel (int *,char*) ;
 int test_link_rev (int *,int *) ;
 int test_link_type (int *,char*) ;
 int test_option_form (int *,int *) ;
 int test_select_form (int *,int *) ;
 int test_textarea_defaultvalue (int *,char*) ;
 int test_textarea_put_defaultvalue (int *,char*) ;
 int test_textarea_put_readonly (int *,int ) ;
 int test_textarea_put_value (int *,char*) ;
 int test_textarea_readonly (int *,int ) ;
 int test_textarea_type (int *) ;
 int test_textarea_value (int *,int *) ;

__attribute__((used)) static void test_elems2(IHTMLDocument2 *doc)
{
    IHTMLElement *elem, *elem2, *div;

    static const elem_type_t outer_types[] = {
        128,
        129
    };

    div = get_doc_elem_by_id(doc, "divid");

    elem = get_elem_by_id(doc, "linkid", TRUE);
    if(elem) {
        test_link_disabled(elem, VARIANT_FALSE);
        test_link_rel(elem, "stylesheet");
        test_link_rev(elem, ((void*)0));
        test_link_type(elem, "text/css");
        test_link_href(elem, "about:blank");
        test_link_media(elem, "all");
        link_put_disabled(elem, VARIANT_TRUE);
        link_put_rel(elem, "prev");
        link_put_rev(elem, "next");
        link_put_type(elem, "text/plain");
        link_put_href(elem, "about:prev");
        IHTMLElement_Release(elem);
    }

    test_elem_set_innerhtml((IUnknown*)div, "<div id=\"innerid\"></div>");
    elem2 = get_doc_elem_by_id(doc, "innerid");
    ok(elem2 != ((void*)0), "elem2 == NULL\n");
    test_elem_set_outerhtml((IUnknown*)elem2, "<br><a href=\"about:blank\" id=\"aid\">a</a>");
    test_elem_all((IUnknown*)div, outer_types, sizeof(outer_types)/sizeof(*outer_types));
    IHTMLElement_Release(elem2);

    elem2 = get_doc_elem_by_id(doc, "aid");
    ok(elem2 != ((void*)0), "elem2 == NULL\n");
    test_elem_set_outerhtml((IUnknown*)elem2, "");
    test_elem_all((IUnknown*)div, outer_types, 1);
    IHTMLElement_Release(elem2);

    test_elem_set_innerhtml((IUnknown*)div, "<textarea id=\"ta\"></textarea>");
    elem = get_elem_by_id(doc, "ta", TRUE);
    if(elem) {
        IHTMLFormElement *form;

        test_textarea_value((IUnknown*)elem, ((void*)0));
        test_textarea_put_value((IUnknown*)elem, "test");
        test_textarea_defaultvalue((IUnknown*)elem, ((void*)0));
        test_textarea_put_defaultvalue((IUnknown*)elem, "defval text");
        test_textarea_put_value((IUnknown*)elem, "test");
        test_textarea_readonly((IUnknown*)elem, VARIANT_FALSE);
        test_textarea_put_readonly((IUnknown*)elem, VARIANT_TRUE);
        test_textarea_put_readonly((IUnknown*)elem, VARIANT_FALSE);
        test_textarea_type((IUnknown*)elem);

        form = get_textarea_form((IUnknown*)elem);
        ok(!form, "form = %p\n", form);

        test_elem_istextedit(elem, VARIANT_TRUE);

        IHTMLElement_Release(elem);
    }

    test_elem_set_innerhtml((IUnknown*)div, "<textarea id=\"ta\">default text</textarea>");
    elem = get_elem_by_id(doc, "ta", TRUE);
    if(elem) {
        test_textarea_defaultvalue((IUnknown*)elem, "default text");
        IHTMLElement_Release(elem);
    }

    test_elem_set_innerhtml((IUnknown*)div, "<form id=\"fid\"><textarea id=\"ta\"></textarea></form>");
    elem = get_elem_by_id(doc, "ta", TRUE);
    if(elem) {
        IHTMLFormElement *form;

        elem2 = get_elem_by_id(doc, "fid", TRUE);
        ok(elem2 != ((void*)0), "elem2 == NULL\n");

        form = get_textarea_form((IUnknown*)elem);
        ok(form != ((void*)0), "form = NULL\n");
        ok(iface_cmp((IUnknown*)form, (IUnknown*)elem2), "form != elem2\n");

        IHTMLFormElement_Release(form);
        IHTMLElement_Release(elem2);
        IHTMLElement_Release(elem);
    }

    test_elem_set_innerhtml((IUnknown*)div,
            "<input value=\"val\" id =\"inputid\"  />");
    elem = get_elem_by_id(doc, "inputid", TRUE);
    if(elem) {
        test_input_defaultValue((IUnknown*)elem, "val");
        test_input_put_value((IUnknown*)elem, "test");
        test_input_put_defaultValue((IUnknown*)elem, "new val");
        test_input_value((IUnknown*)elem, "test");
        IHTMLElement_Release(elem);
    }

    test_elem_set_innerhtml((IUnknown*)div, "");
    test_insert_adjacent_elems(doc, div);

    test_elem_set_innerhtml((IUnknown*)div,
            "<form id=\"form\"><input type=\"button\" /><div><input type=\"text\" id=\"inputid\"/></div></textarea>");
    elem = get_elem_by_id(doc, "form", TRUE);
    if(elem) {
        test_form_length((IUnknown*)elem, 2);
        test_form_item(elem);
        test_form_action((IUnknown*)elem, ((void*)0));
        test_form_put_action((IUnknown*)elem, "about:blank");
        test_form_method((IUnknown*)elem, "get");
        test_form_put_method((IUnknown*)elem, S_OK, "post");
        test_form_put_method((IUnknown*)elem, E_INVALIDARG, "put");
        test_form_method((IUnknown*)elem, "post");
        test_form_name((IUnknown*)elem, ((void*)0));
        test_form_put_name((IUnknown*)elem, "Name");
        test_form_encoding((IUnknown*)elem, "application/x-www-form-urlencoded");
        test_form_put_encoding((IUnknown*)elem, S_OK, "text/plain");
        test_form_put_encoding((IUnknown*)elem, S_OK, "multipart/form-data");
        test_form_put_encoding((IUnknown*)elem, E_INVALIDARG, "image/png");
        test_form_encoding((IUnknown*)elem, "multipart/form-data");
        test_form_elements((IUnknown*)elem);
        test_form_reset((IUnknown*)elem);
        test_form_target((IUnknown*)elem);
        IHTMLElement_Release(elem);

        elem = get_elem_by_id(doc, "inputid", TRUE);
        test_input_get_form((IUnknown*)elem, "form");
        IHTMLElement_Release(elem);
    }

    test_elem_set_innerhtml((IUnknown*)div,
            "<form id=\"form\" name=\"form_name\"><select id=\"sform\"><option id=\"oform\"></option></select></form>");
    elem = get_elem_by_id(doc, "sform", TRUE);
    elem2 = get_elem_by_id(doc, "form", TRUE);
    if(elem && elem2) {
        test_select_form((IUnknown*)elem, (IUnknown*)elem2);
        IHTMLElement_Release(elem);

        elem = get_elem_by_id(doc, "oform", TRUE);
        if(elem) {
            test_option_form((IUnknown*)elem, (IUnknown*)elem2);
            IHTMLElement_Release(elem);
        }
        IHTMLElement_Release(elem2);
    }

    test_attr(div);
    test_blocked(doc, div);
    test_elem_names(doc);

    IHTMLElement_Release(div);
}
