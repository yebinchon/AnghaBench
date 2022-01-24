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
typedef  int /*<<< orphan*/  PSTIW ;
typedef  int /*<<< orphan*/  PSTIA ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  IID_IStillImageA ; 
 int /*<<< orphan*/  IID_IStillImageW ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int STI_VERSION_FLAG_UNICODE ; 
 int STI_VERSION_REAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7( REFIID riid, IUnknown *pUnkOuter, LPVOID *ppObj )
{
    if (pUnkOuter != NULL && !FUNC3(riid, &IID_IUnknown))
        return CLASS_E_NOAGGREGATION;

    if (FUNC2(riid, &IID_IUnknown))
        return FUNC5(FUNC1(), STI_VERSION_REAL | STI_VERSION_FLAG_UNICODE, (PSTIW*) ppObj, pUnkOuter);
    else if (FUNC2(riid, &IID_IStillImageW))
        return FUNC5(FUNC1(), STI_VERSION_REAL | STI_VERSION_FLAG_UNICODE, (PSTIW*) ppObj, NULL);
    else if (FUNC2(riid, &IID_IStillImageA))
        return FUNC4(FUNC1(), STI_VERSION_REAL, (PSTIA*) ppObj, NULL);
    else
    {
        FUNC0("no interface %s\n", FUNC6(riid));
        return E_NOINTERFACE;
    }
}