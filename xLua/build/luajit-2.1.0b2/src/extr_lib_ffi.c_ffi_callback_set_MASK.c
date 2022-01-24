#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_11__ {size_t sizeid; scalar_t__* cbid; size_t topid; } ;
struct TYPE_14__ {TYPE_1__ cb; int /*<<< orphan*/ * miscmap; } ;
struct TYPE_13__ {int size; int /*<<< orphan*/  info; } ;
struct TYPE_12__ {int /*<<< orphan*/  ctypeid; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  size_t MSize ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCfunc ;
typedef  TYPE_2__ GCcdata ;
typedef  TYPE_3__ CType ;
typedef  TYPE_4__ CTState ;

/* Variables and functions */
 scalar_t__ LJ_32 ; 
 int /*<<< orphan*/  LJ_ERR_FFI_BADCBACK ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC5 (TYPE_4__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(lua_State *L, GCfunc *fn)
{
  GCcdata *cd = FUNC4(L, 1);
  CTState *cts = FUNC1(L);
  CType *ct = FUNC3(cts, cd->ctypeid);
  if (FUNC2(ct->info) && (LJ_32 || ct->size == 8)) {
    MSize slot = FUNC5(cts, *(void **)FUNC0(cd));
    if (slot < cts->cb.sizeid && cts->cb.cbid[slot] != 0) {
      GCtab *t = cts->miscmap;
      TValue *tv = FUNC8(L, t, (int32_t)slot);
      if (fn) {
	FUNC9(L, tv, fn);
	FUNC7(L, t);
      } else {
	FUNC10(tv);
	cts->cb.cbid[slot] = 0;
	cts->cb.topid = slot < cts->cb.topid ? slot : cts->cb.topid;
      }
      return 0;
    }
  }
  FUNC6(L, LJ_ERR_FFI_BADCBACK);
  return 0;
}