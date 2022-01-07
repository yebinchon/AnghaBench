
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IQueryAssociations ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 int ASSOCF_NONE ;
 int ASSOCSTR_EXECUTABLE ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_QueryAssociations ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void*) ;
 int ERROR_NO_ASSOCIATION ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int IID_IQueryAssociations ;
 scalar_t__ IQueryAssociations_GetString (int *,int ,int ,int *,int *,scalar_t__*) ;
 scalar_t__ IQueryAssociations_Init (int *,int ,int *,int *,int *) ;
 int IQueryAssociations_Release (int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int * badW ;
 scalar_t__ broken (int) ;
 int * httpW ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_IQueryAssociations_Init(void)
{
    IQueryAssociations *assoc;
    HRESULT hr;
    DWORD len;

    hr = CoCreateInstance(&CLSID_QueryAssociations, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IQueryAssociations, (void*)&assoc);
    ok(hr == S_OK, "failed to create object, 0x%x\n", hr);

    hr = IQueryAssociations_Init(assoc, ASSOCF_NONE, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "Init failed, 0x%08x\n", hr);

    hr = IQueryAssociations_Init(assoc, ASSOCF_NONE, httpW, ((void*)0), ((void*)0));
    ok(hr == S_OK, "Init failed, 0x%08x\n", hr);

    hr = IQueryAssociations_Init(assoc, ASSOCF_NONE, badW, ((void*)0), ((void*)0));
    ok(hr == S_OK || broken(hr == S_FALSE) , "Init failed, 0x%08x\n", hr);

    len = 0;
    hr = IQueryAssociations_GetString(assoc, ASSOCF_NONE, ASSOCSTR_EXECUTABLE, ((void*)0), ((void*)0), &len);
    ok(hr == HRESULT_FROM_WIN32(ERROR_NO_ASSOCIATION) || broken(hr == E_FAIL) , "got 0x%08x\n", hr);

    IQueryAssociations_Release(assoc);
}
