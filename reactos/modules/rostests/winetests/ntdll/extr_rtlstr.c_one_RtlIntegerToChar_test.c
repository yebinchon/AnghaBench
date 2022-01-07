
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* result; char* Buffer; int MaximumLength; int base; int value; } ;
typedef TYPE_1__ int2str_t ;
typedef char* NTSTATUS ;


 int STRI_BUFFER_LENGTH ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,int,int ,int ,int ,char*,char*) ;
 char* pRtlIntegerToChar (int ,int ,int ,char*) ;

__attribute__((used)) static void one_RtlIntegerToChar_test(int test_num, const int2str_t *int2str)
{
    NTSTATUS result;
    char dest_str[STRI_BUFFER_LENGTH + 1];

    memset(dest_str, '-', STRI_BUFFER_LENGTH);
    dest_str[STRI_BUFFER_LENGTH] = '\0';
    result = pRtlIntegerToChar(int2str->value, int2str->base, int2str->MaximumLength, dest_str);
    ok(result == int2str->result,
       "(test %d): RtlIntegerToChar(%u, %d, %d, [out]) has result %x, expected: %x\n",
       test_num, int2str->value, int2str->base, int2str->MaximumLength, result, int2str->result);
    ok(memcmp(dest_str, int2str->Buffer, STRI_BUFFER_LENGTH) == 0,
       "(test %d): RtlIntegerToChar(%u, %d, %d, [out]) assigns string \"%s\", expected: \"%s\"\n",
       test_num, int2str->value, int2str->base, int2str->MaximumLength, dest_str, int2str->Buffer);
}
