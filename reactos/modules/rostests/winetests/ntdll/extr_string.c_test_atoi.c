
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int str; } ;


 int NB_STR2LONG ;
 int ok (int,char*,int,int ,int,int) ;
 int patoi (int ) ;
 TYPE_1__* str2long ;

__attribute__((used)) static void test_atoi(void)
{
    int test_num;
    int result;

    for (test_num = 0; test_num < NB_STR2LONG; test_num++) {
        result = patoi(str2long[test_num].str);
        ok(result == str2long[test_num].value,
           "(test %d): call failed: _atoi(\"%s\") has result %d, expected: %d\n",
           test_num, str2long[test_num].str, result, str2long[test_num].value);
    }
}
