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
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  TAG_CHECKSUM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ g_AttrInfoSize ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(size_t len, DWORD expected)
{
    static const WCHAR path[] = {'t','e','s','t','x','x','.','e','x','e',0};
    static char crc_test[] = {4, 4, 4, 4, 1, 1, 1, 1, 4, 4, 4, 4, 2, 2, 2, 2};

    PATTRINFO pattrinfo = (PATTRINFO)0xdead;
    DWORD num = 333;
    BOOL ret;

    FUNC3(L"testxx.exe", crc_test, len);
    ret = FUNC2(path, &pattrinfo, &num);
    FUNC4(ret != FALSE, "expected SdbGetFileAttributes to succeed.\n");
    FUNC4(pattrinfo != (PATTRINFO)0xdead, "expected a valid pointer.\n");
    FUNC4(num == g_AttrInfoSize, "expected %u items, got %d.\n", g_AttrInfoSize, num);

    if (num == g_AttrInfoSize && ret)
    {
        FUNC0(pattrinfo, TAG_CHECKSUM, expected);
    }
    if (ret)
        FUNC1(pattrinfo);
}