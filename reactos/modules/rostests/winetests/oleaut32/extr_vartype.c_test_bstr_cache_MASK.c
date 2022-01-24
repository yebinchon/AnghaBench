#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ DWORD_PTR ;
typedef  scalar_t__ BSTR ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    BSTR str, str2, strs[20];
    unsigned i;

    static const WCHAR testW[] = {'t','e','s','t',0};

    if (FUNC2("OANOCACHE", NULL, 0)) {
        FUNC9("BSTR cache is disabled, some tests will be skipped.\n");
        return;
    }

    str = FUNC3(testW);
    /* This should put the string into cache */
    FUNC5(str);
    /* The string is in cache, this won't touch it */
    FUNC5(str);

    FUNC8(FUNC6(str) == 4, "unexpected len\n");
    FUNC8(!FUNC7(str, testW), "string changed\n");

    str2 = FUNC3(testW);
    FUNC8(str == str2, "str != str2\n");
    FUNC5(str2);

    /* Fill the bucket with cached entries.
       We roll our own, to show that the cache doesn't use
       the bstr length field to determine bucket allocation. */
    for(i=0; i < FUNC0(strs); i++)
    {
        DWORD_PTR *ptr = FUNC1(64);
        ptr[0] = 0;
        strs[i] = (BSTR)(ptr + 1);
    }
    for(i=0; i < FUNC0(strs); i++)
        FUNC5(strs[i]);

    /* Following allocation will be made from cache */
    str = FUNC4(NULL, 24);
    FUNC8(str == strs[0], "str != strs[0]\n");

    /* Smaller buffers may also use larget cached buffers */
    str2 = FUNC4(NULL, 16);
    FUNC8(str2 == strs[1], "str2 != strs[1]\n");

    FUNC5(str);
    FUNC5(str2);
    FUNC5(str);
    FUNC5(str2);
}