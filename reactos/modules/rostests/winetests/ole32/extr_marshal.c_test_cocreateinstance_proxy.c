
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IMultiQI ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC ;
 int CLSID_ShellDesktop ;
 int COINIT_MULTITHREADED ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoUninitialize () ;
 int IID_IMultiQI ;
 int IID_IUnknown ;
 int IMultiQI_Release (int *) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*) ;
 int ok_ole_success (scalar_t__,scalar_t__ (*) (int *,int *,int ,int *,void**)) ;
 int pCoInitializeEx (int *,int ) ;

__attribute__((used)) static void test_cocreateinstance_proxy(void)
{
    IUnknown *pProxy;
    IMultiQI *pMQI;
    HRESULT hr;

    pCoInitializeEx(((void*)0), COINIT_MULTITHREADED);

    hr = CoCreateInstance(&CLSID_ShellDesktop, ((void*)0), CLSCTX_INPROC, &IID_IUnknown, (void **)&pProxy);
    ok_ole_success(hr, CoCreateInstance);
    hr = IUnknown_QueryInterface(pProxy, &IID_IMultiQI, (void **)&pMQI);
    ok(hr == S_OK, "created object is not a proxy, so was created in the wrong apartment\n");
    if (hr == S_OK)
        IMultiQI_Release(pMQI);
    IUnknown_Release(pProxy);

    CoUninitialize();
}
