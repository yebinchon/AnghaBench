#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_5__ {int ctypeid; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  info; } ;
typedef  int CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int CTALIGN_PTR ; 
 int CTID_BOOL ; 
 int CTID_DOUBLE ; 
 int CTID_P_CCHAR ; 
 int CTID_P_VOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CTSIZE_PTR ; 
 int /*<<< orphan*/  CT_PTR ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

CTypeID FUNC13(CTState *cts, cTValue *o)
{
  if (FUNC11(o)) {
    return CTID_DOUBLE;
  } else if (FUNC10(o)) {
    CTypeID id = FUNC1(o)->ctypeid;
    CType *s = FUNC3(cts, id);
    if (FUNC6(s->info)) {
      return FUNC8(cts,
	       FUNC0(CT_PTR, CTALIGN_PTR|FUNC2(s->info)), CTSIZE_PTR);
    } else if (FUNC7(s->info) || FUNC5(s->info)) {
      /* NYI: how to pass a struct by value in a vararg argument? */
      return FUNC8(cts, FUNC0(CT_PTR, CTALIGN_PTR|id), CTSIZE_PTR);
    } else if (FUNC4(s->info) && s->size == sizeof(float)) {
      return CTID_DOUBLE;
    } else {
      return id;
    }
  } else if (FUNC12(o)) {
    return CTID_P_CCHAR;
  } else if (FUNC9(o)) {
    return CTID_BOOL;
  } else {
    return CTID_P_VOID;
  }
}