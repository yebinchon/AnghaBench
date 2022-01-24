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
typedef  int /*<<< orphan*/ * PCERT_PUBLIC_KEY_INFO ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_DELETEKEYSET ; 
 int /*<<< orphan*/  CRYPT_NEWKEYSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MS_DEF_PROV_A ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  cspName ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
    HCRYPTPROV csp;
    BOOL ret;
    PCERT_PUBLIC_KEY_INFO info = NULL;

    /* Just in case a previous run failed, delete this thing */
    FUNC0(&csp, cspName, MS_DEF_PROV_A, PROV_RSA_FULL,
     CRYPT_DELETEKEYSET);
    ret = FUNC0(&csp, cspName, MS_DEF_PROV_A, PROV_RSA_FULL,
     CRYPT_NEWKEYSET);
    FUNC4(ret,"CryptAcquireContextA failed\n");

    FUNC5(csp, &info);
    FUNC6(csp, info);

    FUNC3(FUNC2(), 0, info);
    FUNC1(csp, 0);
    ret = FUNC0(&csp, cspName, MS_DEF_PROV_A, PROV_RSA_FULL,
     CRYPT_DELETEKEYSET);
    FUNC4(ret,"CryptAcquireContextA failed\n");
}