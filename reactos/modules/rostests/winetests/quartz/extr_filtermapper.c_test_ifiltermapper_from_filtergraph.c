
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int LPVOID ;
typedef int IUnknown ;
typedef int IFilterMapper2 ;
typedef int IFilterGraph2 ;
typedef int IFilterGraph ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_FilterGraph ;
 int CLSID_FilterMapper2 ;
 int CoCreateInstance (int *,int *,int ,int *,int *) ;
 int E_NOINTERFACE ;
 int IFilterGraph2_QueryInterface (int *,int *,int *) ;
 int IFilterGraph2_Release (int *) ;
 int IFilterGraph_Release (int *) ;
 int IFilterMapper2_AddRef (int *) ;
 int IFilterMapper2_QueryInterface (int *,int *,int *) ;
 int IFilterMapper2_Release (int *) ;
 int IID_IFilterGraph ;
 int IID_IFilterGraph2 ;
 int IID_IFilterMapper2 ;
 int S_OK ;
 int getRefcount (int *) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_ifiltermapper_from_filtergraph(void)
{
    IFilterGraph2* pgraph2 = ((void*)0);
    IFilterMapper2 *pMapper2 = ((void*)0);
    IFilterGraph *filtergraph = ((void*)0);
    HRESULT hr;
    ULONG refcount;

    hr = CoCreateInstance(&CLSID_FilterGraph, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IFilterGraph2, (LPVOID*)&pgraph2);
    ok(hr == S_OK, "CoCreateInstance failed with %08x\n", hr);
    if (!pgraph2) goto out;

    hr = IFilterGraph2_QueryInterface(pgraph2, &IID_IFilterMapper2, (LPVOID*)&pMapper2);
    ok(hr == S_OK, "IFilterGraph2_QueryInterface failed with %08x\n", hr);
    if (!pMapper2) goto out;

    refcount = getRefcount((IUnknown*)pgraph2);
    ok(refcount == 2, "unexpected reference count: %u\n", refcount);
    refcount = getRefcount((IUnknown*)pMapper2);
    ok(refcount == 2, "unexpected reference count: %u\n", refcount);

    IFilterMapper2_AddRef(pMapper2);
    refcount = getRefcount((IUnknown*)pgraph2);
    ok(refcount == 3, "unexpected reference count: %u\n", refcount);
    refcount = getRefcount((IUnknown*)pMapper2);
    ok(refcount == 3, "unexpected reference count: %u\n", refcount);
    IFilterMapper2_Release(pMapper2);

    hr = IFilterMapper2_QueryInterface(pMapper2, &IID_IFilterGraph, (LPVOID*)&filtergraph);
    ok(hr == S_OK, "IFilterMapper2_QueryInterface failed with %08x\n", hr);
    if (!filtergraph) goto out;

    IFilterMapper2_Release(pMapper2);
    pMapper2 = ((void*)0);
    IFilterGraph_Release(filtergraph);
    filtergraph = ((void*)0);

    hr = CoCreateInstance(&CLSID_FilterMapper2, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IFilterMapper2, (LPVOID*)&pMapper2);
    ok(hr == S_OK, "CoCreateInstance failed with %08x\n", hr);
    if (!pMapper2) goto out;

    hr = IFilterMapper2_QueryInterface(pMapper2, &IID_IFilterGraph, (LPVOID*)&filtergraph);
    ok(hr == E_NOINTERFACE, "IFilterMapper2_QueryInterface unexpected result: %08x\n", hr);

    out:

    if (pMapper2) IFilterMapper2_Release(pMapper2);
    if (filtergraph) IFilterGraph_Release(filtergraph);
    if (pgraph2) IFilterGraph2_Release(pgraph2);
}
