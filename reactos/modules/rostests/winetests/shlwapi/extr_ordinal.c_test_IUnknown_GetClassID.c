
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clsid3 ;
typedef int clsid2 ;
typedef int clsid ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef int CLSID ;


 int CLSID_NULL ;
 int E_FAIL ;
 scalar_t__ IsEqualCLSID (int *,int *) ;
 scalar_t__ broken (scalar_t__) ;
 int memset (int *,int,int) ;
 int ok (int,char*,int) ;
 int pIUnknown_GetClassID (int *,int *) ;
 int testpersist ;
 int testpersist2 ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_IUnknown_GetClassID(void)
{
    CLSID clsid, clsid2, clsid3;
    HRESULT hr;

    if (0)
        hr = pIUnknown_GetClassID(((void*)0), ((void*)0));

    memset(&clsid, 0xcc, sizeof(clsid));
    memset(&clsid3, 0xcc, sizeof(clsid3));
    hr = pIUnknown_GetClassID(((void*)0), &clsid);
    ok(hr == E_FAIL, "got 0x%08x\n", hr);
    ok(IsEqualCLSID(&clsid, &CLSID_NULL) || broken(IsEqualCLSID(&clsid, &clsid3)) ,
        "got wrong clsid %s\n", wine_dbgstr_guid(&clsid));

    memset(&clsid, 0xcc, sizeof(clsid));
    memset(&clsid2, 0xab, sizeof(clsid2));
    hr = pIUnknown_GetClassID((IUnknown*)&testpersist, &clsid);
    ok(hr == 0x8fff2222, "got 0x%08x\n", hr);
    ok(IsEqualCLSID(&clsid, &clsid2) || broken(IsEqualCLSID(&clsid, &clsid3)) ,
        "got wrong clsid %s\n", wine_dbgstr_guid(&clsid));


    memset(&clsid, 0xcc, sizeof(clsid));
    memset(&clsid2, 0xab, sizeof(clsid2));
    memset(&clsid3, 0xcc, sizeof(clsid3));
    hr = pIUnknown_GetClassID((IUnknown*)&testpersist2, &clsid);
    ok(hr == 0x8fff2222, "got 0x%08x\n", hr);
    ok(IsEqualCLSID(&clsid, &clsid2) || broken(IsEqualCLSID(&clsid, &clsid3)) ,
        "got wrong clsid %s\n", wine_dbgstr_guid(&clsid));
}
