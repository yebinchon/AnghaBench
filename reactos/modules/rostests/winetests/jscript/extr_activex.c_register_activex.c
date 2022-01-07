
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_TestObj ;
 scalar_t__ CoRegisterClassObject (int *,int *,int ,int ,int *) ;
 int FALSE ;
 int REGCLS_MULTIPLEUSE ;
 scalar_t__ S_OK ;
 int TRUE ;
 int activex_cf ;
 int init_registry (int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static BOOL register_activex(void)
{
    DWORD regid;
    HRESULT hres;

    if(!init_registry(TRUE)) {
        init_registry(FALSE);
        return FALSE;
    }

    hres = CoRegisterClassObject(&CLSID_TestObj, (IUnknown *)&activex_cf,
                                 CLSCTX_INPROC_SERVER, REGCLS_MULTIPLEUSE, &regid);
    ok(hres == S_OK, "Could not register script engine: %08x\n", hres);

    return TRUE;
}
