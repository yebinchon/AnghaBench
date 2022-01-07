
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int HRESULT ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSID_WineTest ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int E_NOINTERFACE ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IID_IOleObject ;
 int IID_IUnknown ;
 int IID_IWineTest ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 int ok (int,char*,int ) ;
 int ok_ole_success (int ,char*) ;
 int reg_unreg_wine_test_class (int ) ;

__attribute__((used)) static void test_inproc_handler(void)
{
    HRESULT hr;
    IUnknown *pObject;
    IUnknown *pObject2;

    if (FAILED(reg_unreg_wine_test_class(TRUE)))
        return;

    hr = CoCreateInstance(&CLSID_WineTest, ((void*)0), CLSCTX_INPROC_HANDLER, &IID_IUnknown, (void **)&pObject);
    ok_ole_success(hr, "CoCreateInstance");

    if (SUCCEEDED(hr))
    {
        hr = IUnknown_QueryInterface(pObject, &IID_IWineTest, (void **)&pObject2);
        ok(hr == E_NOINTERFACE, "IUnknown_QueryInterface on handler for invalid interface returned 0x%08x instead of E_NOINTERFACE\n", hr);


        hr = IUnknown_QueryInterface(pObject, &IID_IOleObject, (void **)&pObject2);
        ok_ole_success(hr, "IUnknown_QueryInterface(&IID_IOleObject)");
        IUnknown_Release(pObject2);

        IUnknown_Release(pObject);
    }

    reg_unreg_wine_test_class(FALSE);
}
