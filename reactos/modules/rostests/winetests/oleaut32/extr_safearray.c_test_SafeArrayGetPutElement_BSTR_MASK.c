#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int cbElements; } ;
struct TYPE_8__ {int lLbound; int cElements; } ;
typedef  TYPE_1__ SAFEARRAYBOUND ;
typedef  TYPE_2__ SAFEARRAY ;
typedef  char OLECHAR ;
typedef  int LONG ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 scalar_t__ S_OK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VT_BSTR ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
  SAFEARRAYBOUND sab;
  LONG indices[1];
  SAFEARRAY *sa;
  HRESULT hres;
  BSTR value = 0, gotvalue;
  const OLECHAR szTest[5] = { 'T','e','s','t','\0' };

  sab.lLbound = 1;
  sab.cElements = 1;

  sa = FUNC0(VT_BSTR, 1, &sab);
  FUNC7(sa != NULL, "BSTR test couldn't create array\n");
  if (!sa)
    return;

  FUNC7(sa->cbElements == sizeof(BSTR), "BSTR size mismatch\n");

  indices[0] = sab.lLbound;
  value = FUNC4(szTest);
  FUNC7 (value != NULL, "Expected non-NULL\n");
  hres = FUNC3(sa, indices, value);
  FUNC7(hres == S_OK, "Failed to put bstr element hres 0x%x\n", hres);
  gotvalue = NULL;
  hres = FUNC2(sa, indices, &gotvalue);
  FUNC7(hres == S_OK, "Failed to get bstr element at hres 0x%x\n", hres);
  if (hres == S_OK)
    FUNC7(FUNC6(value) == FUNC6(gotvalue), "Got len %d instead of %d\n", FUNC6(gotvalue), FUNC6(value));
  hres = FUNC1(sa);
  FUNC7(hres == S_OK, "got 0x%08x\n", hres);
  FUNC5(value);
  FUNC5(gotvalue);
}