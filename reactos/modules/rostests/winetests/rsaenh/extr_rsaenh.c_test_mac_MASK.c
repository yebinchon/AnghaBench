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
typedef  int /*<<< orphan*/  mac_40 ;
typedef  int /*<<< orphan*/  abData ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  HCRYPTHASH ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  CALG_MAC ; 
 int /*<<< orphan*/  CALG_RC2 ; 
 int /*<<< orphan*/  CALG_RC4 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  HP_HASHVAL ; 
 scalar_t__ NTE_BAD_KEY ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  FUNC11 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void) {
    HCRYPTKEY hKey;
    HCRYPTHASH hHash;
    BOOL result;
    DWORD dwLen;
    BYTE abData[256], abEnc[264];
    static const BYTE mac_40[8] = { 0xb7, 0xa2, 0x46, 0xe9, 0x11, 0x31, 0xe0, 0xad};
    int i;

    for (i=0; i < FUNC0(abData); i++) abData[i] = (BYTE)i;
    for (i=0; i < FUNC0(abData); i++) abEnc[i] = (BYTE)i;

    if (!FUNC10(CALG_RC2, &hKey, 40)) return;

    dwLen = 256;
    result = FUNC4(hKey, 0, TRUE, 0, abEnc, &dwLen, 264);
    FUNC12 (result && dwLen == 264, "%08x, dwLen: %d\n", FUNC7(), dwLen);
    
    result = FUNC1(hProv, CALG_MAC, hKey, 0, &hHash);
    FUNC12(result, "%08x\n", FUNC7());
    if (!result) return;

    result = FUNC6(hHash, abData, sizeof(abData), 0);
    FUNC12(result, "%08x\n", FUNC7());

    dwLen = FUNC0(abData);
    result = FUNC5(hHash, HP_HASHVAL, abData, &dwLen, 0);
    FUNC12(result && dwLen == 8, "%08x, dwLen: %d\n", FUNC7(), dwLen);

    FUNC12(!FUNC11(abData, mac_40, sizeof(mac_40)), "MAC failed!\n");
    
    result = FUNC2(hHash);
    FUNC12(result, "%08x\n", FUNC7());
    
    result = FUNC3(hKey);
    FUNC12(result, "%08x\n", FUNC7());
    
    /* Provoke errors */
    if (!FUNC10(CALG_RC4, &hKey, 56)) return;

    FUNC8(0xdeadbeef);
    result = FUNC1(hProv, CALG_MAC, hKey, 0, &hHash);
    FUNC12((!result && FUNC7() == NTE_BAD_KEY) ||
            FUNC9(result), /* Win9x, WinMe, NT4, W2K */
            "%08x\n", FUNC7());

    result = FUNC3(hKey);
    FUNC12(result, "%08x\n", FUNC7());
}