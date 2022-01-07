
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_LARGEINT2STR ;
 int * largeint2str ;
 int one_RtlInt64ToUnicodeString_test (int,int *) ;

__attribute__((used)) static void test_RtlInt64ToUnicodeString(void)
{
    int test_num;

    for (test_num = 0; test_num < NB_LARGEINT2STR; test_num++) {
 one_RtlInt64ToUnicodeString_test(test_num, &largeint2str[test_num]);
    }
}
