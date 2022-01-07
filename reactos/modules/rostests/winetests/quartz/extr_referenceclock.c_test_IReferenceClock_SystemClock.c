
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int IReferenceClock ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_SystemClock ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 int IID_IReferenceClock ;
 int IReferenceClock_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_IReferenceClock_methods (char*,int *) ;
 int test_IReferenceClock_query_interface (char*,int *) ;

__attribute__((used)) static void test_IReferenceClock_SystemClock(void)
{
    IReferenceClock * pReferenceClock;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_SystemClock, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IReferenceClock, (LPVOID*)&pReferenceClock);
    ok(hr == S_OK, "Unable to create reference clock from system clock %x\n", hr);
    if (hr == S_OK)
    {
        test_IReferenceClock_query_interface("SystemClock", pReferenceClock);
 test_IReferenceClock_methods("SystemClock", pReferenceClock);
 IReferenceClock_Release(pReferenceClock);
    }
}
