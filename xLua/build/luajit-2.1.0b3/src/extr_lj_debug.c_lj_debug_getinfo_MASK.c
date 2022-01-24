#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_26__ {int /*<<< orphan*/ * top; int /*<<< orphan*/  maxstack; int /*<<< orphan*/  stack; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_27__ {char* source; char* short_src; int linedefined; int lastlinedefined; char* what; int currentline; int isvararg; char* namewhat; int /*<<< orphan*/ * name; scalar_t__ nparams; int /*<<< orphan*/  nups; scalar_t__ i_ci; } ;
typedef  TYPE_3__ lj_Debug ;
struct TYPE_25__ {int /*<<< orphan*/  nupvalues; int /*<<< orphan*/  gct; } ;
struct TYPE_29__ {TYPE_1__ c; } ;
struct TYPE_28__ {int firstline; int numline; int flags; size_t sizebc; scalar_t__ numparams; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  size_t MSize ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_4__ GCproto ;
typedef  TYPE_5__ GCfunc ;
typedef  int BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_TFUNC ; 
 int PROTO_VARARG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 char* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_4__*) ; 
 void* FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 

int FUNC21(lua_State *L, const char *what, lj_Debug *ar, int ext)
{
  int opt_f = 0, opt_L = 0;
  TValue *frame = NULL;
  TValue *nextframe = NULL;
  GCfunc *fn;
  if (*what == '>') {
    TValue *func = L->top - 1;
    FUNC0(L, FUNC19(func));
    fn = FUNC3(func);
    L->top--;
    what++;
  } else {
    uint32_t offset = (uint32_t)ar->i_ci & 0xffff;
    uint32_t size = (uint32_t)ar->i_ci >> 16;
    FUNC11(offset != 0);
    frame = FUNC20(L->stack) + offset;
    if (size) nextframe = frame + size;
    FUNC11(frame <= FUNC20(L->maxstack) &&
	       (!nextframe || nextframe <= FUNC20(L->maxstack)));
    fn = FUNC2(frame);
    FUNC11(fn->c.gct == ~LJ_TFUNC);
  }
  for (; *what; what++) {
    if (*what == 'S') {
      if (FUNC6(fn)) {
	GCproto *pt = FUNC4(fn);
	BCLine firstline = pt->firstline;
	GCstr *name = FUNC12(pt);
	ar->source = FUNC18(name);
	FUNC8(ar->short_src, name, pt->firstline);
	ar->linedefined = (int)firstline;
	ar->lastlinedefined = (int)(firstline + pt->numline);
	ar->what = (firstline || !pt->numline) ? "Lua" : "main";
      } else {
	ar->source = "=[C]";
	ar->short_src[0] = '[';
	ar->short_src[1] = 'C';
	ar->short_src[2] = ']';
	ar->short_src[3] = '\0';
	ar->linedefined = -1;
	ar->lastlinedefined = -1;
	ar->what = "C";
      }
    } else if (*what == 'l') {
      ar->currentline = frame ? FUNC1(L, fn, nextframe) : -1;
    } else if (*what == 'u') {
      ar->nups = fn->c.nupvalues;
      if (ext) {
	if (FUNC6(fn)) {
	  GCproto *pt = FUNC4(fn);
	  ar->nparams = pt->numparams;
	  ar->isvararg = !!(pt->flags & PROTO_VARARG);
	} else {
	  ar->nparams = 0;
	  ar->isvararg = 1;
	}
      }
    } else if (*what == 'n') {
      ar->namewhat = frame ? FUNC7(L, frame, &ar->name) : NULL;
      if (ar->namewhat == NULL) {
	ar->namewhat = "";
	ar->name = NULL;
      }
    } else if (*what == 'f') {
      opt_f = 1;
    } else if (*what == 'L') {
      opt_L = 1;
    } else {
      return 0;  /* Bad option. */
    }
  }
  if (opt_f) {
    FUNC15(L, L->top, fn);
    FUNC5(L);
  }
  if (opt_L) {
    if (FUNC6(fn)) {
      GCtab *t = FUNC9(L, 0, 0);
      GCproto *pt = FUNC4(fn);
      const void *lineinfo = FUNC13(pt);
      if (lineinfo) {
	BCLine first = pt->firstline;
	int sz = pt->numline < 256 ? 1 : pt->numline < 65536 ? 2 : 4;
	MSize i, szl = pt->sizebc-1;
	for (i = 0; i < szl; i++) {
	  BCLine line = first +
	    (sz == 1 ? (BCLine)((const uint8_t *)lineinfo)[i] :
	     sz == 2 ? (BCLine)((const uint16_t *)lineinfo)[i] :
	     (BCLine)((const uint32_t *)lineinfo)[i]);
	  FUNC14(FUNC10(L, t, line), 1);
	}
      }
      FUNC17(L, L->top, t);
    } else {
      FUNC16(L->top);
    }
    FUNC5(L);
  }
  return 1;  /* Ok. */
}