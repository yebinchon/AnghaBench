
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mask; } ;


 int NB_ULONGLONG2STR ;
 int one_i64toa_test (int,TYPE_1__*) ;
 int one_ui64toa_test (int,TYPE_1__*) ;
 int * p_ui64toa ;
 TYPE_1__* ulonglong2str ;

__attribute__((used)) static void test_ulonglongtoa(void)
{
    int test_num;

    for (test_num = 0; test_num < NB_ULONGLONG2STR; test_num++) {
 if (ulonglong2str[test_num].mask & 0x01) {
     one_i64toa_test(test_num, &ulonglong2str[test_num]);
 }
        if (p_ui64toa != ((void*)0)) {
     if (ulonglong2str[test_num].mask & 0x02) {
  one_ui64toa_test(test_num, &ulonglong2str[test_num]);
     }
 }
    }
}
