#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  L; } ;
struct TYPE_24__ {char tok; int /*<<< orphan*/ * str; TYPE_5__* cts; } ;
struct TYPE_23__ {scalar_t__ u32; int /*<<< orphan*/  id; } ;
struct TYPE_22__ {scalar_t__ size; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTSize ;
typedef  TYPE_2__ CPValue ;
typedef  TYPE_3__ CPState ;

/* Variables and functions */
 char CTOK_DEREF ; 
 char CTOK_IDENT ; 
 scalar_t__ CTSIZE_INVALID ; 
 int /*<<< orphan*/  LJ_ERR_FFI_BADMEMBER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,TYPE_1__*) ; 
 TYPE_1__* FUNC13 (TYPE_5__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(CPState *cp, CPValue *k)
{
  for (;;) {
    CType *ct;
    if (FUNC6(cp, '[')) {  /* Array/pointer index. */
      CPValue k2;
      FUNC4(cp, &k2);
      ct = FUNC14(cp->cts, k->id);
      if (!FUNC10(ct->info)) {
	ct = FUNC14(cp->cts, k2.id);
	if (!FUNC10(ct->info))
	  FUNC1(cp, ct);
      }
      FUNC0(cp, ']');
      k->u32 = 0;
    } else if (cp->tok == '.' || cp->tok == CTOK_DEREF) {  /* Struct deref. */
      CTSize ofs;
      CType *fct;
      ct = FUNC14(cp->cts, k->id);
      if (cp->tok == CTOK_DEREF) {
	if (!FUNC10(ct->info))
	  FUNC1(cp, ct);
	ct = FUNC14(cp->cts, FUNC7(ct->info));
      }
      FUNC5(cp);
      if (cp->tok != CTOK_IDENT) FUNC2(cp, CTOK_IDENT);
      if (!FUNC11(ct->info) || ct->size == CTSIZE_INVALID ||
	  !(fct = FUNC13(cp->cts, ct, cp->str, &ofs)) ||
	  FUNC8(fct->info)) {
	GCstr *s = FUNC15(cp->cts->L, FUNC12(cp->cts, ct), NULL);
	FUNC3(cp, 0, LJ_ERR_FFI_BADMEMBER, FUNC16(s), FUNC16(cp->str));
      }
      ct = fct;
      k->u32 = FUNC9(ct->info) ? ct->size : 0;
      FUNC5(cp);
    } else {
      return;
    }
    k->id = FUNC7(ct->info);
  }
}