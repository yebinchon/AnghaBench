#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ VARTYPE ;
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  int HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int S_OK ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ VT_CLSID ; 
 scalar_t__ VT_EMPTY ; 
 scalar_t__ VT_UI1 ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
  SAFEARRAY *sa;
  HRESULT hres;
  VARTYPE vt;
  int element;

  if (!&pSafeArrayCreateVector)
  {
    FUNC8("SafeArrayCreateVector not supported\n");
    return;
  }
  sa = FUNC7(VT_UI1, 0, 0);
  FUNC6(sa != NULL, "SACV with 0 elements failed.\n");

  hres = FUNC1(sa);
  FUNC6(hres == S_OK, "SafeArrayDestroy failed with hres %x\n",hres);

  /* Test all VARTYPES in different lengths */
  for (element = 1; element <= 101; element += 10)
  {
    for (vt = VT_EMPTY; vt < VT_CLSID; vt++)
    {
      DWORD dwLen = FUNC0(vt);

      sa = FUNC7(vt, 0, element);

      if (dwLen)
        FUNC6(sa != NULL, "VARTYPE %d (@%d elements) failed\n", vt, element);
      else
        FUNC6(sa == NULL, "VARTYPE %d (@%d elements) succeeded!\n", vt, element);

      if (sa)
      {
        FUNC6(FUNC2(sa) == 1, "VARTYPE %d (@%d elements) cDims %d, not 1\n",
           vt, element, FUNC2(sa));
        FUNC6(FUNC3(sa) == dwLen,
           "VARTYPE %d (@%d elements) cbElements is %d, expected %d\n",
           vt, element, FUNC3(sa), dwLen);

        hres = FUNC4(sa);
        FUNC6(hres == S_OK, "Lock VARTYPE %d (@%d elements) failed; hres 0x%x\n",
           vt, element, hres);

        if (hres == S_OK)
        {
          hres = FUNC5(sa);
          FUNC6(hres == S_OK, "Unlock VARTYPE %d (@%d elements) failed; hres 0x%x\n",
             vt, element, hres);

          hres = FUNC1(sa);
          FUNC6(hres == S_OK, "destroy VARTYPE %d (@%d elements) failed; hres 0x%x\n",
             vt, element, hres);
        }
      }
    }
  }
}