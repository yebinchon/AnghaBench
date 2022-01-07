
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int LPVOID ;
typedef int IUnknown ;
typedef int IID ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 int ADDREF_EXPECT (int *,int) ;
 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoCreateInstance (int const*,int *,int ,int const*,int *) ;
 scalar_t__ E_NOINTERFACE ;
 int IID_IGraphConfig ;
 int const IID_IUnknown ;
 scalar_t__ IUnknown_QueryInterface (int *,int const*,int *) ;
 scalar_t__ IUnknown_Release (int *) ;
 scalar_t__ IsEqualGUID (int *,int const*) ;
 int QI_FAIL (int *,int const,int *) ;
 int QI_SUCCEED (int *,int const,int *) ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 int RELEASE_EXPECT (int *,int) ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_aggregation(const CLSID clsidOuter, const CLSID clsidInner,
                             const IID iidOuter, const IID iidInner)
{
    HRESULT hr;
    ULONG refCount;
    IUnknown *pUnkOuter = ((void*)0);
    IUnknown *pUnkInner = ((void*)0);
    IUnknown *pUnkInnerFail = ((void*)0);
    IUnknown *pUnkOuterTest = ((void*)0);
    IUnknown *pUnkInnerTest = ((void*)0);
    IUnknown *pUnkAggregatee = ((void*)0);
    IUnknown *pUnkAggregator = ((void*)0);
    IUnknown *pUnkTest = ((void*)0);

    hr = CoCreateInstance(&clsidOuter, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IUnknown, (LPVOID*)&pUnkOuter);
    ok(hr == S_OK, "CoCreateInstance failed with %x\n", hr);
    ok(pUnkOuter != ((void*)0), "pUnkOuter is NULL\n");

    if (!pUnkOuter)
    {
        skip("pUnkOuter is NULL\n");
        return;
    }


    hr = CoCreateInstance(&clsidInner, pUnkOuter, CLSCTX_INPROC_SERVER,
                          &iidInner, (LPVOID*)&pUnkInnerFail);
    if (hr == REGDB_E_CLASSNOTREG)
    {
        skip("Class not registered\n");
        return;
    }
    ok(hr == E_NOINTERFACE, "CoCreateInstance returned %x\n", hr);
    ok(pUnkInnerFail == ((void*)0), "pUnkInnerFail is not NULL\n");


    hr = CoCreateInstance(&clsidInner, pUnkOuter, CLSCTX_INPROC_SERVER,
                          &IID_IUnknown, (LPVOID*)&pUnkInner);
    ok(hr == S_OK, "CoCreateInstance returned %x\n", hr);
    ok(pUnkInner != ((void*)0), "pUnkInner is NULL\n");

    if (!pUnkInner)
    {
        skip("pUnkInner is NULL\n");
        return;
    }

    ADDREF_EXPECT(pUnkOuter, 2);
    ADDREF_EXPECT(pUnkInner, 2);
    RELEASE_EXPECT(pUnkOuter, 1);
    RELEASE_EXPECT(pUnkInner, 1);

    QI_FAIL(pUnkOuter, iidInner, pUnkAggregatee);
    QI_FAIL(pUnkInner, iidOuter, pUnkAggregator);


    QI_SUCCEED(pUnkOuter, iidOuter, pUnkAggregator);
    QI_SUCCEED(pUnkOuter, IID_IUnknown, pUnkOuterTest);

    if(IsEqualGUID(&IID_IGraphConfig, &iidInner))
    {
        hr = IUnknown_QueryInterface(pUnkInner, &iidInner, (LPVOID*)&pUnkAggregatee);
        ok(hr == S_OK || broken(hr == E_NOINTERFACE), "IUnknown_QueryInterface returned %x\n", hr);
        ok(pUnkAggregatee != ((void*)0) || broken(!pUnkAggregatee), "Pointer is NULL\n");
    }
    else
    {
        QI_SUCCEED(pUnkInner, iidInner, pUnkAggregatee);
    }
    QI_SUCCEED(pUnkInner, IID_IUnknown, pUnkInnerTest);

    if (!pUnkAggregator || !pUnkOuterTest || !pUnkAggregatee
                    || !pUnkInnerTest)
    {
        skip("One of the required interfaces is NULL\n");
        return;
    }

    ADDREF_EXPECT(pUnkAggregator, 5);
    ADDREF_EXPECT(pUnkOuterTest, 6);
    ADDREF_EXPECT(pUnkAggregatee, 7);
    ADDREF_EXPECT(pUnkInnerTest, 3);
    RELEASE_EXPECT(pUnkAggregator, 6);
    RELEASE_EXPECT(pUnkOuterTest, 5);
    RELEASE_EXPECT(pUnkAggregatee, 4);
    RELEASE_EXPECT(pUnkInnerTest, 2);

    QI_SUCCEED(pUnkAggregator, IID_IUnknown, pUnkTest);
    QI_SUCCEED(pUnkOuterTest, IID_IUnknown, pUnkTest);
    QI_SUCCEED(pUnkAggregatee, IID_IUnknown, pUnkTest);
    QI_SUCCEED(pUnkInnerTest, IID_IUnknown, pUnkTest);

    QI_FAIL(pUnkAggregator, iidInner, pUnkTest);
    QI_FAIL(pUnkOuterTest, iidInner, pUnkTest);
    QI_FAIL(pUnkAggregatee, iidInner, pUnkTest);
    QI_SUCCEED(pUnkInnerTest, iidInner, pUnkTest);

    QI_SUCCEED(pUnkAggregator, iidOuter, pUnkTest);
    QI_SUCCEED(pUnkOuterTest, iidOuter, pUnkTest);
    QI_SUCCEED(pUnkAggregatee, iidOuter, pUnkTest);
    QI_FAIL(pUnkInnerTest, iidOuter, pUnkTest);

    RELEASE_EXPECT(pUnkAggregator, 10);
    RELEASE_EXPECT(pUnkOuterTest, 9);
    RELEASE_EXPECT(pUnkAggregatee, 8);
    RELEASE_EXPECT(pUnkInnerTest, 2);
    RELEASE_EXPECT(pUnkOuter, 7);
    RELEASE_EXPECT(pUnkInner, 1);

    do
    {
        refCount = IUnknown_Release(pUnkInner);
    } while (refCount);

    do
    {
        refCount = IUnknown_Release(pUnkOuter);
    } while (refCount);
}
