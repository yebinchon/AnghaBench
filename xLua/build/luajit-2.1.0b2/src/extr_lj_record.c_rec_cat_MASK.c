#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  savetv ;
struct TYPE_13__ {void** base; size_t maxslot; TYPE_3__* L; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_15__ {int /*<<< orphan*/ * base; } ;
struct TYPE_14__ {void* key; void* tab; int /*<<< orphan*/  tabv; int /*<<< orphan*/  keyv; } ;
struct TYPE_12__ {int /*<<< orphan*/  strempty; int /*<<< orphan*/  tmpbuf; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  void* TRef ;
typedef  TYPE_2__ RecordIndex ;
typedef  size_t BCReg ;

/* Variables and functions */
 void* IRBUFHDR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* IRTOSTR_INT ; 
 void* IRTOSTR_NUM ; 
 int /*<<< orphan*/  IRT_P32 ; 
 int /*<<< orphan*/  IRT_STR ; 
 int /*<<< orphan*/  IR_BUFHDR ; 
 int /*<<< orphan*/  IR_BUFPUT ; 
 int /*<<< orphan*/  IR_BUFSTR ; 
 int /*<<< orphan*/  IR_TOSTR ; 
 TYPE_10__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MM_concat ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 void* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (void*) ; 
 scalar_t__ FUNC11 (void*) ; 
 scalar_t__ FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 

__attribute__((used)) static TRef FUNC14(jit_State *J, BCReg baseslot, BCReg topslot)
{
  TRef *top = &J->base[topslot];
  TValue savetv[5];
  BCReg s;
  RecordIndex ix;
  FUNC6(baseslot < topslot);
  for (s = baseslot; s <= topslot; s++)
    (void)FUNC4(J, s);  /* Ensure all arguments have a reference. */
  if (FUNC12(top[0]) && FUNC12(top[-1])) {
    TRef tr, hdr, *trp, *xbase, *base = &J->base[baseslot];
    /* First convert numbers to strings. */
    for (trp = top; trp >= base; trp--) {
      if (FUNC11(*trp))
	*trp = FUNC3(FUNC0(IR_TOSTR, IRT_STR), *trp,
		      FUNC10(*trp) ? IRTOSTR_NUM : IRTOSTR_INT);
      else if (!FUNC13(*trp))
	break;
    }
    xbase = ++trp;
    tr = hdr = FUNC3(FUNC0(IR_BUFHDR, IRT_P32),
		      FUNC5(J, &FUNC1(J)->tmpbuf), IRBUFHDR_RESET);
    do {
      tr = FUNC3(FUNC0(IR_BUFPUT, IRT_P32), tr, *trp++);
    } while (trp <= top);
    tr = FUNC3(FUNC0(IR_BUFSTR, IRT_STR), tr, hdr);
    J->maxslot = (BCReg)(xbase - J->base);
    if (xbase == base) return tr;  /* Return simple concatenation result. */
    /* Pass partial result. */
    topslot = J->maxslot--;
    *xbase = tr;
    top = xbase;
    FUNC9(J->L, &ix.keyv, &FUNC1(J)->strempty);  /* Simulate string result. */
  } else {
    J->maxslot = topslot-1;
    FUNC2(J->L, &ix.keyv, &J->L->base[topslot]);
  }
  FUNC2(J->L, &ix.tabv, &J->L->base[topslot-1]);
  ix.tab = top[-1];
  ix.key = top[0];
  FUNC7(savetv, &J->L->base[topslot-1], sizeof(savetv));  /* Save slots. */
  FUNC8(J, &ix, MM_concat);  /* Call __concat metamethod. */
  FUNC7(&J->L->base[topslot-1], savetv, sizeof(savetv));  /* Restore slots. */
  return 0;  /* No result yet. */
}