#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int ref; int /*<<< orphan*/  IUnknown_iface; } ;
struct TYPE_10__ {int cbElements; } ;
struct TYPE_9__ {int lLbound; int cElements; } ;
typedef  TYPE_1__ SAFEARRAYBOUND ;
typedef  TYPE_2__ SAFEARRAY ;
typedef  int /*<<< orphan*/  LPUNKNOWN ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 TYPE_3__ xtunk ; 

__attribute__((used)) static void FUNC5(void)
{
  SAFEARRAYBOUND sab;
  LONG indices[1];
  SAFEARRAY *sa;
  HRESULT hres;
  IUnknown *gotvalue;

  sab.lLbound = 1;
  sab.cElements = 1;
  sa = FUNC0(VT_UNKNOWN, 1, &sab);
  FUNC4(sa != NULL, "UNKNOWN test couldn't create array\n");
  if (!sa)
    return;

  FUNC4(sa->cbElements == sizeof(LPUNKNOWN), "LPUNKNOWN size mismatch\n");

  indices[0] = sab.lLbound;
  xtunk.ref = 1;
  hres = FUNC3(sa, indices, &xtunk.IUnknown_iface);
  FUNC4(hres == S_OK, "Failed to put bstr element hres 0x%x\n", hres);
  FUNC4(xtunk.ref == 2,"Failed to increment refcount of iface.\n");
  gotvalue = NULL;
  hres = FUNC2(sa, indices, &gotvalue);
  FUNC4(xtunk.ref == 3,"Failed to increment refcount of iface.\n");
  FUNC4(hres == S_OK, "Failed to get bstr element at hres 0x%x\n", hres);
  if (hres == S_OK)
    FUNC4(gotvalue == &xtunk.IUnknown_iface, "Got %p instead of %p\n", gotvalue, &xtunk.IUnknown_iface);
  hres = FUNC1(sa);
  FUNC4(hres == S_OK, "got 0x%08x\n", hres);
  FUNC4(xtunk.ref == 2,"Failed to decrement refcount of iface.\n");
}