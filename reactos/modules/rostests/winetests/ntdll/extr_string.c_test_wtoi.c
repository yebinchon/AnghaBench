
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_6__ {int value; int str; } ;


 int NB_STR2LONG ;
 int ok (int,char*,int,int ,int,int) ;
 int pRtlCreateUnicodeStringFromAsciiz (TYPE_1__*,int ) ;
 int pRtlFreeUnicodeString (TYPE_1__*) ;
 int p_wtoi (int ) ;
 TYPE_2__* str2long ;

__attribute__((used)) static void test_wtoi(void)
{
    int test_num;
    UNICODE_STRING uni;
    int result;

    for (test_num = 0; test_num < NB_STR2LONG; test_num++) {
 pRtlCreateUnicodeStringFromAsciiz(&uni, str2long[test_num].str);
 result = p_wtoi(uni.Buffer);
 ok(result == str2long[test_num].value,
           "(test %d): call failed: _wtoi(\"%s\") has result %d, expected: %d\n",
    test_num, str2long[test_num].str, result, str2long[test_num].value);
 pRtlFreeUnicodeString(&uni);
    }
}
