
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_JScript ;
 int CoGetClassObject (int *,int ,int *,int *,void**) ;
 scalar_t__ FALSE ;
 int IID_IUnknown ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL is_jscript_available(void)
{
    static BOOL available, checked;

    if(!checked) {
        IUnknown *unk;
        HRESULT hres = CoGetClassObject(&CLSID_JScript, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void**)&unk);

        if(SUCCEEDED(hres)) {
            available = TRUE;
            IUnknown_Release(unk);
        }else {
            available = FALSE;
        }
        checked = TRUE;
    }

    return available;
}
