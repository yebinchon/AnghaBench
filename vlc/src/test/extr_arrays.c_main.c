
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_array_bsearch () ;
 int test_array_find () ;
 int test_array_foreach () ;
 int test_array_insert_remove () ;

int main(void)
{
    test_array_insert_remove();
    test_array_foreach();
    test_array_find();
    test_array_bsearch();
}
