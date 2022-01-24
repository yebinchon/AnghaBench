#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_10__ {TYPE_1__* rgsabound; } ;
struct TYPE_9__ {int lLbound; scalar_t__ cElements; } ;
typedef  TYPE_2__ SAFEARRAY ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int VT_UI1 ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int,int,TYPE_2__**) ; 

__attribute__((used)) static void FUNC7(void)
{
  SAFEARRAY *sa;
  HRESULT hres;
  UINT i;

  /* Failure cases */
  hres = FUNC1(0, &sa);
  FUNC5(hres == E_INVALIDARG, "0 dimensions gave hres 0x%x\n", hres);

  hres = FUNC1(65536, &sa);
  FUNC5(hres == E_INVALIDARG, "65536 dimensions gave hres 0x%x\n", hres);

  if (0)
  {
  /* Crashes on 95: XP & Wine return E_POINTER */
  hres=FUNC1(1, NULL);
  FUNC5(hres == E_POINTER,"NULL parm gave hres 0x%x\n", hres);
  }

  /* Test up to the dimension boundary case */
  for (i = 5; i <= 65535; i += 30)
  {
    hres = FUNC1(i, &sa);
    FUNC5(hres == S_OK, "%d dimensions failed; hres 0x%x\n", i, hres);

    if (hres == S_OK)
    {
      FUNC5(FUNC4(sa) == i, "Dimension is %d; should be %d\n",
         FUNC4(sa), i);

      hres = FUNC3(sa);
      FUNC5(hres == S_OK, "destroy failed; hres 0x%x\n", hres);
    }
  }

  if (!&pSafeArrayAllocDescriptorEx)
    return;

  hres = FUNC6(VT_UI1, 0, &sa);
  FUNC5(hres == E_INVALIDARG, "0 dimensions gave hres 0x%x\n", hres);

  hres = FUNC6(VT_UI1, 65536, &sa);
  FUNC5(hres == E_INVALIDARG, "65536 dimensions gave hres 0x%x\n", hres);

  hres = FUNC6(VT_UI1, 1, NULL);
  FUNC5(hres == E_POINTER,"NULL parm gave hres 0x%x\n", hres);

  hres = FUNC6(-1, 1, &sa);
  FUNC5(hres == S_OK, "VT = -1 gave hres 0x%x\n", hres);

  sa->rgsabound[0].cElements = 0;
  sa->rgsabound[0].lLbound = 1;

  hres = FUNC0(sa);
  FUNC5(hres == S_OK, "SafeArrayAllocData gave hres 0x%x\n", hres);

  hres = FUNC2(sa);
  FUNC5(hres == S_OK,"SafeArrayDestroy failed with hres %x\n",hres);
}