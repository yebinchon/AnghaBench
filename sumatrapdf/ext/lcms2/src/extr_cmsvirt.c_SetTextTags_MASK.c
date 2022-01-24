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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char const*) ; 
 int /*<<< orphan*/  cmsSigCopyrightTag ; 
 int /*<<< orphan*/  cmsSigProfileDescriptionTag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsBool FUNC4(cmsContext ContextID, cmsHPROFILE hProfile, const wchar_t* Description)
{
    cmsMLU *DescriptionMLU, *CopyrightMLU;
    cmsBool  rc = FALSE;

    DescriptionMLU  = FUNC0(ContextID, 1);
    CopyrightMLU    = FUNC0(ContextID, 1);

    if (DescriptionMLU == NULL || CopyrightMLU == NULL) goto Error;

    if (!FUNC2(ContextID, DescriptionMLU,  "en", "US", Description)) goto Error;
    if (!FUNC2(ContextID, CopyrightMLU,    "en", "US", L"No copyright, use freely")) goto Error;

    if (!FUNC3(ContextID, hProfile, cmsSigProfileDescriptionTag,  DescriptionMLU)) goto Error;
    if (!FUNC3(ContextID, hProfile, cmsSigCopyrightTag,           CopyrightMLU)) goto Error;

    rc = TRUE;

Error:

    if (DescriptionMLU)
        FUNC1(ContextID, DescriptionMLU);
    if (CopyrightMLU)
        FUNC1(ContextID, CopyrightMLU);
    return rc;
}