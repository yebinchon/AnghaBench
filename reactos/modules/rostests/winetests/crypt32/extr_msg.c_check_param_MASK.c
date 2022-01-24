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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HCRYPTMSG ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CRYPT_E_INVALID_MSG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ OSS_LIMITED ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9(LPCSTR test, HCRYPTMSG msg, DWORD param,
 const BYTE *expected, DWORD expectedSize)
{
    DWORD size;
    LPBYTE buf;
    BOOL ret;

    size = 0xdeadbeef;
    ret = FUNC0(msg, param, 0, NULL, &size);
    FUNC7(ret || FUNC5(FUNC1() == OSS_LIMITED /* Win9x */ ||
     FUNC1() == CRYPT_E_INVALID_MSG_TYPE /* Win9x, for some params */),
     "%s: CryptMsgGetParam failed: %08x\n", test, FUNC1());
    if (!ret)
    {
        FUNC8("parameter %d not supported, skipping tests\n", param);
        return;
    }
    buf = FUNC3(FUNC2(), 0, size);
    ret = FUNC0(msg, param, 0, buf, &size);
    FUNC7(ret, "%s: CryptMsgGetParam failed: %08x\n", test, FUNC1());
    FUNC7(size == expectedSize, "%s: expected size %d, got %d\n", test,
     expectedSize, size);
    if (size == expectedSize && size)
        FUNC7(!FUNC6(buf, expected, size), "%s: unexpected data\n", test);
    FUNC4(FUNC2(), 0, buf);
}