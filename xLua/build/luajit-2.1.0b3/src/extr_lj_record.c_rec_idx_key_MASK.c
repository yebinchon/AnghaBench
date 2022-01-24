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
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ lua_Number ;
struct TYPE_24__ {scalar_t__ irt; } ;
struct TYPE_21__ {scalar_t__ nins; } ;
struct TYPE_22__ {TYPE_4__ guardemit; TYPE_1__ cur; int /*<<< orphan*/  L; } ;
typedef  TYPE_2__ jit_State ;
typedef  scalar_t__ int32_t ;
struct TYPE_25__ {scalar_t__ asize; scalar_t__ hmask; int /*<<< orphan*/  node; } ;
struct TYPE_23__ {int /*<<< orphan*/  tab; scalar_t__ oldv; int /*<<< orphan*/  keyv; int /*<<< orphan*/  key; int /*<<< orphan*/  tabv; } ;
struct TYPE_20__ {int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_3__ RecordIndex ;
typedef  int /*<<< orphan*/  Node ;
typedef  scalar_t__ MSize ;
typedef  TYPE_4__ IRType1 ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_5__ GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  IRCONV_NUM_INT ; 
 int /*<<< orphan*/  IRFL_TAB_ARRAY ; 
 int /*<<< orphan*/  IRFL_TAB_ASIZE ; 
 int /*<<< orphan*/  IRFL_TAB_HMASK ; 
 int /*<<< orphan*/  IRFL_TAB_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_PGC ; 
 int /*<<< orphan*/  IR_AREF ; 
 int /*<<< orphan*/  IR_CONV ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 int /*<<< orphan*/  IR_HREF ; 
 int /*<<< orphan*/  IR_HREFK ; 
 int /*<<< orphan*/  IR_ULE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ LJ_MAX_ASIZE ; 
 int /*<<< orphan*/  LJ_TRERR_NYITMIX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_5__* FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TRef FUNC24(jit_State *J, RecordIndex *ix, IRRef *rbref,
			IRType1 *rbguard)
{
  TRef key;
  GCtab *t = FUNC19(&ix->tabv);
  ix->oldv = FUNC12(J->L, t, &ix->keyv);  /* Lookup previous value. */
  *rbref = 0;
  rbguard->irt = 0;

  /* Integer keys are looked up in the array part first. */
  key = ix->key;
  if (FUNC22(key)) {
    int32_t k = FUNC17(&ix->keyv);
    if (!FUNC23(&ix->keyv) && FUNC16(&ix->keyv) != (lua_Number)k)
      k = LJ_MAX_ASIZE;
    if ((MSize)k < LJ_MAX_ASIZE) {  /* Potential array key? */
      TRef ikey = FUNC11(J, key);
      TRef asizeref = FUNC6(FUNC3(IR_FLOAD), ix->tab, IRFL_TAB_ASIZE);
      if ((MSize)k < t->asize) {  /* Currently an array key? */
	TRef arrayref;
	FUNC18(J, asizeref, ikey, t->asize);
	arrayref = FUNC6(FUNC0(IR_FLOAD, IRT_PGC), ix->tab, IRFL_TAB_ARRAY);
	return FUNC6(FUNC0(IR_AREF, IRT_PGC), arrayref, ikey);
      } else {  /* Currently not in array (may be an array extension)? */
	FUNC6(FUNC2(IR_ULE), asizeref, ikey);  /* Inv. bounds check. */
	if (k == 0 && FUNC21(key))
	  key = FUNC9(J);  /* Canonicalize 0 or +-0.0 to +0.0. */
	/* And continue with the hash lookup. */
      }
    } else if (!FUNC21(key)) {
      /* We can rule out const numbers which failed the integerness test
      ** above. But all other numbers are potential array keys.
      */
      if (t->asize == 0) {  /* True sparse tables have an empty array part. */
	/* Guard that the array part stays empty. */
	TRef tmp = FUNC6(FUNC3(IR_FLOAD), ix->tab, IRFL_TAB_ASIZE);
	FUNC6(FUNC2(IR_EQ), tmp, FUNC7(J, 0));
      } else {
	FUNC13(J, LJ_TRERR_NYITMIX);
      }
    }
  }

  /* Otherwise the key is located in the hash part. */
  if (t->hmask == 0) {  /* Shortcut for empty hash part. */
    /* Guard that the hash part stays empty. */
    TRef tmp = FUNC6(FUNC3(IR_FLOAD), ix->tab, IRFL_TAB_HMASK);
    FUNC6(FUNC2(IR_EQ), tmp, FUNC7(J, 0));
    return FUNC8(J, FUNC14(FUNC5(J)));
  }
  if (FUNC20(key))  /* Hash keys are based on numbers, not ints. */
    key = FUNC6(FUNC4(IR_CONV), key, IRCONV_NUM_INT);
  if (FUNC21(key)) {
    /* Optimize lookup of constant hash keys. */
    MSize hslot = (MSize)((char *)ix->oldv - (char *)&FUNC15(t->node)[0].val);
    if (t->hmask > 0 && hslot <= t->hmask*(MSize)sizeof(Node) &&
	hslot <= 65535*(MSize)sizeof(Node)) {
      TRef node, kslot, hm;
      *rbref = J->cur.nins;  /* Mark possible rollback point. */
      *rbguard = J->guardemit;
      hm = FUNC6(FUNC3(IR_FLOAD), ix->tab, IRFL_TAB_HMASK);
      FUNC6(FUNC2(IR_EQ), hm, FUNC7(J, (int32_t)t->hmask));
      node = FUNC6(FUNC0(IR_FLOAD, IRT_PGC), ix->tab, IRFL_TAB_NODE);
      kslot = FUNC10(J, key, hslot / sizeof(Node));
      return FUNC6(FUNC1(IR_HREFK, IRT_PGC), node, kslot);
    }
  }
  /* Fall back to a regular hash lookup. */
  return FUNC6(FUNC0(IR_HREF, IRT_PGC), ix->tab, key);
}