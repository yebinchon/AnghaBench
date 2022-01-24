#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hmac ;
typedef  int /*<<< orphan*/  abData ;
struct TYPE_2__ {int /*<<< orphan*/  member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ HMAC_INFO ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  HCRYPTHASH ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  CALG_HMAC ; 
 int /*<<< orphan*/  CALG_MD5 ; 
 int /*<<< orphan*/  CALG_RC2 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  HP_HASHVAL ; 
 int /*<<< orphan*/  HP_HMAC_INFO ; 
 scalar_t__ NTE_BAD_KEY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  FUNC9 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void) {
    HCRYPTKEY hKey;
    HCRYPTHASH hHash;
    BOOL result;
    /* Using CALG_MD2 here fails on Windows 2003, why ? */
    HMAC_INFO hmacInfo = { CALG_MD5, NULL, 0, NULL, 0 };
    DWORD dwLen;
    BYTE abData[256];
    static const BYTE hmac[16] = { 
        0x1a, 0x7d, 0x49, 0xc5, 0x9b, 0x2d, 0x0b, 0x9c, 
        0xcf, 0x10, 0x6b, 0xb6, 0x7d, 0x0f, 0x13, 0x32 };
    int i;

    for (i=0; i < FUNC0(abData); i++) abData[i] = (BYTE)i;

    if (!FUNC8(CALG_RC2, &hKey, 56)) return;

    result = FUNC1(hProv, CALG_HMAC, hKey, 0, &hHash);
    FUNC10(result, "%08x\n", FUNC7());
    if (!result) return;

    result = FUNC6(hHash, HP_HMAC_INFO, (BYTE*)&hmacInfo, 0);
    FUNC10(result, "%08x\n", FUNC7());

    result = FUNC5(hHash, abData, sizeof(abData), 0);
    FUNC10(result, "%08x\n", FUNC7());

    dwLen = FUNC0(abData);
    result = FUNC4(hHash, HP_HASHVAL, abData, &dwLen, 0);
    FUNC10(result, "%08x\n", FUNC7());

    FUNC10(!FUNC9(abData, hmac, sizeof(hmac)), "HMAC failed!\n");
    
    result = FUNC2(hHash);
    FUNC10(result, "%08x\n", FUNC7());
    
    result = FUNC3(hKey);
    FUNC10(result, "%08x\n", FUNC7());

    /* Provoke errors */
    result = FUNC1(hProv, CALG_HMAC, 0, 0, &hHash);
    FUNC10(!result && FUNC7() == NTE_BAD_KEY, "%08x\n", FUNC7());
}