
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mask; int value; } ;
typedef int * LPWSTR ;


 int NB_ULONGLONG2STR ;
 int ok (int ,char*,int ,int *) ;
 int one_i64tow_test (int,TYPE_1__*) ;
 int one_ui64tow_test (int,TYPE_1__*) ;
 int * p_i64tow (int ,int *,int) ;
 int * p_ui64tow (int ,int *,int) ;
 TYPE_1__* ulonglong2str ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static void test_ulonglongtow(void)
{
    int test_num;
    LPWSTR result;

    for (test_num = 0; test_num < NB_ULONGLONG2STR; test_num++) {
 if (ulonglong2str[test_num].mask & 0x10) {
     one_i64tow_test(test_num, &ulonglong2str[test_num]);
 }
 if (p_ui64tow) {
     if (ulonglong2str[test_num].mask & 0x20) {
  one_ui64tow_test(test_num, &ulonglong2str[test_num]);
     }
 }
    }

    if (0) {

        result = p_i64tow(ulonglong2str[0].value, ((void*)0), 10);
        ok(result == ((void*)0),
           "(test d): _i64tow(0x%s, NULL, 10) has result %p, expected: NULL\n",
           wine_dbgstr_longlong(ulonglong2str[0].value), result);
    }

    if (p_ui64tow) {
        if (0) {

     result = p_ui64tow(ulonglong2str[0].value, ((void*)0), 10);
     ok(result == ((void*)0),
               "(test e): _ui64tow(0x%s, NULL, 10) has result %p, expected: NULL\n",
        wine_dbgstr_longlong(ulonglong2str[0].value), result);
        }
    }
}
