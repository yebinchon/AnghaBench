
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IShellLinkW ;
typedef int IShellLinkA ;
typedef int IPropertyStoreCache ;
typedef int IPropertyStore ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ShellLink ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ E_NOINTERFACE ;
 int IID_IPropertyStore ;
 int IID_IPropertyStoreCache ;
 int IID_IShellLinkA ;
 int IID_IShellLinkW ;
 scalar_t__ IPropertyStore_QueryInterface (int *,int *,void**) ;
 int IPropertyStore_Release (int *) ;
 scalar_t__ IShellLinkA_QueryInterface (int *,int *,void**) ;
 int IShellLinkA_Release (int *) ;
 scalar_t__ IShellLinkW_QueryInterface (int *,int *,void**) ;
 int IShellLinkW_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_propertystore(void)
{
    IShellLinkA *linkA;
    IShellLinkW *linkW;
    IPropertyStore *ps;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_ShellLink, ((void*)0), CLSCTX_INPROC_SERVER,
                         &IID_IShellLinkA, (void**)&linkA);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IShellLinkA_QueryInterface(linkA, &IID_IShellLinkW, (void**)&linkW);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IShellLinkA_QueryInterface(linkA, &IID_IPropertyStore, (void**)&ps);
    if (hr == S_OK) {
        IPropertyStoreCache *pscache;

        IPropertyStore_Release(ps);

        hr = IShellLinkW_QueryInterface(linkW, &IID_IPropertyStore, (void**)&ps);
        ok(hr == S_OK, "got 0x%08x\n", hr);

        hr = IPropertyStore_QueryInterface(ps, &IID_IPropertyStoreCache, (void**)&pscache);
        ok(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

        IPropertyStore_Release(ps);
    }
    else
        win_skip("IShellLink doesn't support IPropertyStore.\n");

    IShellLinkA_Release(linkA);
    IShellLinkW_Release(linkW);
}
