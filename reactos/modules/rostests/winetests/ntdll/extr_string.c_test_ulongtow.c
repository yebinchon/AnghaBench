
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mask; int value; } ;
typedef int * LPWSTR ;


 int NB_ULONG2STR ;
 int ok (int ,char*,int ,int *) ;
 int one_itow_test (int,TYPE_1__*) ;
 int one_ltow_test (int,TYPE_1__*) ;
 int one_ultow_test (int,TYPE_1__*) ;
 int * p_itow (int ,int *,int) ;
 int * p_ltow (int ,int *,int) ;
 int * p_ultow (int ,int *,int) ;
 TYPE_1__* ulong2str ;

__attribute__((used)) static void test_ulongtow(void)
{
    int test_num;
    LPWSTR result;

    for (test_num = 0; test_num < NB_ULONG2STR; test_num++) {
 if (ulong2str[test_num].mask & 0x10) {
     one_itow_test(test_num, &ulong2str[test_num]);
 }
 if (ulong2str[test_num].mask & 0x20) {
     one_ltow_test(test_num, &ulong2str[test_num]);
 }
 if (ulong2str[test_num].mask & 0x40) {
     one_ultow_test(test_num, &ulong2str[test_num]);
 }
    }

    if (0) {

        result = p_itow(ulong2str[0].value, ((void*)0), 10);
        ok(result == ((void*)0),
           "(test a): _itow(%d, NULL, 10) has result %p, expected: NULL\n",
           ulong2str[0].value, result);
    }

    if (0) {

        result = p_ltow(ulong2str[0].value, ((void*)0), 10);
        ok(result == ((void*)0),
           "(test b): _ltow(%d, NULL, 10) has result %p, expected: NULL\n",
           ulong2str[0].value, result);
    }

    if (0) {

        result = p_ultow(ulong2str[0].value, ((void*)0), 10);
        ok(result == ((void*)0),
           "(test c): _ultow(%d, NULL, 10) has result %p, expected: NULL\n",
           ulong2str[0].value, result);
    }
}
