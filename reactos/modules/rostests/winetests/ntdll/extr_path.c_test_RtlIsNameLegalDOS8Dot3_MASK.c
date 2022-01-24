#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  buff2 ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int MaximumLength; int /*<<< orphan*/ * Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_8__ {char* Buffer; int Length; int MaximumLength; } ;
typedef  TYPE_2__ OEM_STRING ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
#define  FALSE 129 
#define  TRUE 128 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,char*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 char FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    struct test
    {
        const char *path;
        BOOLEAN result;
        BOOLEAN spaces;
    };

    static const struct test tests[] =
    {
        { "12345678",     TRUE,  FALSE },
        { "123 5678",     TRUE,  TRUE  },
        { "12345678.",    FALSE, 2 /*not set*/ },
        { "1234 678.",    FALSE, 2 /*not set*/ },
        { "12345678.a",   TRUE,  FALSE },
        { "12345678.a ",  FALSE, 2 /*not set*/ },
        { "12345678.a c", TRUE,  TRUE  },
        { " 2345678.a ",  FALSE, 2 /*not set*/ },
        { "1 345678.abc", TRUE,  TRUE },
        { "1      8.a c", TRUE,  TRUE },
        { "1 3 5 7 .abc", FALSE, 2 /*not set*/ },
        { "12345678.  c", TRUE,  TRUE },
        { "123456789.a",  FALSE, 2 /*not set*/ },
        { "12345.abcd",   FALSE, 2 /*not set*/ },
        { "12345.ab d",   FALSE, 2 /*not set*/ },
        { ".abc",         FALSE, 2 /*not set*/ },
        { "12.abc.d",     FALSE, 2 /*not set*/ },
        { ".",            TRUE,  FALSE },
        { "..",           TRUE,  FALSE },
        { "...",          FALSE, 2 /*not set*/ },
        { "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", FALSE, 2 /*not set*/ },
        { NULL, 0 }
    };

    const struct test *test;
    UNICODE_STRING ustr;
    OEM_STRING oem, oem_ret;
    WCHAR buffer[200];
    char buff2[12];
    BOOLEAN ret, spaces;

    if (!&pRtlIsNameLegalDOS8Dot3)
    {
        FUNC8("RtlIsNameLegalDOS8Dot3 is not available\n");
        return;
    }

    ustr.MaximumLength = sizeof(buffer);
    ustr.Buffer = buffer;
    for (test = tests; test->path; test++)
    {
        char path[100];
        FUNC5(path, test->path);
        oem.Buffer = path;
        oem.Length = FUNC6(test->path);
        oem.MaximumLength = oem.Length + 1;
        FUNC4( &ustr, &oem, FALSE );
        spaces = 2;
        oem_ret.Length = oem_ret.MaximumLength = sizeof(buff2);
        oem_ret.Buffer = buff2;
        ret = FUNC3( &ustr, &oem_ret, &spaces );
        FUNC2( ret == test->result, "Wrong result %d/%d for '%s'\n", ret, test->result, test->path );
        FUNC2( spaces == test->spaces, "Wrong spaces value %d/%d for '%s'\n", spaces, test->spaces, test->path );
        if (FUNC6(test->path) <= 12)
        {
            char str[13];
            int i;
            FUNC5( str, test->path );
            for (i = 0; str[i]; i++) str[i] = FUNC7(str[i]);
            FUNC2( oem_ret.Length == FUNC6(test->path), "Wrong length %d/%d for '%s'\n",
                oem_ret.Length, FUNC0(test->path), test->path );
            FUNC2( !FUNC1( oem_ret.Buffer, str, oem_ret.Length ),
                "Wrong string '%.*s'/'%s'\n", oem_ret.Length, oem_ret.Buffer, str );
        }
    }
}