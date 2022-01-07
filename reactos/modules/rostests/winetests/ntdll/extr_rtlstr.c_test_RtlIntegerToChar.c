
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int MaximumLength; int value; } ;
typedef scalar_t__ NTSTATUS ;


 size_t NB_INT2STR ;
 scalar_t__ STATUS_ACCESS_VIOLATION ;
 scalar_t__ STATUS_BUFFER_OVERFLOW ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 TYPE_1__* int2str ;
 int ok (int,char*,int ,int,int ,scalar_t__,scalar_t__) ;
 int one_RtlIntegerToChar_test (size_t,TYPE_1__*) ;
 scalar_t__ pRtlIntegerToChar (int ,int,int ,int *) ;

__attribute__((used)) static void test_RtlIntegerToChar(void)
{
    NTSTATUS result;
    size_t test_num;

    for (test_num = 0; test_num < NB_INT2STR; test_num++)
      one_RtlIntegerToChar_test(test_num, &int2str[test_num]);

    result = pRtlIntegerToChar(int2str[0].value, 20, int2str[0].MaximumLength, ((void*)0));
    ok(result == STATUS_INVALID_PARAMETER,
       "(test a): RtlIntegerToChar(%u, %d, %d, NULL) has result %x, expected: %x\n",
       int2str[0].value, 20, int2str[0].MaximumLength, result, STATUS_INVALID_PARAMETER);

    result = pRtlIntegerToChar(int2str[0].value, 20, 0, ((void*)0));
    ok(result == STATUS_INVALID_PARAMETER,
       "(test b): RtlIntegerToChar(%u, %d, %d, NULL) has result %x, expected: %x\n",
       int2str[0].value, 20, 0, result, STATUS_INVALID_PARAMETER);

    result = pRtlIntegerToChar(int2str[0].value, int2str[0].base, 0, ((void*)0));
    ok(result == STATUS_BUFFER_OVERFLOW,
       "(test c): RtlIntegerToChar(%u, %d, %d, NULL) has result %x, expected: %x\n",
       int2str[0].value, int2str[0].base, 0, result, STATUS_BUFFER_OVERFLOW);

    result = pRtlIntegerToChar(int2str[0].value, int2str[0].base, int2str[0].MaximumLength, ((void*)0));
    ok(result == STATUS_ACCESS_VIOLATION,
       "(test d): RtlIntegerToChar(%u, %d, %d, NULL) has result %x, expected: %x\n",
       int2str[0].value, int2str[0].base, int2str[0].MaximumLength, result, STATUS_ACCESS_VIOLATION);
}
