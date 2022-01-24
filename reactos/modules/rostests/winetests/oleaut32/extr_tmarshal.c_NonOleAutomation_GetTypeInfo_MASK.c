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
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  IID_INonOleAutomation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIBID_TestTypelib ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **)) ; 

__attribute__((used)) static ITypeInfo *FUNC5(void)
{
    ITypeLib *pTypeLib;
    HRESULT hr = FUNC2(&LIBID_TestTypelib, 2, 5, LOCALE_NEUTRAL, &pTypeLib);
    FUNC4(hr, LoadRegTypeLib);
    if (FUNC3(hr))
    {
        ITypeInfo *pTypeInfo;
        hr = FUNC0(pTypeLib, &IID_INonOleAutomation, &pTypeInfo);
        FUNC4(hr, ITypeLib_GetTypeInfoOfGuid);
        FUNC1(pTypeLib);
        return pTypeInfo;
    }
    return NULL;
}