
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pIID; int * member_0; } ;
typedef TYPE_1__ MULTI_QI ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_WineOOPTest ;
 scalar_t__ CoCreateInstanceEx (int *,int *,int ,int *,int,TYPE_1__*) ;
 int CoInitialize (int *) ;
 scalar_t__ CoRegisterClassObject (int *,int *,int ,int ,int *) ;
 scalar_t__ CoRevokeClassObject (int ) ;
 int CoUninitialize () ;
 scalar_t__ E_NOINTERFACE ;
 int IID_IMoniker ;
 int IID_NULL ;
 int IsEqualGUID (int *,int ) ;
 int REGCLS_MULTIPLEUSE ;
 int Test_ClassFactory ;
 int create_instance_iid ;
 int ok (int,char*,scalar_t__) ;
 int ok_ole_success (scalar_t__,char*) ;
 scalar_t__ wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_CoCreateInstanceEx(void)
{
    MULTI_QI qi_res = { &IID_IMoniker };
    DWORD cookie;
    HRESULT hr;

    CoInitialize(((void*)0));

    hr = CoRegisterClassObject(&CLSID_WineOOPTest, (IUnknown *)&Test_ClassFactory,
                               CLSCTX_INPROC_SERVER, REGCLS_MULTIPLEUSE, &cookie);
    ok_ole_success(hr, "CoRegisterClassObject");

    create_instance_iid = IID_NULL;
    hr = CoCreateInstanceEx(&CLSID_WineOOPTest, ((void*)0), CLSCTX_INPROC_SERVER, ((void*)0), 1, &qi_res);
    ok(hr == E_NOINTERFACE, "CoCreateInstanceEx failed: %08x\n", hr);
    ok(IsEqualGUID(&create_instance_iid, qi_res.pIID), "Unexpected CreateInstance iid %s\n",
       wine_dbgstr_guid(&create_instance_iid));

    hr = CoRevokeClassObject(cookie);
    ok_ole_success(hr, "CoRevokeClassObject");

    CoUninitialize();
}
