
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLElement ;


 int VARIANT_TRUE ;
 int set_button_name (int *,char*) ;
 int test_button_name (int *,int *) ;
 int test_elem_istextedit (int *,int ) ;

__attribute__((used)) static void test_button_elem(IHTMLElement *elem)
{
    test_button_name(elem, ((void*)0));
    set_button_name(elem, "button name");

    test_elem_istextedit(elem, VARIANT_TRUE);
}
