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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IFilterMapper2 ;
typedef  int /*<<< orphan*/  IFilterGraph2 ;
typedef  int /*<<< orphan*/  IFilterGraph ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_FilterGraph ; 
 int /*<<< orphan*/  CLSID_FilterMapper2 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int E_NOINTERFACE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IFilterGraph ; 
 int /*<<< orphan*/  IID_IFilterGraph2 ; 
 int /*<<< orphan*/  IID_IFilterMapper2 ; 
 int S_OK ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    IFilterGraph2* pgraph2 = NULL;
    IFilterMapper2 *pMapper2 = NULL;
    IFilterGraph *filtergraph = NULL;
    HRESULT hr;
    ULONG refcount;

    hr = FUNC0(&CLSID_FilterGraph, NULL, CLSCTX_INPROC_SERVER, &IID_IFilterGraph2, (LPVOID*)&pgraph2);
    FUNC8(hr == S_OK, "CoCreateInstance failed with %08x\n", hr);
    if (!pgraph2) goto out;

    hr = FUNC1(pgraph2, &IID_IFilterMapper2, (LPVOID*)&pMapper2);
    FUNC8(hr == S_OK, "IFilterGraph2_QueryInterface failed with %08x\n", hr);
    if (!pMapper2) goto out;

    refcount = FUNC7((IUnknown*)pgraph2);
    FUNC8(refcount == 2, "unexpected reference count: %u\n", refcount);
    refcount = FUNC7((IUnknown*)pMapper2);
    FUNC8(refcount == 2, "unexpected reference count: %u\n", refcount);

    FUNC4(pMapper2);
    refcount = FUNC7((IUnknown*)pgraph2);
    FUNC8(refcount == 3, "unexpected reference count: %u\n", refcount);
    refcount = FUNC7((IUnknown*)pMapper2);
    FUNC8(refcount == 3, "unexpected reference count: %u\n", refcount);
    FUNC6(pMapper2);

    hr = FUNC5(pMapper2, &IID_IFilterGraph, (LPVOID*)&filtergraph);
    FUNC8(hr == S_OK, "IFilterMapper2_QueryInterface failed with %08x\n", hr);
    if (!filtergraph) goto out;

    FUNC6(pMapper2);
    pMapper2 = NULL;
    FUNC3(filtergraph);
    filtergraph = NULL;

    hr = FUNC0(&CLSID_FilterMapper2, NULL, CLSCTX_INPROC_SERVER, &IID_IFilterMapper2, (LPVOID*)&pMapper2);
    FUNC8(hr == S_OK, "CoCreateInstance failed with %08x\n", hr);
    if (!pMapper2) goto out;

    hr = FUNC5(pMapper2, &IID_IFilterGraph, (LPVOID*)&filtergraph);
    FUNC8(hr == E_NOINTERFACE, "IFilterMapper2_QueryInterface unexpected result: %08x\n", hr);

    out:

    if (pMapper2) FUNC6(pMapper2);
    if (filtergraph) FUNC3(filtergraph);
    if (pgraph2) FUNC2(pgraph2);
}