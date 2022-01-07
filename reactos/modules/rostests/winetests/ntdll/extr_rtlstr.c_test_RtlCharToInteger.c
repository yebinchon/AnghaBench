
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* str; int base; int value; scalar_t__ alternative; scalar_t__ result; } ;
typedef scalar_t__ NTSTATUS ;


 unsigned int NB_STR2INT ;
 scalar_t__ STATUS_ACCESS_VIOLATION ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_SUCCESS ;
 int ok (int,char*,...) ;
 scalar_t__ pRtlCharToInteger (char*,int,int*) ;
 TYPE_1__* str2int ;

__attribute__((used)) static void test_RtlCharToInteger(void)
{
    unsigned int test_num;
    int value;
    NTSTATUS result;

    for (test_num = 0; test_num < NB_STR2INT; test_num++) {

 if (str2int[test_num].str[0] != '\0') {
     value = 0xdeadbeef;
     result = pRtlCharToInteger(str2int[test_num].str, str2int[test_num].base, &value);
     ok(result == str2int[test_num].result ||
               (str2int[test_num].alternative && result == str2int[test_num].alternative),
               "(test %d): call failed: RtlCharToInteger(\"%s\", %d, [out]) has result %x, expected: %x (%x)\n",
        test_num, str2int[test_num].str, str2int[test_num].base, result,
               str2int[test_num].result, str2int[test_num].alternative);
            if (result == STATUS_SUCCESS)
                ok(value == str2int[test_num].value,
                   "(test %d): call failed: RtlCharToInteger(\"%s\", %d, [out]) assigns value %d, expected: %d\n",
                   test_num, str2int[test_num].str, str2int[test_num].base, value, str2int[test_num].value);
            else
                ok(value == 0 || value == 0xdeadbeef,
                   "(test %d): call failed: RtlCharToInteger(\"%s\", %d, [out]) assigns value %d, expected 0 or deadbeef\n",
                   test_num, str2int[test_num].str, str2int[test_num].base, value);
 }
    }

    result = pRtlCharToInteger(str2int[1].str, str2int[1].base, ((void*)0));
    ok(result == STATUS_ACCESS_VIOLATION,
       "call failed: RtlCharToInteger(\"%s\", %d, NULL) has result %x\n",
       str2int[1].str, str2int[1].base, result);

    result = pRtlCharToInteger(str2int[1].str, 20, ((void*)0));
    ok(result == STATUS_INVALID_PARAMETER,
       "call failed: RtlCharToInteger(\"%s\", 20, NULL) has result %x\n",
       str2int[1].str, result);
}
