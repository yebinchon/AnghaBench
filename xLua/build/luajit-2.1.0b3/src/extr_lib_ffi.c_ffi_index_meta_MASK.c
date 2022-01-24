#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_11__ {int /*<<< orphan*/  ctypeid; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  MMS ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  int /*<<< orphan*/  CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_FFI_BADIDXW ; 
 int /*<<< orphan*/  LJ_ERR_FFI_BADMEMBER ; 
 int /*<<< orphan*/ * LJ_FR2 ; 
 int /*<<< orphan*/  MM_index ; 
 TYPE_9__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 char const* FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(lua_State *L, CTState *cts, CType *ct, MMS mm)
{
  CTypeID id = FUNC2(cts, ct);
  cTValue *tv = FUNC3(cts, id, mm);
  TValue *base = L->base;
  if (!tv) {
    const char *s;
  err_index:
    s = FUNC11(FUNC4(L, id, NULL));
    if (FUNC15(L->base+1)) {
      FUNC5(L, LJ_ERR_FFI_BADMEMBER, s, FUNC10(L->base+1));
    } else {
      const char *key = FUNC12(L->base+1) ?
	FUNC11(FUNC4(L, FUNC0(L->base+1)->ctypeid, NULL)) :
	FUNC9(L->base+1);
      FUNC5(L, LJ_ERR_FFI_BADIDXW, s, key);
    }
  }
  if (!FUNC13(tv)) {
    if (mm == MM_index) {
      cTValue *o = FUNC7(L, tv, base+1);
      if (o) {
	if (FUNC14(o)) goto err_index;
	FUNC1(L, L->top-1, o);
	return 1;
      }
    } else {
      TValue *o = FUNC8(L, tv, base+1);
      if (o) {
	FUNC1(L, o, base+2);
	return 0;
      }
    }
    FUNC1(L, base, L->top);
    tv = L->top-1-LJ_FR2;
  }
  return FUNC6(L, tv);
}