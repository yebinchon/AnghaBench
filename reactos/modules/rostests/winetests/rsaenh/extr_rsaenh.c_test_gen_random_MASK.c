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
typedef  int /*<<< orphan*/  rnd2 ;
typedef  int /*<<< orphan*/  rnd1 ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ NTE_FAIL ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    BOOL result;
    BYTE rnd1[16], rnd2[16];

    FUNC3(rnd1, 0, sizeof(rnd1));
    FUNC3(rnd2, 0, sizeof(rnd2));

    result = FUNC0(hProv, sizeof(rnd1), rnd1);
    if (!result && FUNC1() == NTE_FAIL) {
        /* rsaenh compiled without OpenSSL */
        return;
    }
    
    FUNC4(result, "%08x\n", FUNC1());

    result = FUNC0(hProv, sizeof(rnd2), rnd2);
    FUNC4(result, "%08x\n", FUNC1());

    FUNC4(FUNC2(rnd1, rnd2, sizeof(rnd1)), "CryptGenRandom generates non random data\n");
}