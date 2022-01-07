
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IReferenceClock ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOINTERFACE ;
 int IID_IDirectDraw ;
 int IID_IReferenceClock ;
 int IID_IUnknown ;
 scalar_t__ IReferenceClock_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_IReferenceClock_query_interface(const char * clockdesc, IReferenceClock * pClock)
{
    HRESULT hr;
    IUnknown *pF;

    hr = IReferenceClock_QueryInterface(pClock, &IID_IUnknown, (void**)&pF);
    ok(hr == S_OK, "IReferenceClock_QueryInterface returned %x\n", hr);
    ok(pF != ((void*)0), "pF is NULL\n");
    if (SUCCEEDED(hr)) IUnknown_Release(pF);

    hr = IReferenceClock_QueryInterface(pClock, &IID_IDirectDraw, (void**)&pF);
    ok(hr == E_NOINTERFACE, "IReferenceClock_QueryInterface returned %x\n", hr);
    ok(pF == ((void*)0), "pF is not NULL\n");

    hr = IReferenceClock_QueryInterface(pClock, &IID_IReferenceClock, (void**)&pF);
    ok(hr == S_OK, "IReferenceClock_QueryInterface returned %x\n", hr);
    ok(pF != ((void*)0), "pF is NULL\n");
    if (SUCCEEDED(hr)) IUnknown_Release(pF);
}
