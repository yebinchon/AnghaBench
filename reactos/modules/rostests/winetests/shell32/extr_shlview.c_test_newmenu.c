
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_NewMenu ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IContextMenu ;
 int IID_IContextMenu2 ;
 int IID_IContextMenu3 ;
 int IID_IObjectWithSite ;
 int IID_IShellExtInit ;
 int IID_IUnknown ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void test_newmenu(void)
{
    IUnknown *unk, *unk2;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_NewMenu, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&unk);
    ok(hr == S_OK, "Failed to create NewMenu object, hr %#x.\n", hr);
    if (hr != S_OK)
    {
        skip("NewMenu is not supported.\n");
        return;
    }

    hr = IUnknown_QueryInterface(unk, &IID_IShellExtInit, (void **)&unk2);
    ok(hr == S_OK, "Failed to get IShellExtInit, hr %#x.\n", hr);
    IUnknown_Release(unk2);

    hr = IUnknown_QueryInterface(unk, &IID_IContextMenu, (void **)&unk2);
    ok(hr == S_OK, "Failed to get IContextMenu, hr %#x.\n", hr);
    IUnknown_Release(unk2);

    hr = IUnknown_QueryInterface(unk, &IID_IContextMenu2, (void **)&unk2);
    ok(hr == S_OK, "Failed to get IContextMenu2, hr %#x.\n", hr);
    IUnknown_Release(unk2);

    hr = IUnknown_QueryInterface(unk, &IID_IContextMenu3, (void **)&unk2);
    ok(hr == S_OK, "Failed to get IContextMenu3, hr %#x.\n", hr);
    IUnknown_Release(unk2);

    hr = IUnknown_QueryInterface(unk, &IID_IObjectWithSite, (void **)&unk2);
    ok(hr == S_OK, "Failed to get IObjectWithSite, hr %#x.\n", hr);
    IUnknown_Release(unk2);

    IUnknown_Release(unk);
}
