#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {scalar_t__ size; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 scalar_t__ CTSIZE_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

int FUNC13(CTState *cts, CType *s, TValue *o, uint8_t *sp)
{
  CTypeID sid;

  if (FUNC6(s->info)) {
    FUNC0(cts, o, s);
    return 0;  /* No GC step needed. */
  } else if (FUNC5(s->info)) {
    return FUNC10(cts, s, o, sp);
  }

  /* Get child type of pointer/array/field. */
  FUNC12(FUNC8(s->info) || FUNC7(s->info));
  sid = FUNC2(s->info);
  s = FUNC3(cts, sid);

  /* Resolve reference for field. */
  if (FUNC9(s->info)) {
    FUNC12(s->size == CTSIZE_PTR);
    sp = *(uint8_t **)sp;
    sid = FUNC2(s->info);
    s = FUNC3(cts, sid);
  }

  /* Skip attributes. */
  while (FUNC4(s->info))
    s = FUNC1(cts, s);

  return FUNC11(cts, s, sid, o, sp);
}