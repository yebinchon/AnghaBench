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
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIBID_TestTypelib ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **)) ; 

__attribute__((used)) static ITypeInfo *FUNC5(REFIID riid)
{
    ITypeInfo *pTypeInfo;
    ITypeLib *pTypeLib;
    HRESULT hr;

    hr = FUNC3(&LIBID_TestTypelib, 2, 5, LOCALE_NEUTRAL, &pTypeLib);
    FUNC4(hr, LoadRegTypeLib);
    if (FUNC0(hr))
        return NULL;

    hr = FUNC1(pTypeLib, riid, &pTypeInfo);
    FUNC2(pTypeLib);
    FUNC4(hr, ITypeLib_GetTypeInfoOfGuid);
    if (FUNC0(hr))
        return NULL;

    return pTypeInfo;
}