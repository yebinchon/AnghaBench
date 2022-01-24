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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  hMapi32 ; 
 void* pCreateIProp ; 
 void* pDeinitMapiUtil ; 
 void* pFBadColumnSet ; 
 void* pFBadProp ; 
 void* pFBadPropTag ; 
 void* pFBadRglpszA ; 
 void* pFBadRglpszW ; 
 void* pFBadRow ; 
 void* pFBadRowSet ; 
 void* pFPropCompareProp ; 
 void* pFPropContainsProp ; 
 void* pLPropCompareProp ; 
 void* pLpValFindProp ; 
 void* pMAPIAllocateBuffer ; 
 void* pMAPIAllocateMore ; 
 void* pMAPIFreeBuffer ; 
 void* pMAPIInitialize ; 
 void* pMAPIUninitialize ; 
 void* pPpropFindProp ; 
 void* pPropCopyMore ; 
 void* pScCopyProps ; 
 void* pScCountProps ; 
 void* pScInitMapiUtil ; 
 void* pScRelocProps ; 
 void* pUlPropSize ; 

__attribute__((used)) static BOOL FUNC2(void)
{
    hMapi32 = FUNC1("mapi32.dll");

    pPropCopyMore = (void*)FUNC0(hMapi32, "PropCopyMore@16");
    pUlPropSize = (void*)FUNC0(hMapi32, "UlPropSize@4");
    pFPropContainsProp = (void*)FUNC0(hMapi32, "FPropContainsProp@12");
    pFPropCompareProp = (void*)FUNC0(hMapi32, "FPropCompareProp@12");
    pLPropCompareProp = (void*)FUNC0(hMapi32, "LPropCompareProp@8");
    pPpropFindProp = (void*)FUNC0(hMapi32, "PpropFindProp@12");
    pScCountProps = (void*)FUNC0(hMapi32, "ScCountProps@12");
    pScCopyProps = (void*)FUNC0(hMapi32, "ScCopyProps@16");
    pScRelocProps = (void*)FUNC0(hMapi32, "ScRelocProps@20");
    pLpValFindProp = (void*)FUNC0(hMapi32, "LpValFindProp@12");
    pFBadRglpszA = (void*)FUNC0(hMapi32, "FBadRglpszA@8");
    pFBadRglpszW = (void*)FUNC0(hMapi32, "FBadRglpszW@8");
    pFBadRowSet = (void*)FUNC0(hMapi32, "FBadRowSet@4");
    pFBadPropTag = (void*)FUNC0(hMapi32, "FBadPropTag@4");
    pFBadRow = (void*)FUNC0(hMapi32, "FBadRow@4");
    pFBadProp = (void*)FUNC0(hMapi32, "FBadProp@4");
    pFBadColumnSet = (void*)FUNC0(hMapi32, "FBadColumnSet@4");
    pCreateIProp = (void*)FUNC0(hMapi32, "CreateIProp@24");

    pScInitMapiUtil = (void*)FUNC0(hMapi32, "ScInitMapiUtil@4");
    pDeinitMapiUtil = (void*)FUNC0(hMapi32, "DeinitMapiUtil@0");
    pMAPIAllocateBuffer = (void*)FUNC0(hMapi32, "MAPIAllocateBuffer");
    pMAPIAllocateMore = (void*)FUNC0(hMapi32, "MAPIAllocateMore");
    pMAPIFreeBuffer = (void*)FUNC0(hMapi32, "MAPIFreeBuffer");
    pMAPIInitialize = (void*)FUNC0(hMapi32, "MAPIInitialize");
    pMAPIUninitialize = (void*)FUNC0(hMapi32, "MAPIUninitialize");

    return pMAPIAllocateBuffer && pMAPIAllocateMore && pMAPIFreeBuffer &&
           pScInitMapiUtil && pDeinitMapiUtil;
}