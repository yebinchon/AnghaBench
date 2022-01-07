
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef scalar_t__ LONG_PTR ;
typedef int IUnknown ;
typedef int IAutoComplete ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ACLMulti ;
 int CLSID_AutoComplete ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 int GWLP_USERDATA ;
 scalar_t__ GetWindowLongPtrA (int ,int ) ;
 scalar_t__ IAutoComplete_Init (int *,int ,int *,int *,int *) ;
 int IAutoComplete_Release (int *) ;
 int IID_IACList ;
 int IID_IAutoComplete ;
 int IUnknown_Release (int *) ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int hEdit ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static IAutoComplete *test_init(void)
{
    HRESULT r;
    IAutoComplete *ac, *ac2;
    IUnknown *acSource;
    LONG_PTR user_data;


    r = CoCreateInstance(&CLSID_AutoComplete, ((void*)0), CLSCTX_INPROC_SERVER,
                         &IID_IAutoComplete, (LPVOID*)&ac);
    if (r == REGDB_E_CLASSNOTREG)
    {
        win_skip("CLSID_AutoComplete is not registered\n");
        return ((void*)0);
    }
    ok(r == S_OK, "no IID_IAutoComplete (0x%08x)\n", r);


    r = CoCreateInstance(&CLSID_ACLMulti, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IACList, (LPVOID*)&acSource);
    if (r == REGDB_E_CLASSNOTREG)
    {
        win_skip("CLSID_ACLMulti is not registered\n");
        IAutoComplete_Release(ac);
        return ((void*)0);
    }
    ok(r == S_OK, "no IID_IACList (0x%08x)\n", r);

    user_data = GetWindowLongPtrA(hEdit, GWLP_USERDATA);
    ok(user_data == 0, "Expected the edit control user data to be zero\n");


    r = IAutoComplete_Init(ac, hEdit, acSource, ((void*)0), ((void*)0));
    ok(r == S_OK, "Init returned 0x%08x\n", r);

    user_data = GetWindowLongPtrA(hEdit, GWLP_USERDATA);
    ok(user_data == 0, "Expected the edit control user data to be zero\n");


    r = CoCreateInstance(&CLSID_AutoComplete, ((void*)0), CLSCTX_INPROC_SERVER,
                         &IID_IAutoComplete, (LPVOID*)&ac2);
    ok(r == S_OK, "no IID_IAutoComplete (0x%08x)\n", r);

    r = IAutoComplete_Init(ac2, hEdit, acSource, ((void*)0), ((void*)0));
    ok(r == S_OK, "Init returned 0x%08x\n", r);
    IAutoComplete_Release(ac2);

    IUnknown_Release(acSource);

    return ac;
}
