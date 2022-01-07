
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLOptionElement ;


 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int test_option_defaultSelected (int *,int) ;
 int test_option_put_defaultSelected (int *,int) ;
 int test_option_put_selected (int *,int) ;
 int test_option_selected (int *,int) ;

__attribute__((used)) static void test_option_defaultSelected_property(IHTMLOptionElement *option)
{
    test_option_defaultSelected(option, VARIANT_FALSE);
    test_option_selected(option, VARIANT_FALSE);

    test_option_put_defaultSelected(option, 0x100);
    test_option_defaultSelected(option, VARIANT_FALSE);
    test_option_selected(option, VARIANT_FALSE);

    test_option_put_defaultSelected(option, VARIANT_TRUE);
    test_option_defaultSelected(option, VARIANT_TRUE);
    test_option_selected(option, VARIANT_FALSE);

    test_option_put_defaultSelected(option, 0x100);
    test_option_defaultSelected(option, VARIANT_FALSE);
    test_option_selected(option, VARIANT_FALSE);

    test_option_put_selected(option, VARIANT_TRUE);
    test_option_selected(option, VARIANT_TRUE);
    test_option_defaultSelected(option, VARIANT_FALSE);

    test_option_put_defaultSelected(option, VARIANT_TRUE);
    test_option_defaultSelected(option, VARIANT_TRUE);
    test_option_selected(option, VARIANT_TRUE);


    test_option_put_defaultSelected(option, VARIANT_TRUE);
    test_option_put_selected(option, VARIANT_FALSE);
}
