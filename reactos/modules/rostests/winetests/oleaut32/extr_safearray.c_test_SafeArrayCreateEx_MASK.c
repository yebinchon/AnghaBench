#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_16__ {int ref; int sizeCalled; int clearCalled; int recordcopy; int /*<<< orphan*/  IRecordInfo_iface; } ;
struct TYPE_15__ {int cbElements; } ;
struct TYPE_14__ {int cElements; scalar_t__ lLbound; } ;
typedef  TYPE_1__ SAFEARRAYBOUND ;
typedef  TYPE_2__ SAFEARRAY ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_3__ IRecordInfoImpl ;
typedef  int /*<<< orphan*/  IRecordInfo ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_ITypeInfo ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int RECORD_SIZE ; 
 int RECORD_SIZE_FAIL ; 
 int START_REF_COUNT ; 
 int S_OK ; 
 int FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VT_DISPATCH ; 
 int /*<<< orphan*/  VT_RECORD ; 
 int /*<<< orphan*/  VT_UI1 ; 
 int /*<<< orphan*/  VT_UNKNOWN ; 
 int /*<<< orphan*/  fail_GetSize ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
  IRecordInfoImpl* iRec;
  SAFEARRAYBOUND sab[4];
  SAFEARRAY *sa;
  HRESULT hres;
  UINT dimension;

  if (!&pSafeArrayCreateEx)
  {
    FUNC11("SafeArrayCreateEx not supported\n");
    return;
  }

  for (dimension = 0; dimension < FUNC0(sab); dimension++)
  {
    sab[dimension].lLbound = 0;
    sab[dimension].cElements = 8;
  }

  /* Failure cases */
  sa = FUNC9(VT_UI1, 1, NULL, NULL);
  FUNC8(sa == NULL, "CreateEx NULL bounds didn't fail\n");

  /* test IID storage & defaulting */
  sa = FUNC9(VT_DISPATCH, 1, sab, (PVOID)&IID_ITypeInfo);
  FUNC8(sa != NULL, "CreateEx (ITypeInfo) failed\n");

  if (sa)
  {
    GUID guid;

    hres = FUNC6(sa, &guid);
    FUNC8(hres == S_OK, "Failed to get array IID, hres %#x.\n", hres);
    FUNC8(FUNC3(&guid, &IID_ITypeInfo), "CreateEx (ITypeInfo) bad IID\n");
    hres = FUNC7(sa, &IID_IUnknown);
    FUNC8(hres == S_OK, "Failed to set IID, hres = %8x\n", hres);
    hres = FUNC6(sa, &guid);
    FUNC8(hres == S_OK && FUNC3(&guid, &IID_IUnknown), "Set bad IID\n");
    hres = FUNC5(sa);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
  }

  sa = FUNC9(VT_DISPATCH, 1, sab, NULL);
  FUNC8(sa != NULL, "CreateEx (NULL) failed\n");

  if (sa)
  {
    GUID guid;

    hres = FUNC6(sa, &guid);
    FUNC8(hres == S_OK, "Failed to get array IID, hres %#x.\n", hres);
    FUNC8(FUNC3(&guid, &IID_IDispatch), "CreateEx (NULL) bad IID\n");
    hres = FUNC5(sa);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
  }

  sa = FUNC9(VT_UNKNOWN, 1, sab, NULL);
  FUNC8(sa != NULL, "CreateEx (NULL-Unk) failed\n");

  if (sa)
  {
    GUID guid;

    hres = FUNC6(sa, &guid);
    FUNC8(hres == S_OK, "Failed to get array IID, hres %#x.\n", hres);
    FUNC8(FUNC3(&guid, &IID_IUnknown), "CreateEx (NULL-Unk) bad IID\n");
    hres = FUNC5(sa);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
  }

  /* VT_RECORD failure case */
  sa = FUNC9(VT_RECORD, 1, sab, NULL);
  FUNC8(sa == NULL, "CreateEx (NULL-Rec) succeeded\n");

  iRec = FUNC1();

  /* Win32 doesn't care if GetSize fails */
  fail_GetSize = TRUE;
  sa = FUNC9(VT_RECORD, 1, sab, &iRec->IRecordInfo_iface);
  FUNC8(sa != NULL, "CreateEx (Fail Size) failed\n");
  FUNC8(iRec->ref == START_REF_COUNT + 1, "Wrong iRec refcount %d\n", iRec->ref);
  FUNC8(iRec->sizeCalled == 1, "GetSize called %d times\n", iRec->sizeCalled);
  FUNC8(iRec->clearCalled == 0, "Clear called %d times\n", iRec->clearCalled);
  if (sa)
  {
    FUNC8(sa->cbElements == RECORD_SIZE_FAIL, "Altered size to %d\n", sa->cbElements);
    hres = FUNC5(sa);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
    FUNC8(iRec->clearCalled == sab[0].cElements, "Destroy->Clear called %d times\n", iRec->clearCalled);
    FUNC8(iRec->ref == START_REF_COUNT, "got %d, expected %d\n", iRec->ref, START_REF_COUNT);
  }

  /* Test VT_RECORD array */
  fail_GetSize = FALSE;
  iRec->ref = START_REF_COUNT;
  iRec->sizeCalled = 0;
  iRec->clearCalled = 0;
  sa = FUNC9(VT_RECORD, 1, sab, &iRec->IRecordInfo_iface);
  FUNC8(sa != NULL, "CreateEx (Rec) failed\n");
  FUNC8(iRec->ref == START_REF_COUNT + 1, "Wrong iRec refcount %d\n", iRec->ref);
  FUNC8(iRec->sizeCalled == 1, "GetSize called %d times\n", iRec->sizeCalled);
  FUNC8(iRec->clearCalled == 0, "Clear called %d times\n", iRec->clearCalled);
  if (sa && &pSafeArrayGetRecordInfo)
  {
    IRecordInfo* saRec = NULL;
    SAFEARRAY *sacopy;

    hres = FUNC10(sa, &saRec);
    FUNC8(hres == S_OK,"GRI failed\n");
    FUNC8(saRec == &iRec->IRecordInfo_iface, "Different saRec\n");
    FUNC8(iRec->ref == START_REF_COUNT + 2, "Didn't AddRef %d\n", iRec->ref);
    FUNC2(saRec);

    FUNC8(sa->cbElements == RECORD_SIZE,"Elemsize is %d\n", sa->cbElements);

    /* try to copy record based arrays */
    sacopy = FUNC9(VT_RECORD, 1, sab, &iRec->IRecordInfo_iface);
    iRec->recordcopy = 0;
    iRec->clearCalled = 0;
    /* array copy code doesn't explicitly clear a record */
    hres = FUNC4(sa, sacopy);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
    FUNC8(iRec->recordcopy == sab[0].cElements, "got %d\n", iRec->recordcopy);
    FUNC8(iRec->clearCalled == 0, "got %d\n", iRec->clearCalled);

    hres = FUNC5(sacopy);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);

    iRec->clearCalled = 0;
    iRec->sizeCalled = 0;
    hres = FUNC5(sa);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
    FUNC8(iRec->sizeCalled == 0, "Destroy->GetSize called %d times\n", iRec->sizeCalled);
    FUNC8(iRec->clearCalled == sab[0].cElements, "Destroy->Clear called %d times\n", iRec->clearCalled);
    FUNC8(iRec->ref == START_REF_COUNT, "Wrong iRec refcount %d\n", iRec->ref);
  }
  else
  {
    hres = FUNC5(sa);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
  }

  FUNC2(&iRec->IRecordInfo_iface);
}