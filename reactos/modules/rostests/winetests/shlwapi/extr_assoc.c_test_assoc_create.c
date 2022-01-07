
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int IQueryAssociations ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CLASS_E_CLASSNOTAVAILABLE ;
 int CLSID_QueryAssociations ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ E_NOTIMPL ;
 int IID_IQueryAssociations ;
 int IID_IUnknown ;
 int IID_NULL ;
 int IQueryAssociations_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pAssocCreate (int ,int *,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_assoc_create(void)
{
    HRESULT hr;
    IQueryAssociations *pqa;

    if (!pAssocCreate)
    {
        win_skip("AssocCreate() is missing\n");
        return;
    }

    hr = pAssocCreate(IID_NULL, &IID_NULL, ((void*)0));
    ok(hr == E_INVALIDARG, "Unexpected result : %08x\n", hr);

    hr = pAssocCreate(CLSID_QueryAssociations, &IID_NULL, (LPVOID*)&pqa);
    ok(hr == CLASS_E_CLASSNOTAVAILABLE || hr == E_NOTIMPL || hr == E_NOINTERFACE
        , "Unexpected result : %08x\n", hr);

    hr = pAssocCreate(IID_NULL, &IID_IQueryAssociations, (LPVOID*)&pqa);
    ok(hr == CLASS_E_CLASSNOTAVAILABLE || hr == E_NOTIMPL || hr == E_INVALIDARG
        , "Unexpected result : %08x\n", hr);

    hr = pAssocCreate(CLSID_QueryAssociations, &IID_IQueryAssociations, (LPVOID*)&pqa);
    ok(hr == S_OK || hr == E_NOTIMPL
        , "Unexpected result : %08x\n", hr);
    if(hr == S_OK)
    {
        IQueryAssociations_Release(pqa);
    }

    hr = pAssocCreate(CLSID_QueryAssociations, &IID_IUnknown, (LPVOID*)&pqa);
    ok(hr == S_OK || hr == E_NOTIMPL
        , "Unexpected result : %08x\n", hr);
    if(hr == S_OK)
    {
        IQueryAssociations_Release(pqa);
    }
}
