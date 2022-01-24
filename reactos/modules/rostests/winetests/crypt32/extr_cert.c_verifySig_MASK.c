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
typedef  int /*<<< orphan*/  mySig ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTHASH ;
typedef  unsigned int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SIGNATURE ; 
 int /*<<< orphan*/  CALG_SHA1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(HCRYPTPROV csp, const BYTE *toSign, size_t toSignLen,
 const BYTE *sig, unsigned int sigLen)
{
    HCRYPTHASH hash;
    BOOL ret = FUNC0(csp, CALG_SHA1, 0, 0, &hash);

    FUNC6(ret, "CryptCreateHash failed: %08x\n", FUNC4());
    if (ret)
    {
        BYTE mySig[64];
        DWORD mySigSize = sizeof(mySig);

        ret = FUNC2(hash, toSign, toSignLen, 0);
        FUNC6(ret, "CryptHashData failed: %08x\n", FUNC4());
        /* use the A variant so the test can run on Win9x */
        ret = FUNC3(hash, AT_SIGNATURE, NULL, 0, mySig, &mySigSize);
        FUNC6(ret, "CryptSignHash failed: %08x\n", FUNC4());
        if (ret)
        {
            FUNC6(mySigSize == sigLen, "Expected sig length %d, got %d\n",
             sigLen, mySigSize);
            FUNC6(!FUNC5(mySig, sig, sigLen), "Unexpected signature\n");
        }
        FUNC1(hash);
    }
}