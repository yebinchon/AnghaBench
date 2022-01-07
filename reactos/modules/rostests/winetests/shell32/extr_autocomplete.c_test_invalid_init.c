
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IUnknown ;
typedef int IAutoComplete ;
typedef int * HWND ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ACLMulti ;
 int CLSID_AutoComplete ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int * CreateWindowExA (int ,char*,char*,int ,int,int,int,int,int ,int *,int ,int *) ;
 int DestroyWindow (int *) ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int E_UNEXPECTED ;
 int IAutoComplete_Init (int *,int *,int *,int *,int *) ;
 int IAutoComplete_Release (int *) ;
 int IID_IACList ;
 int IID_IAutoComplete ;
 int IUnknown_AddRef (int *) ;
 int IUnknown_Release (int *) ;
 int REGDB_E_CLASSNOTREG ;
 int S_OK ;
 scalar_t__ broken (int) ;
 int * hEdit ;
 int hMainWnd ;
 int hinst ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_invalid_init(void)
{
    HRESULT hr;
    IAutoComplete *ac;
    IUnknown *acSource;
    HWND edit_control;


    hr = CoCreateInstance(&CLSID_AutoComplete, ((void*)0), CLSCTX_INPROC_SERVER,
                         &IID_IAutoComplete, (void **)&ac);
    if (hr == REGDB_E_CLASSNOTREG)
    {
        win_skip("CLSID_AutoComplete is not registered\n");
        return;
    }
    ok(hr == S_OK, "no IID_IAutoComplete (0x%08x)\n", hr);


    hr = CoCreateInstance(&CLSID_ACLMulti, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IACList, (void **)&acSource);
    if (hr == REGDB_E_CLASSNOTREG)
    {
        win_skip("CLSID_ACLMulti is not registered\n");
        IAutoComplete_Release(ac);
        return;
    }
    ok(hr == S_OK, "no IID_IACList (0x%08x)\n", hr);

    edit_control = CreateWindowExA(0, "EDIT", "Some text", 0, 10, 10, 300, 300,
                       hMainWnd, ((void*)0), hinst, ((void*)0));
    ok(edit_control != ((void*)0), "Can't create edit control\n");


    hr = IAutoComplete_Init(ac, ((void*)0), acSource, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG ||
       broken(hr == S_OK),
       "Init returned 0x%08x\n", hr);
    if (hr == E_INVALIDARG)
    {
        LONG ref;

        IUnknown_AddRef(acSource);
        ref = IUnknown_Release(acSource);
        ok(ref == 1, "Expected AutoComplete source refcount to be 1, got %d\n", ref);
    }

if (0)
{




    hr = IAutoComplete_Init(ac, (HWND)0xdeadbeef, acSource, ((void*)0), ((void*)0));
    ok(hr == S_OK, "Init returned 0x%08x\n", hr);


    hr = IAutoComplete_Init(ac, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "Init returned 0x%08x\n", hr);

    hr = IAutoComplete_Init(ac, edit_control, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "Init returned 0x%08x\n", hr);
}


    hr = IAutoComplete_Init(ac, edit_control, acSource, ((void*)0), ((void*)0));
    ok(hr == S_OK, "Init returned 0x%08x\n", hr);


    hr = IAutoComplete_Init(ac, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG ||
       hr == E_FAIL,
       "Init returned 0x%08x\n", hr);

    hr = IAutoComplete_Init(ac, ((void*)0), acSource, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG ||
       hr == E_FAIL,
       "Init returned 0x%08x\n", hr);

    hr = IAutoComplete_Init(ac, edit_control, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG ||
       hr == E_FAIL,
       "Init returned 0x%08x\n", hr);


    hr = IAutoComplete_Init(ac, edit_control, acSource, ((void*)0), ((void*)0));
    ok(hr == E_FAIL, "Init returned 0x%08x\n", hr);


    hr = IAutoComplete_Init(ac, hEdit, acSource, ((void*)0), ((void*)0));
    ok(hr == E_FAIL, "Init returned 0x%08x\n", hr);

    DestroyWindow(edit_control);



    hr = IAutoComplete_Init(ac, hEdit, acSource, ((void*)0), ((void*)0));
    ok(hr == E_UNEXPECTED ||
       hr == E_FAIL,
       "Init returned 0x%08x\n", hr);

    IUnknown_Release(acSource);
    IAutoComplete_Release(ac);
}
