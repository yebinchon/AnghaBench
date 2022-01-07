
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hash_unicodestring_test {char const* str; int hash; int case_insensitive; } ;
typedef int strW ;
typedef char WCHAR ;
struct TYPE_4__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
typedef scalar_t__ PWSTR ;
typedef int NTSTATUS ;


 int FALSE ;
 int HASH_STRING_ALGORITHM_INVALID ;
 int HASH_STRING_ALGORITHM_X65599 ;
 int RtlInitUnicodeString (TYPE_1__*,char const*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 struct hash_unicodestring_test* hash_test ;
 int ok (int,char*,int,...) ;
 int pRtlHashUnicodeString (TYPE_1__*,int ,int ,int*) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (char const*) ;

__attribute__((used)) static void test_RtlHashUnicodeString(void)
{
    static const WCHAR strW[] = {'T','e','s','t',0,'1',0};
    const struct hash_unicodestring_test *ptr;
    UNICODE_STRING str;
    NTSTATUS status;
    ULONG hash;

    if (!pRtlHashUnicodeString)
    {
        win_skip("RtlHashUnicodeString is not available\n");
        return;
    }

    status = pRtlHashUnicodeString(((void*)0), FALSE, HASH_STRING_ALGORITHM_X65599, &hash);
    ok(status == STATUS_INVALID_PARAMETER, "got status 0x%08x\n", status);

    RtlInitUnicodeString(&str, strW);
    status = pRtlHashUnicodeString(&str, FALSE, HASH_STRING_ALGORITHM_X65599, ((void*)0));
    ok(status == STATUS_INVALID_PARAMETER, "got status 0x%08x\n", status);

    status = pRtlHashUnicodeString(&str, FALSE, HASH_STRING_ALGORITHM_INVALID, &hash);
    ok(status == STATUS_INVALID_PARAMETER, "got status 0x%08x\n", status);


    str.Buffer = (PWSTR)strW;
    str.Length = sizeof(strW) - sizeof(WCHAR);
    str.MaximumLength = sizeof(strW);
    status = pRtlHashUnicodeString(&str, FALSE, HASH_STRING_ALGORITHM_X65599, &hash);
    ok(status == STATUS_SUCCESS, "got status 0x%08x\n", status);
    ok(hash == 0x32803083, "got 0x%08x\n", hash);

    ptr = hash_test;
    while (*ptr->str)
    {
        RtlInitUnicodeString(&str, ptr->str);
        hash = 0;
        status = pRtlHashUnicodeString(&str, ptr->case_insensitive, HASH_STRING_ALGORITHM_X65599, &hash);
        ok(status == STATUS_SUCCESS, "got status 0x%08x for %s\n", status, wine_dbgstr_w(ptr->str));
        ok(hash == ptr->hash, "got wrong hash 0x%08x, expected 0x%08x, for %s, mode %d\n", hash, ptr->hash,
            wine_dbgstr_w(ptr->str), ptr->case_insensitive);

        ptr++;
    }
}
