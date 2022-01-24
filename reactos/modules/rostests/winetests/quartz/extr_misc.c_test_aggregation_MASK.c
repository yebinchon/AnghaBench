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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IID ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IGraphConfig ; 
 int /*<<< orphan*/  const IID_IUnknown ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(const CLSID clsidOuter, const CLSID clsidInner,
                             const IID iidOuter, const IID iidInner)
{
    HRESULT hr;
    ULONG refCount;
    IUnknown *pUnkOuter = NULL;
    IUnknown *pUnkInner = NULL;
    IUnknown *pUnkInnerFail = NULL;
    IUnknown *pUnkOuterTest = NULL;
    IUnknown *pUnkInnerTest = NULL;
    IUnknown *pUnkAggregatee = NULL;
    IUnknown *pUnkAggregator = NULL;
    IUnknown *pUnkTest = NULL;

    hr = FUNC1(&clsidOuter, NULL, CLSCTX_INPROC_SERVER,
                          &IID_IUnknown, (LPVOID*)&pUnkOuter);
    FUNC9(hr == S_OK, "CoCreateInstance failed with %x\n", hr);
    FUNC9(pUnkOuter != NULL, "pUnkOuter is NULL\n");

    if (!pUnkOuter)
    {
        FUNC10("pUnkOuter is NULL\n");
        return;
    }

    /* for aggregation, we should only be able to request IUnknown */
    hr = FUNC1(&clsidInner, pUnkOuter, CLSCTX_INPROC_SERVER,
                          &iidInner, (LPVOID*)&pUnkInnerFail);
    if (hr == REGDB_E_CLASSNOTREG)
    {
        FUNC10("Class not registered\n");
        return;
    }
    FUNC9(hr == E_NOINTERFACE, "CoCreateInstance returned %x\n", hr);
    FUNC9(pUnkInnerFail == NULL, "pUnkInnerFail is not NULL\n");

    /* aggregation, request IUnknown */
    hr = FUNC1(&clsidInner, pUnkOuter, CLSCTX_INPROC_SERVER,
                          &IID_IUnknown, (LPVOID*)&pUnkInner);
    FUNC9(hr == S_OK, "CoCreateInstance returned %x\n", hr);
    FUNC9(pUnkInner != NULL, "pUnkInner is NULL\n");

    if (!pUnkInner)
    {
        FUNC10("pUnkInner is NULL\n");
        return;
    }

    FUNC0(pUnkOuter, 2);
    FUNC0(pUnkInner, 2);
    FUNC7(pUnkOuter, 1);
    FUNC7(pUnkInner, 1);

    FUNC5(pUnkOuter, iidInner, pUnkAggregatee);
    FUNC5(pUnkInner, iidOuter, pUnkAggregator);

    /* these QueryInterface calls should work */
    FUNC6(pUnkOuter, iidOuter, pUnkAggregator);
    FUNC6(pUnkOuter, IID_IUnknown, pUnkOuterTest);
    /* IGraphConfig interface comes with DirectShow 9 */
    if(FUNC4(&IID_IGraphConfig, &iidInner))
    {
        hr = FUNC2(pUnkInner, &iidInner, (LPVOID*)&pUnkAggregatee);
        FUNC9(hr == S_OK || FUNC8(hr == E_NOINTERFACE), "IUnknown_QueryInterface returned %x\n", hr);
        FUNC9(pUnkAggregatee != NULL || FUNC8(!pUnkAggregatee), "Pointer is NULL\n");
    }
    else
    {
        FUNC6(pUnkInner, iidInner, pUnkAggregatee);
    }
    FUNC6(pUnkInner, IID_IUnknown, pUnkInnerTest);

    if (!pUnkAggregator || !pUnkOuterTest || !pUnkAggregatee
                    || !pUnkInnerTest)
    {
        FUNC10("One of the required interfaces is NULL\n");
        return;
    }

    FUNC0(pUnkAggregator, 5);
    FUNC0(pUnkOuterTest, 6);
    FUNC0(pUnkAggregatee, 7);
    FUNC0(pUnkInnerTest, 3);
    FUNC7(pUnkAggregator, 6);
    FUNC7(pUnkOuterTest, 5);
    FUNC7(pUnkAggregatee, 4);
    FUNC7(pUnkInnerTest, 2);

    FUNC6(pUnkAggregator, IID_IUnknown, pUnkTest);
    FUNC6(pUnkOuterTest, IID_IUnknown, pUnkTest);
    FUNC6(pUnkAggregatee, IID_IUnknown, pUnkTest);
    FUNC6(pUnkInnerTest, IID_IUnknown, pUnkTest);

    FUNC5(pUnkAggregator, iidInner, pUnkTest);
    FUNC5(pUnkOuterTest, iidInner, pUnkTest);
    FUNC5(pUnkAggregatee, iidInner, pUnkTest);
    FUNC6(pUnkInnerTest, iidInner, pUnkTest);

    FUNC6(pUnkAggregator, iidOuter, pUnkTest);
    FUNC6(pUnkOuterTest, iidOuter, pUnkTest);
    FUNC6(pUnkAggregatee, iidOuter, pUnkTest);
    FUNC5(pUnkInnerTest, iidOuter, pUnkTest);

    FUNC7(pUnkAggregator, 10);
    FUNC7(pUnkOuterTest, 9);
    FUNC7(pUnkAggregatee, 8);
    FUNC7(pUnkInnerTest, 2);
    FUNC7(pUnkOuter, 7);
    FUNC7(pUnkInner, 1);

    do
    {
        refCount = FUNC3(pUnkInner);
    } while (refCount);

    do
    {
        refCount = FUNC3(pUnkOuter);
    } while (refCount);
}