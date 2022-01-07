
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cElements; scalar_t__ lLbound; } ;
typedef TYPE_1__ SAFEARRAYBOUND ;
typedef int SAFEARRAY ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_UNEXPECTED ;
 scalar_t__ FALSE ;
 scalar_t__ S_OK ;
 int * SafeArrayCreate (int ,int,TYPE_1__*) ;
 scalar_t__ SafeArrayDestroy (int *) ;
 scalar_t__ SafeArrayLock (int *) ;
 scalar_t__ SafeArrayUnlock (int *) ;
 scalar_t__ TRUE ;
 int VT_UI1 ;
 int ok (int,char*,scalar_t__,...) ;
 int * pSafeArrayCreateVector (int ,int ,int) ;

__attribute__((used)) static void test_LockUnlock(void)
{
  SAFEARRAYBOUND sab[4];
  SAFEARRAY *sa;
  HRESULT hres;
  BOOL bVector = FALSE;
  int dimension;


  hres = SafeArrayLock(((void*)0));
  ok(hres == E_INVALIDARG, "Lock NULL array hres 0x%x\n", hres);
  hres = SafeArrayUnlock(((void*)0));
  ok(hres == E_INVALIDARG, "Lock NULL array hres 0x%x\n", hres);

  for (dimension = 0; dimension < ARRAY_SIZE(sab); dimension++)
  {
    sab[dimension].lLbound = 0;
    sab[dimension].cElements = 8;
  }

  sa = SafeArrayCreate(VT_UI1, ARRAY_SIZE(sab), sab);


test_LockUnlock_Vector:
  if (sa)
  {
    int count = 0;

    hres = SafeArrayUnlock(sa);
    ok (hres == E_UNEXPECTED, "Bad %sUnlock gave hres 0x%x\n",
        bVector ? "vector " : "\n", hres);

    while ((hres = SafeArrayLock(sa)) == S_OK)
      count++;
    ok (count == 65535 && hres == E_UNEXPECTED, "Lock %sfailed at %d; hres 0x%x\n",
        bVector ? "vector " : "\n", count, hres);

    if (count == 65535 && hres == E_UNEXPECTED)
    {
      while ((hres = SafeArrayUnlock(sa)) == S_OK)
        count--;
      ok (count == 0 && hres == E_UNEXPECTED, "Unlock %sfailed at %d; hres 0x%x\n",
          bVector ? "vector " : "\n", count, hres);
    }

    hres = SafeArrayDestroy(sa);
    ok(hres == S_OK, "got 0x%08x\n", hres);
  }

  if (bVector == FALSE && pSafeArrayCreateVector)
  {

    sa = pSafeArrayCreateVector(VT_UI1, 0, 100);
    bVector = TRUE;
    goto test_LockUnlock_Vector;
  }
}
