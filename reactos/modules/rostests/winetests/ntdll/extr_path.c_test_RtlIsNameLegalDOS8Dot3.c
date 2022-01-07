
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int buffer ;
typedef int buff2 ;
typedef int WCHAR ;
struct TYPE_7__ {int MaximumLength; int * Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_8__ {char* Buffer; int Length; int MaximumLength; } ;
typedef TYPE_2__ OEM_STRING ;
typedef scalar_t__ BOOLEAN ;




 char* lstrlenA (char const*) ;
 int memcmp (char*,char*,scalar_t__) ;
 int ok (int,char*,scalar_t__,char*,char*) ;
 scalar_t__ pRtlIsNameLegalDOS8Dot3 (TYPE_1__*,TYPE_2__*,scalar_t__*) ;
 int pRtlOemStringToUnicodeString (TYPE_1__*,TYPE_2__*,int const) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char toupper (char) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlIsNameLegalDOS8Dot3(void)
{
    struct test
    {
        const char *path;
        BOOLEAN result;
        BOOLEAN spaces;
    };

    static const struct test tests[] =
    {
        { "12345678", 128, 129 },
        { "123 5678", 128, 128 },
        { "12345678.", 129, 2 },
        { "1234 678.", 129, 2 },
        { "12345678.a", 128, 129 },
        { "12345678.a ", 129, 2 },
        { "12345678.a c", 128, 128 },
        { " 2345678.a ", 129, 2 },
        { "1 345678.abc", 128, 128 },
        { "1      8.a c", 128, 128 },
        { "1 3 5 7 .abc", 129, 2 },
        { "12345678.  c", 128, 128 },
        { "123456789.a", 129, 2 },
        { "12345.abcd", 129, 2 },
        { "12345.ab d", 129, 2 },
        { ".abc", 129, 2 },
        { "12.abc.d", 129, 2 },
        { ".", 128, 129 },
        { "..", 128, 129 },
        { "...", 129, 2 },
        { "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 129, 2 },
        { ((void*)0), 0 }
    };

    const struct test *test;
    UNICODE_STRING ustr;
    OEM_STRING oem, oem_ret;
    WCHAR buffer[200];
    char buff2[12];
    BOOLEAN ret, spaces;

    if (!pRtlIsNameLegalDOS8Dot3)
    {
        win_skip("RtlIsNameLegalDOS8Dot3 is not available\n");
        return;
    }

    ustr.MaximumLength = sizeof(buffer);
    ustr.Buffer = buffer;
    for (test = tests; test->path; test++)
    {
        char path[100];
        strcpy(path, test->path);
        oem.Buffer = path;
        oem.Length = strlen(test->path);
        oem.MaximumLength = oem.Length + 1;
        pRtlOemStringToUnicodeString( &ustr, &oem, 129 );
        spaces = 2;
        oem_ret.Length = oem_ret.MaximumLength = sizeof(buff2);
        oem_ret.Buffer = buff2;
        ret = pRtlIsNameLegalDOS8Dot3( &ustr, &oem_ret, &spaces );
        ok( ret == test->result, "Wrong result %d/%d for '%s'\n", ret, test->result, test->path );
        ok( spaces == test->spaces, "Wrong spaces value %d/%d for '%s'\n", spaces, test->spaces, test->path );
        if (strlen(test->path) <= 12)
        {
            char str[13];
            int i;
            strcpy( str, test->path );
            for (i = 0; str[i]; i++) str[i] = toupper(str[i]);
            ok( oem_ret.Length == strlen(test->path), "Wrong length %d/%d for '%s'\n",
                oem_ret.Length, lstrlenA(test->path), test->path );
            ok( !memcmp( oem_ret.Buffer, str, oem_ret.Length ),
                "Wrong string '%.*s'/'%s'\n", oem_ret.Length, oem_ret.Buffer, str );
        }
    }
}
