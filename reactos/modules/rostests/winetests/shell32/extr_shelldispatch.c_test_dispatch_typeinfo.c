
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int guid; } ;
typedef TYPE_1__ TYPEATTR ;
typedef int * REFIID ;
typedef int ITypeInfo ;
typedef int IDispatch ;
typedef int HRESULT ;


 int IDispatch_GetTypeInfo (int *,int ,int ,int **) ;
 int IDispatch_GetTypeInfoCount (int *,int*) ;
 int IID_NULL ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_1__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_1__*) ;
 int IsEqualGUID (int *,int *) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int S_OK ;
 int ok (int,char*,int) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_dispatch_typeinfo(IDispatch *disp, REFIID *riid)
{
    ITypeInfo *typeinfo;
    TYPEATTR *typeattr;
    UINT count;
    HRESULT hr;

    count = 10;
    hr = IDispatch_GetTypeInfoCount(disp, &count);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(count == 1, "got %u\n", count);

    hr = IDispatch_GetTypeInfo(disp, 0, LOCALE_SYSTEM_DEFAULT, &typeinfo);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = ITypeInfo_GetTypeAttr(typeinfo, &typeattr);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    while (!IsEqualGUID(*riid, &IID_NULL)) {
        if (IsEqualGUID(&typeattr->guid, *riid))
            break;
        riid++;
    }
    ok(IsEqualGUID(&typeattr->guid, *riid), "unexpected type guid %s\n", wine_dbgstr_guid(&typeattr->guid));

    ITypeInfo_ReleaseTypeAttr(typeinfo, typeattr);
    ITypeInfo_Release(typeinfo);
}
