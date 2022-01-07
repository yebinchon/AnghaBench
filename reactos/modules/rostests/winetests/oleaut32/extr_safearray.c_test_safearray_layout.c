
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ref; int IRecordInfo_iface; } ;
struct TYPE_6__ {int cElements; scalar_t__ lLbound; } ;
typedef TYPE_1__ SAFEARRAYBOUND ;
typedef int SAFEARRAY ;
typedef TYPE_2__ IRecordInfoImpl ;
typedef int IRecordInfo ;
typedef int * HRESULT ;
typedef int GUID ;
typedef int * DWORD ;


 int IID_IDispatch ;
 int IID_IUnknown ;
 TYPE_2__* IRecordInfoImpl_Construct () ;
 int IRecordInfo_Release (int *) ;
 int IsEqualIID (int *,int *) ;
 int * S_OK ;
 int * SafeArrayCreate (int *,int,TYPE_1__*) ;
 int * SafeArrayDestroy (int *) ;
 int * SafeArrayGetIID (int *,int *) ;
 int * SafeArraySetIID (int *,int *) ;
 int VT_RECORD ;
 int * VT_UI1 ;
 int * VT_UNKNOWN ;
 int memcpy (int *,int *,int) ;
 int ok (int,char*,...) ;
 int * pSafeArrayCreateEx (int ,int,TYPE_1__*,int *) ;
 int * wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_safearray_layout(void)
{
    IRecordInfoImpl *irec;
    IRecordInfo *record;
    GUID guid, *guidptr;
    SAFEARRAYBOUND sab;
    SAFEARRAY *sa;
    DWORD *dwptr;
    HRESULT hr;

    sab.lLbound = 0;
    sab.cElements = 10;


    sa = SafeArrayCreate(VT_UNKNOWN, 1, &sab);
    ok(sa != ((void*)0), "got %p\n", sa);

    guidptr = (GUID*)sa - 1;
    ok(IsEqualIID(guidptr, &IID_IUnknown), "got %s\n", wine_dbgstr_guid(guidptr));

    hr = SafeArraySetIID(sa, &IID_IDispatch);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(IsEqualIID(guidptr, &IID_IDispatch), "got %s\n", wine_dbgstr_guid(guidptr));

    memcpy(guidptr, &IID_IUnknown, sizeof(GUID));
    hr = SafeArrayGetIID(sa, &guid);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(IsEqualIID(&guid, &IID_IUnknown), "got %s\n", wine_dbgstr_guid(&guid));

    hr = SafeArrayDestroy(sa);
    ok(hr == S_OK, "got 0x%08x\n", hr);


    sa = SafeArrayCreate(VT_UI1, 1, &sab);
    ok(sa != ((void*)0), "got %p\n", sa);

    dwptr = (DWORD*)sa - 1;
    ok(*dwptr == VT_UI1, "got %d\n", *dwptr);

    hr = SafeArrayDestroy(sa);
    ok(hr == S_OK, "got 0x%08x\n", hr);


    irec = IRecordInfoImpl_Construct();
    irec->ref = 1;

    sa = pSafeArrayCreateEx(VT_RECORD, 1, &sab, &irec->IRecordInfo_iface);
    ok(sa != ((void*)0), "failed to create array\n");

    record = *((IRecordInfo**)sa - 1);
    ok(record == &irec->IRecordInfo_iface, "got %p\n", record);

    hr = SafeArrayDestroy(sa);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    IRecordInfo_Release(&irec->IRecordInfo_iface);
}
