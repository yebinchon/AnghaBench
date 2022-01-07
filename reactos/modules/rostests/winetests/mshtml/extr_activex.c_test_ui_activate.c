
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleInPlaceSite ;
typedef scalar_t__ HRESULT ;


 int CLEAR_CALLED (int ) ;
 int IID_IOleInPlaceSite ;
 scalar_t__ IOleClientSite_QueryInterface (int ,int *,void**) ;
 scalar_t__ IOleInPlaceSite_OnUIActivate (int *) ;
 int IOleInPlaceSite_Release (int *) ;
 int Invoke_ENABLED ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int client_site ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_ui_activate(void)
{
    IOleInPlaceSite *ip_site;
    HRESULT hres;

    hres = IOleClientSite_QueryInterface(client_site, &IID_IOleInPlaceSite, (void**)&ip_site);
    ok(hres == S_OK, "Could not get IOleInPlaceSite iface: %08x\n", hres);

    SET_EXPECT(Invoke_ENABLED);
    hres = IOleInPlaceSite_OnUIActivate(ip_site);
    ok(hres == S_OK, "OnUIActivate failed: %08x\n", hres);
    CLEAR_CALLED(Invoke_ENABLED);

    IOleInPlaceSite_Release(ip_site);
}
