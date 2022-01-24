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
typedef  scalar_t__ PATTRINFO ;
typedef  size_t DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  TAG_CHECKSUM ; 
 int /*<<< orphan*/  TAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t g_AttrInfoSize ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char const*,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(DWORD len, int fill, DWORD expected)
{
    static const WCHAR path[] = {'t','e','s','t','x','x','.','e','x','e',0};

    PATTRINFO pattrinfo = (PATTRINFO)0xdead;
    DWORD num = 333;
    BOOL ret;
    size_t n;
    char* crc_test = FUNC2(len);
    for (n = 0; n < len; ++n)
        crc_test[n] = (char)(fill ? fill : n);

    FUNC5(L"testxx.exe", crc_test, len);
    FUNC1(crc_test);
    ret = FUNC4(path, &pattrinfo, &num);
    FUNC6(ret != FALSE, "expected SdbGetFileAttributes to succeed.\n");
    FUNC6(pattrinfo != (PATTRINFO)0xdead, "expected a valid pointer.\n");
    FUNC6(num == g_AttrInfoSize, "expected %u items, got %d.\n", g_AttrInfoSize, num);

    if (num == g_AttrInfoSize && ret)
    {
        FUNC0(pattrinfo, TAG_SIZE, len);
        FUNC0(pattrinfo, TAG_CHECKSUM, expected);
    }
    if (ret)
        FUNC3(pattrinfo);
}