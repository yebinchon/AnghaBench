
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int base; char* result; char* Buffer; int MaximumLength; } ;
typedef TYPE_1__ largeint2str_t ;
typedef int ULONGLONG ;
typedef char* NTSTATUS ;
typedef int DWORD ;


 int LARGE_STRI_BUFFER_LENGTH ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,int,int ,int,int ,char*,char*) ;
 char* pRtlLargeIntegerToChar (int*,int,int ,char*) ;
 int skip (char*,int ) ;
 int wine_dbgstr_longlong (int) ;

__attribute__((used)) static void one_RtlLargeIntegerToChar_test(int test_num, const largeint2str_t *largeint2str)
{
    NTSTATUS result;
    char dest_str[LARGE_STRI_BUFFER_LENGTH + 1];
    ULONGLONG value;
    memset(dest_str, '-', LARGE_STRI_BUFFER_LENGTH);
    dest_str[LARGE_STRI_BUFFER_LENGTH] = '\0';
    value = largeint2str->value;
    if (largeint2str->base == 0) {
 result = pRtlLargeIntegerToChar(&value, 10, largeint2str->MaximumLength, dest_str);
    } else {
 result = pRtlLargeIntegerToChar(&value, largeint2str->base, largeint2str->MaximumLength, dest_str);
    }
    ok(result == largeint2str->result,
       "(test %d): RtlLargeIntegerToChar(0x%s, %d, %d, [out]) has result %x, expected: %x\n",
       test_num, wine_dbgstr_longlong(largeint2str->value), largeint2str->base,
       largeint2str->MaximumLength, result, largeint2str->result);
    ok(memcmp(dest_str, largeint2str->Buffer, LARGE_STRI_BUFFER_LENGTH) == 0,
       "(test %d): RtlLargeIntegerToChar(0x%s, %d, %d, [out]) assigns string \"%s\", expected: \"%s\"\n",
       test_num, wine_dbgstr_longlong(largeint2str->value), largeint2str->base,
       largeint2str->MaximumLength, dest_str, largeint2str->Buffer);
}
