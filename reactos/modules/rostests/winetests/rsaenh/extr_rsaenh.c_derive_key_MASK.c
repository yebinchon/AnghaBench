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
typedef  int /*<<< orphan*/  pbData ;
typedef  scalar_t__ HCRYPTKEY ;
typedef  int /*<<< orphan*/  HCRYPTHASH ;
typedef  int DWORD ;
typedef  int BOOL ;
typedef  int /*<<< orphan*/  ALG_ID ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_MD2 ; 
 int CRYPT_EXPORTABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  HP_HASHVAL ; 
 scalar_t__ NTE_BAD_ALGID ; 
 int TRUE ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC7(ALG_ID aiAlgid, HCRYPTKEY *phKey, DWORD len) 
{
    HCRYPTHASH hHash;
    BOOL result;
    unsigned char pbData[2000];
    int i;

    *phKey = 0;
    for (i=0; i<2000; i++) pbData[i] = (unsigned char)i;
    result = FUNC0(hProv, CALG_MD2, 0, 0, &hHash);
    if (!result) {
        /* rsaenh compiled without OpenSSL */
        FUNC6(FUNC5()==NTE_BAD_ALGID, "%08x\n", FUNC5());
        return FALSE;
    } 
    FUNC6(result, "%08x\n", FUNC5());
    result = FUNC4(hHash, pbData, sizeof(pbData), 0);
    FUNC6(result, "%08x\n", FUNC5());
    if (!result) return FALSE;
    result = FUNC1(hProv, aiAlgid, hHash, (len << 16) | CRYPT_EXPORTABLE, phKey);
    FUNC6(result, "%08x\n", FUNC5());
    if (!result) return FALSE;
    len = 2000;
    result = FUNC3(hHash, HP_HASHVAL, pbData, &len, 0);
    FUNC6(result, "%08x\n", FUNC5());
    FUNC2(hHash);
    return TRUE;
}