
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mask; } ;


 int NB_ULONG2STR ;
 int one_itoa_test (int,TYPE_1__*) ;
 int one_ltoa_test (int,TYPE_1__*) ;
 int one_ultoa_test (int,TYPE_1__*) ;
 TYPE_1__* ulong2str ;

__attribute__((used)) static void test_ulongtoa(void)
{
    int test_num;

    for (test_num = 0; test_num < NB_ULONG2STR; test_num++) {
 if (ulong2str[test_num].mask & 0x01) {
     one_itoa_test(test_num, &ulong2str[test_num]);
 }
 if (ulong2str[test_num].mask & 0x02) {
     one_ltoa_test(test_num, &ulong2str[test_num]);
 }
 if (ulong2str[test_num].mask & 0x04) {
     one_ultoa_test(test_num, &ulong2str[test_num]);
 }
    }
}
