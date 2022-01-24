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
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 char* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    const char str[] = "123";
    char str2[4];
    char *mem, *p;
    DWORD prot;

    mem = FUNC0(NULL, sizeof(str), MEM_COMMIT, PAGE_READWRITE);
    FUNC5(mem != NULL, "VirtualAlloc failed\n");
    FUNC4(mem, str, sizeof(str));
    FUNC5(FUNC2(mem, sizeof(str), PAGE_READONLY, &prot), "VirtualProtect failed\n");

    FUNC8(str2, "aBc");
    p = FUNC3(str2);
    FUNC5(p == str2, "_strupr returned %p\n", p);
    FUNC5(!FUNC7(str2, "ABC"), "str2 = %s\n", str2);

    p = FUNC3(mem);
    FUNC5(p == mem, "_strupr returned %p\n", p);
    FUNC5(!FUNC7(mem, "123"), "mem = %s\n", mem);

    if(!FUNC6(LC_ALL, "english")) {
        FUNC1(mem, sizeof(str), MEM_RELEASE);
        FUNC9("English locale _strupr tests\n");
        return;
    }

    FUNC8(str2, "aBc");
    p = FUNC3(str2);
    FUNC5(p == str2, "_strupr returned %p\n", p);
    FUNC5(!FUNC7(str2, "ABC"), "str2 = %s\n", str2);

    if (0) /* crashes on Windows */
    {
        p = FUNC3(mem);
        FUNC5(p == mem, "_strupr returned %p\n", p);
        FUNC5(!FUNC7(mem, "123"), "mem = %s\n", mem);
    }

    FUNC6(LC_ALL, "C");
    FUNC1(mem, sizeof(str), MEM_RELEASE);
}