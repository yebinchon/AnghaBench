
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* Buffer; int base; int value; } ;
typedef TYPE_1__ ulonglong2str_t ;
typedef char WCHAR ;
struct TYPE_9__ {int Length; int MaximumLength; char* Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
struct TYPE_10__ {char* Buffer; } ;
typedef TYPE_3__ STRING ;
typedef char* LPWSTR ;


 int LARGE_STRI_BUFFER_LENGTH ;
 scalar_t__ memcmp (char*,char*,int) ;
 int ok (int,char*,int,int ,int ,char*,char*) ;
 int pRtlFreeAnsiString (TYPE_3__*) ;
 int pRtlUnicodeStringToAnsiString (TYPE_3__*,TYPE_2__*,int) ;
 char* p_ui64tow (int ,char*,int ) ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static void one_ui64tow_test(int test_num, const ulonglong2str_t *ulonglong2str)
{
    int pos;
    WCHAR expected_wstr[LARGE_STRI_BUFFER_LENGTH + 1];
    WCHAR dest_wstr[LARGE_STRI_BUFFER_LENGTH + 1];
    UNICODE_STRING unicode_string;
    STRING ansi_str;
    LPWSTR result;

    for (pos = 0; pos < LARGE_STRI_BUFFER_LENGTH; pos++) {
 expected_wstr[pos] = ulonglong2str->Buffer[pos];
    }
    expected_wstr[LARGE_STRI_BUFFER_LENGTH] = '\0';

    for (pos = 0; pos < LARGE_STRI_BUFFER_LENGTH; pos++) {
 dest_wstr[pos] = '-';
    }
    dest_wstr[LARGE_STRI_BUFFER_LENGTH] = '\0';
    unicode_string.Length = LARGE_STRI_BUFFER_LENGTH * sizeof(WCHAR);
    unicode_string.MaximumLength = unicode_string.Length + sizeof(WCHAR);
    unicode_string.Buffer = dest_wstr;

    result = p_ui64tow(ulonglong2str->value, dest_wstr, ulonglong2str->base);
    pRtlUnicodeStringToAnsiString(&ansi_str, &unicode_string, 1);
    ok(result == dest_wstr,
       "(test %d): _ui64tow(0x%s, [out], %d) has result %p, expected: %p\n",
       test_num, wine_dbgstr_longlong(ulonglong2str->value),
       ulonglong2str->base, result, dest_wstr);
    ok(memcmp(dest_wstr, expected_wstr, LARGE_STRI_BUFFER_LENGTH * sizeof(WCHAR)) == 0,
       "(test %d): _ui64tow(0x%s, [out], %d) assigns string \"%s\", expected: \"%s\"\n",
       test_num, wine_dbgstr_longlong(ulonglong2str->value),
       ulonglong2str->base, ansi_str.Buffer, ulonglong2str->Buffer);
    pRtlFreeAnsiString(&ansi_str);
}
