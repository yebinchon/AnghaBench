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
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int CRYPT_DELETEKEYSET ; 
 int CRYPT_MACHINE_KEYSET ; 
 int CRYPT_NEWKEYSET ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OWNER_SECURITY_INFORMATION ; 
 int /*<<< orphan*/  PP_KEYSET_SEC_DESCR ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    HCRYPTPROV prov;
    SECURITY_DESCRIPTOR *sd;
    DWORD len, err;
    BOOL ret;

    ret = FUNC0(&prov, "winetest", "Microsoft Enhanced Cryptographic Provider v1.0",
                               PROV_RSA_FULL, CRYPT_MACHINE_KEYSET|CRYPT_NEWKEYSET);
    FUNC9(ret, "got %u\n", FUNC3());

    len = 0;
    FUNC7(0xdeadbeef);
    ret = FUNC1(prov, PP_KEYSET_SEC_DESCR, NULL, &len, OWNER_SECURITY_INFORMATION);
    err = FUNC3();
    FUNC9(ret, "got %u\n", err);
    FUNC9(err == ERROR_INSUFFICIENT_BUFFER || FUNC8(err == ERROR_INVALID_PARAMETER), "got %u\n", err);
    FUNC9(len, "expected len > 0\n");

    sd = FUNC5(FUNC4(), 0, len);
    ret = FUNC1(prov, PP_KEYSET_SEC_DESCR, (BYTE *)sd, &len, OWNER_SECURITY_INFORMATION);
    FUNC9(ret, "got %u\n", FUNC3());
    FUNC6(FUNC4(), 0, sd);

    ret = FUNC2(prov, 0);
    FUNC9(ret, "got %u\n", FUNC3());

    ret = FUNC0(&prov, "winetest", "Microsoft Enhanced Cryptographic Provider v1.0",
                               PROV_RSA_FULL, CRYPT_MACHINE_KEYSET|CRYPT_DELETEKEYSET);
    FUNC9(ret, "got %u\n", FUNC3());
}