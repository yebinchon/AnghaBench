#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cElements; scalar_t__ lLbound; } ;
typedef  TYPE_1__ SAFEARRAYBOUND ;
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_UNEXPECTED ; 
 scalar_t__ FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VT_UI1 ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(void)
{
  SAFEARRAYBOUND sab[4];
  SAFEARRAY *sa;
  HRESULT hres;
  BOOL bVector = FALSE;
  int dimension;

  /* Failure cases */
  hres = FUNC3(NULL);
  FUNC5(hres == E_INVALIDARG, "Lock NULL array hres 0x%x\n", hres);
  hres = FUNC4(NULL);
  FUNC5(hres == E_INVALIDARG, "Lock NULL array hres 0x%x\n", hres);

  for (dimension = 0; dimension < FUNC0(sab); dimension++)
  {
    sab[dimension].lLbound = 0;
    sab[dimension].cElements = 8;
  }

  sa = FUNC1(VT_UI1, FUNC0(sab), sab);

  /* Test maximum locks */
test_LockUnlock_Vector:
  if (sa)
  {
    int count = 0;

    hres = FUNC4(sa);
    FUNC5 (hres == E_UNEXPECTED, "Bad %sUnlock gave hres 0x%x\n",
        bVector ? "vector " : "\n", hres);

    while ((hres = FUNC3(sa)) == S_OK)
      count++;
    FUNC5 (count == 65535 && hres == E_UNEXPECTED, "Lock %sfailed at %d; hres 0x%x\n",
        bVector ? "vector " : "\n", count, hres);

    if (count == 65535 && hres == E_UNEXPECTED)
    {
      while ((hres = FUNC4(sa)) == S_OK)
        count--;
      FUNC5 (count == 0 && hres == E_UNEXPECTED, "Unlock %sfailed at %d; hres 0x%x\n",
          bVector ? "vector " : "\n", count, hres);
    }

    hres = FUNC2(sa);
    FUNC5(hres == S_OK, "got 0x%08x\n", hres);
  }

  if (bVector == FALSE && &pSafeArrayCreateVector)
  {
    /* Test again with a vector */
    sa = FUNC6(VT_UI1, 0, 100);
    bVector = TRUE;
    goto test_LockUnlock_Vector;
  }
}