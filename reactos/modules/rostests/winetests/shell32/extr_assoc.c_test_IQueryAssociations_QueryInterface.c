
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IQueryAssociations ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_QueryAssociations ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void*) ;
 scalar_t__ E_POINTER ;
 int IID_IQueryAssociations ;
 int IID_IUnknown ;
 scalar_t__ IQueryAssociations_QueryInterface (int *,int *,void**) ;
 int IQueryAssociations_Release (int *) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_IQueryAssociations_QueryInterface(void)
{
    IQueryAssociations *qa;
    IQueryAssociations *qa2;
    IUnknown *unk;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_QueryAssociations, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IQueryAssociations, (void*)&qa);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IQueryAssociations_QueryInterface(qa, &IID_IQueryAssociations, (void**)&qa2);
    ok(hr == S_OK, "QueryInterface (IQueryAssociations) returned 0x%x\n", hr);
    if (SUCCEEDED(hr)) {
        IQueryAssociations_Release(qa2);
    }

    hr = IQueryAssociations_QueryInterface(qa, &IID_IUnknown, (void**)&unk);
    ok(hr == S_OK, "QueryInterface (IUnknown) returned 0x%x\n", hr);
    if (SUCCEEDED(hr)) {
        IUnknown_Release(unk);
    }

    hr = IQueryAssociations_QueryInterface(qa, &IID_IUnknown, ((void*)0));
    ok(hr == E_POINTER, "got 0x%x (expected E_POINTER)\n", hr);

    IQueryAssociations_Release(qa);
}
