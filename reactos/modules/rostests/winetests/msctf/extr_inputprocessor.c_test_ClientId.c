
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TfClientId ;
typedef int LPVOID ;
typedef int ITfClientId ;
typedef int HRESULT ;
typedef int GUID ;


 int CLSID_FakeService ;
 int CoCreateGuid (int *) ;
 int GUID_NULL ;
 int IID_ITfClientId ;
 int ITfClientId_GetClientId (int *,int *,scalar_t__*) ;
 int ITfClientId_Release (int *) ;
 int ITfThreadMgr_QueryInterface (int ,int *,int *) ;
 int SUCCEEDED (int ) ;
 scalar_t__ cid ;
 int g_tm ;
 int ok (int,char*) ;
 scalar_t__ tid ;

__attribute__((used)) static void test_ClientId(void)
{
    ITfClientId *pcid;
    TfClientId id1,id2;
    HRESULT hr;
    GUID g2;

    hr = ITfThreadMgr_QueryInterface(g_tm, &IID_ITfClientId, (LPVOID*)&pcid);
    ok(SUCCEEDED(hr),"Unable to acquire ITfClientId interface\n");

    CoCreateGuid(&g2);

    hr = ITfClientId_GetClientId(pcid,&GUID_NULL,&id1);
    ok(SUCCEEDED(hr),"GetClientId failed\n");
    hr = ITfClientId_GetClientId(pcid,&GUID_NULL,&id2);
    ok(SUCCEEDED(hr),"GetClientId failed\n");
    ok(id1==id2,"Id's for GUID_NULL do not match\n");
    hr = ITfClientId_GetClientId(pcid,&CLSID_FakeService,&id2);
    ok(SUCCEEDED(hr),"GetClientId failed\n");
    ok(id2!=id1,"Id matches GUID_NULL\n");
    ok(id2==tid,"Id for CLSID_FakeService not matching tid\n");
    ok(id2!=cid,"Id for CLSID_FakeService matching cid\n");
    hr = ITfClientId_GetClientId(pcid,&g2,&id2);
    ok(SUCCEEDED(hr),"GetClientId failed\n");
    ok(id2!=id1,"Id matches GUID_NULL\n");
    ok(id2!=tid,"Id for random guid matching tid\n");
    ok(id2!=cid,"Id for random guid matching cid\n");
    ITfClientId_Release(pcid);
}
