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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hAdvPack ; 
 void* pCloseINFEngine ; 
 void* pDelNode ; 
 void* pGetVersionFromFile ; 
 void* pOpenINFEngine ; 
 void* pSetPerUserSecValues ; 
 void* pTranslateInfString ; 
 void* pTranslateInfStringEx ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static BOOL FUNC4(void)
{
    hAdvPack = FUNC2("advpack.dll");

    if (!hAdvPack)
        return FALSE;

    pCloseINFEngine = (void*)FUNC1(hAdvPack, "CloseINFEngine");
    pDelNode = (void *)FUNC1(hAdvPack, "DelNode");
    pGetVersionFromFile = (void *)FUNC1(hAdvPack, "GetVersionFromFile");
    pOpenINFEngine = (void*)FUNC1(hAdvPack, "OpenINFEngine");
    pSetPerUserSecValues = (void*)FUNC1(hAdvPack, "SetPerUserSecValues");
    pTranslateInfString = (void *)FUNC1(hAdvPack, "TranslateInfString");
    pTranslateInfStringEx = (void*)FUNC1(hAdvPack, "TranslateInfStringEx");

    if (!pCloseINFEngine || !pDelNode || !pGetVersionFromFile ||
        !pOpenINFEngine || !pSetPerUserSecValues || !pTranslateInfString)
    {
        FUNC3("Needed functions are not available\n");
        FUNC0(hAdvPack);
        return FALSE;
    }

    return TRUE;
}