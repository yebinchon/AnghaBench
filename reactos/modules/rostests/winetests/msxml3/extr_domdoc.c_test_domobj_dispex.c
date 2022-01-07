
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int IUnknown ;
typedef int IDispatchEx ;
typedef int * HRESULT ;
typedef int * DWORD ;
typedef int DISPID ;
typedef int BSTR ;


 int DISPID_XMLDOM_NODELIST_RESET ;
 int * DISP_E_UNKNOWNNAME ;
 int EXPECT_HR (int *,int ) ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int *) ;
 int * IDispatchEx_DeleteMemberByDispID (int *,int ) ;
 int * IDispatchEx_DeleteMemberByName (int *,int ,int ) ;
 int * IDispatchEx_GetDispID (int *,int ,int ,int *) ;
 int * IDispatchEx_GetMemberName (int *,int ,int *) ;
 int * IDispatchEx_GetMemberProperties (int *,int ,int ,int **) ;
 int * IDispatchEx_GetNameSpaceParent (int *,int **) ;
 int * IDispatchEx_GetNextDispID (int *,int ,int ,int *) ;
 int * IDispatchEx_GetTypeInfoCount (int *,int*) ;
 int IDispatchEx_Release (int *) ;
 int IID_IDispatchEx ;
 int * IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ SUCCEEDED (int *) ;
 int S_OK ;
 int SysAllocString (char const*) ;
 int SysFreeString (int ) ;
 int fdexEnumDefault ;
 int fdexNameCaseSensitive ;
 int fdexNameEnsure ;
 int grfdexPropCanAll ;
 int ok (int,char*,int) ;
 char const* szstar ;

__attribute__((used)) static void test_domobj_dispex(IUnknown *obj)
{
    static const WCHAR testW[] = {'t','e','s','t','p','r','o','p',0};
    DISPID dispid = DISPID_XMLDOM_NODELIST_RESET;
    IDispatchEx *dispex;
    IUnknown *unk;
    DWORD props;
    UINT ticnt;
    HRESULT hr;
    BSTR name;

    hr = IUnknown_QueryInterface(obj, &IID_IDispatchEx, (void**)&dispex);
    EXPECT_HR(hr, S_OK);
    if (FAILED(hr)) return;

    ticnt = 0;
    hr = IDispatchEx_GetTypeInfoCount(dispex, &ticnt);
    EXPECT_HR(hr, S_OK);
    ok(ticnt == 1, "ticnt=%u\n", ticnt);

    name = SysAllocString(szstar);
    hr = IDispatchEx_DeleteMemberByName(dispex, name, fdexNameCaseSensitive);
    EXPECT_HR(hr, E_NOTIMPL);
    SysFreeString(name);

    hr = IDispatchEx_DeleteMemberByDispID(dispex, dispid);
    EXPECT_HR(hr, E_NOTIMPL);

    props = 0;
    hr = IDispatchEx_GetMemberProperties(dispex, dispid, grfdexPropCanAll, &props);
    EXPECT_HR(hr, E_NOTIMPL);
    ok(props == 0, "expected 0 got %d\n", props);

    hr = IDispatchEx_GetMemberName(dispex, dispid, &name);
    EXPECT_HR(hr, E_NOTIMPL);
    if (SUCCEEDED(hr)) SysFreeString(name);

    hr = IDispatchEx_GetNextDispID(dispex, fdexEnumDefault, DISPID_XMLDOM_NODELIST_RESET, &dispid);
    EXPECT_HR(hr, E_NOTIMPL);

    unk = (IUnknown*)0xdeadbeef;
    hr = IDispatchEx_GetNameSpaceParent(dispex, &unk);
    EXPECT_HR(hr, E_NOTIMPL);
    ok(unk == (IUnknown*)0xdeadbeef, "got %p\n", unk);

    name = SysAllocString(testW);
    hr = IDispatchEx_GetDispID(dispex, name, fdexNameEnsure, &dispid);
    ok(hr == DISP_E_UNKNOWNNAME, "got 0x%08x\n", hr);
    SysFreeString(name);

    IDispatchEx_Release(dispex);
}
