
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLOptionElement ;
typedef int IHTMLDocument2 ;


 int IHTMLOptionElement_Release (int *) ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int * create_option_elem (int *,char*,char*) ;
 int test_option_defaultSelected_property (int *) ;
 int test_option_get_index (int *,int ) ;
 int test_option_put_selected (int *,int ) ;
 int test_option_put_text (int *,char*) ;
 int test_option_put_value (int *,char*) ;

__attribute__((used)) static void test_create_option_elem(IHTMLDocument2 *doc)
{
    IHTMLOptionElement *option;

    option = create_option_elem(doc, "test text", "test value");

    test_option_put_text(option, "new text");
    test_option_put_value(option, "new value");
    test_option_get_index(option, 0);
    test_option_defaultSelected_property(option);
    test_option_put_selected(option, VARIANT_TRUE);
    test_option_put_selected(option, VARIANT_FALSE);

    IHTMLOptionElement_Release(option);
}
