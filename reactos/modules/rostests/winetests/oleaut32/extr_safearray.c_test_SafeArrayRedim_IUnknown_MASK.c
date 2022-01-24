#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ref; int /*<<< orphan*/  IUnknown_iface; } ;
struct TYPE_11__ {int cbElements; } ;
struct TYPE_10__ {int lLbound; int cElements; } ;
typedef  TYPE_1__ SAFEARRAYBOUND ;
typedef  TYPE_2__ SAFEARRAY ;
typedef  int /*<<< orphan*/  LPUNKNOWN ;
typedef  int LONG ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ S_OK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  VT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 TYPE_3__ xtunk ; 

__attribute__((used)) static void FUNC5(void)
{
  SAFEARRAYBOUND sab;
  LONG indices[1];
  SAFEARRAY *sa;
  HRESULT hres;

  sab.lLbound = 1;
  sab.cElements = 2;
  sa = FUNC0(VT_UNKNOWN, 1, &sab);
  FUNC4(sa != NULL, "UNKNOWN test couldn't create array\n");
  if (!sa)
    return;

  FUNC4(sa->cbElements == sizeof(LPUNKNOWN), "LPUNKNOWN size mismatch\n");

  indices[0] = 2;
  xtunk.ref = 1;
  hres = FUNC2(sa, indices, &xtunk.IUnknown_iface);
  FUNC4(hres == S_OK, "Failed to put IUnknown element hres 0x%x\n", hres);
  FUNC4(xtunk.ref == 2,"Failed to increment refcount of iface.\n");
  sab.cElements = 1;
  hres = FUNC3(sa, &sab);
  FUNC4(hres == S_OK, "Failed to shrink array hres 0x%x\n", hres);
  FUNC4(xtunk.ref == 1, "Failed to decrement refcount\n");
  hres = FUNC1(sa);
  FUNC4(hres == S_OK, "got 0x%08x\n", hres);
}