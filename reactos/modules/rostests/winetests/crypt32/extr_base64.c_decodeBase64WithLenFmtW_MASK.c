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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(LPCSTR strA, int len, DWORD fmt, BOOL retA,
 const BYTE *bufA, DWORD bufLenA, DWORD fmtUsedA)
{
    BYTE buf[8] = {0};
    DWORD bufLen = sizeof(buf)-1, fmtUsed = 0xdeadbeef;
    BOOL ret;
    WCHAR strW[64];
    int i;
    for (i = 0; (strW[i] = strA[i]) != 0; ++i);
    ret = FUNC0(strW, len, fmt, buf, &bufLen, NULL, &fmtUsed);
    FUNC2(ret == retA && bufLen == bufLenA && FUNC1(bufA, buf, bufLen) == 0
     && fmtUsed == fmtUsedA, "base64 \"%s\" len %d: W and A differ\n", strA, len);
}