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
typedef  int /*<<< orphan*/  jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_11__ {int size; int /*<<< orphan*/  info; } ;
struct TYPE_10__ {int marked; int /*<<< orphan*/  ctypeid; } ;
struct TYPE_9__ {scalar_t__ immutable; } ;
typedef  TYPE_1__ GCupval ;
typedef  TYPE_2__ GCcdata ;
typedef  TYPE_3__ CType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LJ_GC_CDATA_FIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(jit_State *J, GCupval *uvp)
{
  if (uvp->immutable) {
    cTValue *o = FUNC11(uvp);
    /* Don't constify objects that may retain large amounts of memory. */
#if LJ_HASFFI
    if (tviscdata(o)) {
      GCcdata *cd = cdataV(o);
      if (!cdataisv(cd) && !(cd->marked & LJ_GC_CDATA_FIN)) {
	CType *ct = ctype_raw(ctype_ctsG(J2G(J)), cd->ctypeid);
	if (!ctype_hassize(ct->info) || ct->size <= 16)
	  return 1;
      }
      return 0;
    }
#else
    FUNC1(J);
#endif
    if (!(FUNC8(o) || FUNC10(o) || FUNC9(o)))
      return 1;
  }
  return 0;
}