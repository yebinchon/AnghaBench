
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IEnumString ;
typedef int IACList ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC ;
 int CLSID_ACListISF ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ IACList_QueryInterface (int *,int *,void**) ;
 int IACList_Release (int *) ;
 scalar_t__ IEnumString_QueryInterface (int *,int *,void**) ;
 int IEnumString_Release (int *) ;
 int IID_IACList ;
 int IID_IEnumString ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void test_ACListISF(void)
{
    IEnumString *enumstring;
    IACList *list, *list2;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_ACListISF, ((void*)0), CLSCTX_INPROC, &IID_IACList, (void**)&list);
    ok(hr == S_OK, "failed to create ACListISF instance, 0x%08x\n", hr);

    hr = IACList_QueryInterface(list, &IID_IEnumString, (void**)&enumstring);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IEnumString_QueryInterface(enumstring, &IID_IACList, (void**)&list2);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(list == list2, "got %p, %p\n", list, list2);
    IACList_Release(list2);

    IEnumString_Release(enumstring);
    IACList_Release(list);
}
