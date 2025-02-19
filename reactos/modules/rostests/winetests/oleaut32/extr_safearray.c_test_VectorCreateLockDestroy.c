
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARTYPE ;
typedef int SAFEARRAY ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ SAFEARRAY_GetVTSize (scalar_t__) ;
 int S_OK ;
 int SafeArrayDestroy (int *) ;
 int SafeArrayGetDim (int *) ;
 scalar_t__ SafeArrayGetElemsize (int *) ;
 int SafeArrayLock (int *) ;
 int SafeArrayUnlock (int *) ;
 scalar_t__ VT_CLSID ;
 scalar_t__ VT_EMPTY ;
 scalar_t__ VT_UI1 ;
 int ok (int,char*,...) ;
 int * pSafeArrayCreateVector (scalar_t__,int ,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_VectorCreateLockDestroy(void)
{
  SAFEARRAY *sa;
  HRESULT hres;
  VARTYPE vt;
  int element;

  if (!pSafeArrayCreateVector)
  {
    win_skip("SafeArrayCreateVector not supported\n");
    return;
  }
  sa = pSafeArrayCreateVector(VT_UI1, 0, 0);
  ok(sa != ((void*)0), "SACV with 0 elements failed.\n");

  hres = SafeArrayDestroy(sa);
  ok(hres == S_OK, "SafeArrayDestroy failed with hres %x\n",hres);


  for (element = 1; element <= 101; element += 10)
  {
    for (vt = VT_EMPTY; vt < VT_CLSID; vt++)
    {
      DWORD dwLen = SAFEARRAY_GetVTSize(vt);

      sa = pSafeArrayCreateVector(vt, 0, element);

      if (dwLen)
        ok(sa != ((void*)0), "VARTYPE %d (@%d elements) failed\n", vt, element);
      else
        ok(sa == ((void*)0), "VARTYPE %d (@%d elements) succeeded!\n", vt, element);

      if (sa)
      {
        ok(SafeArrayGetDim(sa) == 1, "VARTYPE %d (@%d elements) cDims %d, not 1\n",
           vt, element, SafeArrayGetDim(sa));
        ok(SafeArrayGetElemsize(sa) == dwLen,
           "VARTYPE %d (@%d elements) cbElements is %d, expected %d\n",
           vt, element, SafeArrayGetElemsize(sa), dwLen);

        hres = SafeArrayLock(sa);
        ok(hres == S_OK, "Lock VARTYPE %d (@%d elements) failed; hres 0x%x\n",
           vt, element, hres);

        if (hres == S_OK)
        {
          hres = SafeArrayUnlock(sa);
          ok(hres == S_OK, "Unlock VARTYPE %d (@%d elements) failed; hres 0x%x\n",
             vt, element, hres);

          hres = SafeArrayDestroy(sa);
          ok(hres == S_OK, "destroy VARTYPE %d (@%d elements) failed; hres 0x%x\n",
             vt, element, hres);
        }
      }
    }
  }
}
