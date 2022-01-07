
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* Buffer; int value; int base; } ;
typedef TYPE_1__ ulong2str_t ;
typedef char WCHAR ;
struct TYPE_9__ {int Length; int MaximumLength; char* Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
struct TYPE_10__ {char* Buffer; } ;
typedef TYPE_3__ STRING ;
typedef char* LPWSTR ;


 int LARGE_STRI_BUFFER_LENGTH ;
 scalar_t__ memcmp (char*,char*,int) ;
 int ok (int,char*,int,int,int ,char*,char*) ;
 int pRtlFreeAnsiString (TYPE_3__*) ;
 int pRtlUnicodeStringToAnsiString (TYPE_3__*,TYPE_2__*,int) ;
 char* p_itow (int,char*,int ) ;

__attribute__((used)) static void one_itow_test(int test_num, const ulong2str_t *ulong2str)
{
    int pos;
    WCHAR expected_wstr[LARGE_STRI_BUFFER_LENGTH + 1];
    WCHAR dest_wstr[LARGE_STRI_BUFFER_LENGTH + 1];
    UNICODE_STRING unicode_string;
    STRING ansi_str;
    int value;
    LPWSTR result;

    for (pos = 0; pos < LARGE_STRI_BUFFER_LENGTH; pos++) {
 expected_wstr[pos] = ulong2str->Buffer[pos];
    }
    expected_wstr[LARGE_STRI_BUFFER_LENGTH] = '\0';

    for (pos = 0; pos < LARGE_STRI_BUFFER_LENGTH; pos++) {
 dest_wstr[pos] = '-';
    }
    dest_wstr[LARGE_STRI_BUFFER_LENGTH] = '\0';
    unicode_string.Length = LARGE_STRI_BUFFER_LENGTH * sizeof(WCHAR);
    unicode_string.MaximumLength = unicode_string.Length + sizeof(WCHAR);
    unicode_string.Buffer = dest_wstr;
    value = ulong2str->value;
    result = p_itow(value, dest_wstr, ulong2str->base);
    pRtlUnicodeStringToAnsiString(&ansi_str, &unicode_string, 1);
    ok(result == dest_wstr,
       "(test %d): _itow(%d, [out], %d) has result %p, expected: %p\n",
       test_num, value, ulong2str->base, result, dest_wstr);
    ok(memcmp(dest_wstr, expected_wstr, LARGE_STRI_BUFFER_LENGTH * sizeof(WCHAR)) == 0,
       "(test %d): _itow(%d, [out], %d) assigns string \"%s\", expected: \"%s\"\n",
       test_num, value, ulong2str->base, ansi_str.Buffer, ulong2str->Buffer);
    pRtlFreeAnsiString(&ansi_str);
}
