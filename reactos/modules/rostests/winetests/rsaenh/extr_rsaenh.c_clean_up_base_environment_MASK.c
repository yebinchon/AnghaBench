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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_DELETEKEYSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ NTE_BAD_FLAGS ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  szContainer ; 
 int /*<<< orphan*/  szProvider ; 

__attribute__((used)) static void FUNC6(void)
{
    BOOL result;

    FUNC3(0xdeadbeef);
    result = FUNC1(hProv, 1);
    FUNC5(!result || FUNC4(result) /* Win98 */, "Expected failure\n");
    FUNC5(FUNC2()==NTE_BAD_FLAGS, "Expected NTE_BAD_FLAGS, got %08x\n", FUNC2());
        
    /* Just to prove that Win98 also released the CSP */
    FUNC3(0xdeadbeef);
    result = FUNC1(hProv, 0);
    FUNC5(!result && FUNC2()==ERROR_INVALID_PARAMETER, "%08x\n", FUNC2());

    FUNC0(&hProv, szContainer, szProvider, PROV_RSA_FULL, CRYPT_DELETEKEYSET);
}