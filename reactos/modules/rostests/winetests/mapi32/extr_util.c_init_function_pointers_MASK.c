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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  hMapi32 ; 
 void* pCbOfEncoded ; 
 void* pDeinitMapiUtil ; 
 void* pFBinFromHex ; 
 void* pHexFromBin ; 
 void* pIsBadBoundedStringPtr ; 
 void* pMAPIInitialize ; 
 void* pMAPIUninitialize ; 
 void* pScInitMapiUtil ; 
 void* pSwapPlong ; 
 void* pSwapPword ; 
 void* pUFromSz ; 
 void* pUlFromSzHex ; 

__attribute__((used)) static void FUNC2(void)
{
    hMapi32 = FUNC1("mapi32.dll");

    pScInitMapiUtil = (void*)FUNC0(hMapi32, "ScInitMapiUtil@4");
    pDeinitMapiUtil = (void*)FUNC0(hMapi32, "DeinitMapiUtil@0");
    pSwapPword = (void*)FUNC0(hMapi32, "SwapPword@8");
    pSwapPlong = (void*)FUNC0(hMapi32, "SwapPlong@8");
    pHexFromBin = (void*)FUNC0(hMapi32, "HexFromBin@12");
    pFBinFromHex = (void*)FUNC0(hMapi32, "FBinFromHex@8");
    pUFromSz = (void*)FUNC0(hMapi32, "UFromSz@4");
    pUlFromSzHex = (void*)FUNC0(hMapi32, "UlFromSzHex@4");
    pCbOfEncoded = (void*)FUNC0(hMapi32, "CbOfEncoded@4");
    pIsBadBoundedStringPtr = (void*)FUNC0(hMapi32, "IsBadBoundedStringPtr@8");
    pMAPIInitialize = (void*)FUNC0(hMapi32, "MAPIInitialize");
    pMAPIUninitialize = (void*)FUNC0(hMapi32, "MAPIUninitialize");
}