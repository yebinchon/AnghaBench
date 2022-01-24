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
typedef  int /*<<< orphan*/ * LPSTREAM ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ E_PENDING ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IStream ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 

__attribute__((used)) static HRESULT FUNC7(LPCWSTR szURL, LPSTREAM *ppStream, IBindStatusCallback *pBSC)
{
    HRESULT hr;
    IMoniker *pMoniker;
    IBindCtx *pbc;

    *ppStream = NULL;

    hr = FUNC1(NULL, szURL, &pMoniker);
    if (FUNC2(hr))
        return hr;

    hr = FUNC0(0, &pbc);
    if (FUNC2(hr))
    {
        FUNC5(pMoniker);
        return hr;
    }

    hr = FUNC6(pbc, pBSC, NULL, 0);
    if (FUNC2(hr))
    {
        FUNC3(pbc);
        FUNC5(pMoniker);
        return hr;
    }

    hr = FUNC4(pMoniker, pbc, NULL, &IID_IStream, (void **)ppStream);

    /* BindToStorage returning E_PENDING because it's asynchronous is not an error */
    if (hr == E_PENDING) hr = S_OK;

    FUNC3(pbc);
    FUNC5(pMoniker);

    return hr;
}