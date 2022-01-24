#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  GCproto ;
typedef  scalar_t__ BCReg ;
typedef  scalar_t__ BCOp ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ BCMbase ; 
 scalar_t__ BCMdst ; 
#define  BC_GGET 131 
 scalar_t__ BC_KNIL ; 
#define  BC_MOV 130 
#define  BC_TGETS 129 
#define  BC_UGET 128 
 scalar_t__ LJ_FR2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int const FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  const* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

const char *FUNC13(GCproto *pt, const BCIns *ip, BCReg slot,
			      const char **name)
{
  const char *lname;
restart:
  lname = FUNC6(pt, FUNC10(pt, ip), slot);
  if (lname != NULL) { *name = lname; return "local"; }
  while (--ip > FUNC9(pt)) {
    BCIns ins = *ip;
    BCOp op = FUNC4(ins);
    BCReg ra = FUNC0(ins);
    if (FUNC5(op) == BCMbase) {
      if (slot >= ra && (op != BC_KNIL || slot <= FUNC3(ins)))
	return NULL;
    } else if (FUNC5(op) == BCMdst && ra == slot) {
      switch (FUNC4(ins)) {
      case BC_MOV:
	if (ra == slot) { slot = FUNC3(ins); goto restart; }
	break;
      case BC_GGET:
	*name = FUNC12(FUNC7(FUNC11(pt, ~(ptrdiff_t)FUNC3(ins))));
	return "global";
      case BC_TGETS:
	*name = FUNC12(FUNC7(FUNC11(pt, ~(ptrdiff_t)FUNC2(ins))));
	if (ip > FUNC9(pt)) {
	  BCIns insp = ip[-1];
	  if (FUNC4(insp) == BC_MOV && FUNC0(insp) == ra+1+LJ_FR2 &&
	      FUNC3(insp) == FUNC1(ins))
	    return "method";
	}
	return "field";
      case BC_UGET:
	*name = FUNC8(pt, FUNC3(ins));
	return "upvalue";
      default:
	return NULL;
      }
    }
  }
  return NULL;
}