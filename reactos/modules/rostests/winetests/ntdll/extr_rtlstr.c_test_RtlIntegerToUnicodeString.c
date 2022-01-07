
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t NB_INT2STR ;
 int * int2str ;
 int one_RtlIntegerToUnicodeString_test (size_t,int *) ;

__attribute__((used)) static void test_RtlIntegerToUnicodeString(void)
{
    size_t test_num;

    for (test_num = 0; test_num < NB_INT2STR; test_num++)
        one_RtlIntegerToUnicodeString_test(test_num, &int2str[test_num]);
}
