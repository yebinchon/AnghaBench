
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_16__ {int ref; int sizeCalled; int clearCalled; int recordcopy; int IRecordInfo_iface; } ;
struct TYPE_15__ {int cbElements; } ;
struct TYPE_14__ {int cElements; scalar_t__ lLbound; } ;
typedef TYPE_1__ SAFEARRAYBOUND ;
typedef TYPE_2__ SAFEARRAY ;
typedef int * PVOID ;
typedef TYPE_3__ IRecordInfoImpl ;
typedef int IRecordInfo ;
typedef int HRESULT ;
typedef int GUID ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int FALSE ;
 int IID_IDispatch ;
 int IID_ITypeInfo ;
 int IID_IUnknown ;
 TYPE_3__* IRecordInfoImpl_Construct () ;
 int IRecordInfo_Release (int *) ;
 int IsEqualGUID (int *,int *) ;
 int RECORD_SIZE ;
 int RECORD_SIZE_FAIL ;
 int START_REF_COUNT ;
 int S_OK ;
 int SafeArrayCopyData (TYPE_2__*,TYPE_2__*) ;
 int SafeArrayDestroy (TYPE_2__*) ;
 int SafeArrayGetIID (TYPE_2__*,int *) ;
 int SafeArraySetIID (TYPE_2__*,int *) ;
 int TRUE ;
 int VT_DISPATCH ;
 int VT_RECORD ;
 int VT_UI1 ;
 int VT_UNKNOWN ;
 int fail_GetSize ;
 int ok (int,char*,...) ;
 TYPE_2__* pSafeArrayCreateEx (int ,int,TYPE_1__*,int *) ;
 int pSafeArrayGetRecordInfo (TYPE_2__*,int **) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SafeArrayCreateEx(void)
{
  IRecordInfoImpl* iRec;
  SAFEARRAYBOUND sab[4];
  SAFEARRAY *sa;
  HRESULT hres;
  UINT dimension;

  if (!pSafeArrayCreateEx)
  {
    win_skip("SafeArrayCreateEx not supported\n");
    return;
  }

  for (dimension = 0; dimension < ARRAY_SIZE(sab); dimension++)
  {
    sab[dimension].lLbound = 0;
    sab[dimension].cElements = 8;
  }


  sa = pSafeArrayCreateEx(VT_UI1, 1, ((void*)0), ((void*)0));
  ok(sa == ((void*)0), "CreateEx NULL bounds didn't fail\n");


  sa = pSafeArrayCreateEx(VT_DISPATCH, 1, sab, (PVOID)&IID_ITypeInfo);
  ok(sa != ((void*)0), "CreateEx (ITypeInfo) failed\n");

  if (sa)
  {
    GUID guid;

    hres = SafeArrayGetIID(sa, &guid);
    ok(hres == S_OK, "Failed to get array IID, hres %#x.\n", hres);
    ok(IsEqualGUID(&guid, &IID_ITypeInfo), "CreateEx (ITypeInfo) bad IID\n");
    hres = SafeArraySetIID(sa, &IID_IUnknown);
    ok(hres == S_OK, "Failed to set IID, hres = %8x\n", hres);
    hres = SafeArrayGetIID(sa, &guid);
    ok(hres == S_OK && IsEqualGUID(&guid, &IID_IUnknown), "Set bad IID\n");
    hres = SafeArrayDestroy(sa);
    ok(hres == S_OK, "got 0x%08x\n", hres);
  }

  sa = pSafeArrayCreateEx(VT_DISPATCH, 1, sab, ((void*)0));
  ok(sa != ((void*)0), "CreateEx (NULL) failed\n");

  if (sa)
  {
    GUID guid;

    hres = SafeArrayGetIID(sa, &guid);
    ok(hres == S_OK, "Failed to get array IID, hres %#x.\n", hres);
    ok(IsEqualGUID(&guid, &IID_IDispatch), "CreateEx (NULL) bad IID\n");
    hres = SafeArrayDestroy(sa);
    ok(hres == S_OK, "got 0x%08x\n", hres);
  }

  sa = pSafeArrayCreateEx(VT_UNKNOWN, 1, sab, ((void*)0));
  ok(sa != ((void*)0), "CreateEx (NULL-Unk) failed\n");

  if (sa)
  {
    GUID guid;

    hres = SafeArrayGetIID(sa, &guid);
    ok(hres == S_OK, "Failed to get array IID, hres %#x.\n", hres);
    ok(IsEqualGUID(&guid, &IID_IUnknown), "CreateEx (NULL-Unk) bad IID\n");
    hres = SafeArrayDestroy(sa);
    ok(hres == S_OK, "got 0x%08x\n", hres);
  }


  sa = pSafeArrayCreateEx(VT_RECORD, 1, sab, ((void*)0));
  ok(sa == ((void*)0), "CreateEx (NULL-Rec) succeeded\n");

  iRec = IRecordInfoImpl_Construct();


  fail_GetSize = TRUE;
  sa = pSafeArrayCreateEx(VT_RECORD, 1, sab, &iRec->IRecordInfo_iface);
  ok(sa != ((void*)0), "CreateEx (Fail Size) failed\n");
  ok(iRec->ref == START_REF_COUNT + 1, "Wrong iRec refcount %d\n", iRec->ref);
  ok(iRec->sizeCalled == 1, "GetSize called %d times\n", iRec->sizeCalled);
  ok(iRec->clearCalled == 0, "Clear called %d times\n", iRec->clearCalled);
  if (sa)
  {
    ok(sa->cbElements == RECORD_SIZE_FAIL, "Altered size to %d\n", sa->cbElements);
    hres = SafeArrayDestroy(sa);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    ok(iRec->clearCalled == sab[0].cElements, "Destroy->Clear called %d times\n", iRec->clearCalled);
    ok(iRec->ref == START_REF_COUNT, "got %d, expected %d\n", iRec->ref, START_REF_COUNT);
  }


  fail_GetSize = FALSE;
  iRec->ref = START_REF_COUNT;
  iRec->sizeCalled = 0;
  iRec->clearCalled = 0;
  sa = pSafeArrayCreateEx(VT_RECORD, 1, sab, &iRec->IRecordInfo_iface);
  ok(sa != ((void*)0), "CreateEx (Rec) failed\n");
  ok(iRec->ref == START_REF_COUNT + 1, "Wrong iRec refcount %d\n", iRec->ref);
  ok(iRec->sizeCalled == 1, "GetSize called %d times\n", iRec->sizeCalled);
  ok(iRec->clearCalled == 0, "Clear called %d times\n", iRec->clearCalled);
  if (sa && pSafeArrayGetRecordInfo)
  {
    IRecordInfo* saRec = ((void*)0);
    SAFEARRAY *sacopy;

    hres = pSafeArrayGetRecordInfo(sa, &saRec);
    ok(hres == S_OK,"GRI failed\n");
    ok(saRec == &iRec->IRecordInfo_iface, "Different saRec\n");
    ok(iRec->ref == START_REF_COUNT + 2, "Didn't AddRef %d\n", iRec->ref);
    IRecordInfo_Release(saRec);

    ok(sa->cbElements == RECORD_SIZE,"Elemsize is %d\n", sa->cbElements);


    sacopy = pSafeArrayCreateEx(VT_RECORD, 1, sab, &iRec->IRecordInfo_iface);
    iRec->recordcopy = 0;
    iRec->clearCalled = 0;

    hres = SafeArrayCopyData(sa, sacopy);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    ok(iRec->recordcopy == sab[0].cElements, "got %d\n", iRec->recordcopy);
    ok(iRec->clearCalled == 0, "got %d\n", iRec->clearCalled);

    hres = SafeArrayDestroy(sacopy);
    ok(hres == S_OK, "got 0x%08x\n", hres);

    iRec->clearCalled = 0;
    iRec->sizeCalled = 0;
    hres = SafeArrayDestroy(sa);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    ok(iRec->sizeCalled == 0, "Destroy->GetSize called %d times\n", iRec->sizeCalled);
    ok(iRec->clearCalled == sab[0].cElements, "Destroy->Clear called %d times\n", iRec->clearCalled);
    ok(iRec->ref == START_REF_COUNT, "Wrong iRec refcount %d\n", iRec->ref);
  }
  else
  {
    hres = SafeArrayDestroy(sa);
    ok(hres == S_OK, "got 0x%08x\n", hres);
  }

  IRecordInfo_Release(&iRec->IRecordInfo_iface);
}
