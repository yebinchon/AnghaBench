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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* pFmtIdToPropStgName ; 
 void* pPropStgNameToFmtId ; 
 void* pStgCreatePropSetStg ; 
 void* pStgCreatePropStg ; 
 void* pStgOpenPropStg ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hmod = FUNC0("ole32.dll");
    pFmtIdToPropStgName = (void*)FUNC1(hmod, "FmtIdToPropStgName");
    pPropStgNameToFmtId = (void*)FUNC1(hmod, "PropStgNameToFmtId");
    pStgCreatePropSetStg = (void*)FUNC1(hmod, "StgCreatePropSetStg");
    pStgCreatePropStg = (void*)FUNC1(hmod, "StgCreatePropStg");
    pStgOpenPropStg = (void*)FUNC1(hmod, "StgOpenPropStg");
}