#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int info; scalar_t__ size; } ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTInfo ;

/* Variables and functions */
 int CCF_CAST ; 
 int CCF_IGNQUAL ; 
 int CCF_SAME ; 
 int CTF_BOOL ; 
 int CTF_FP ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(CTState *cts, CType *d, CType *s, CTInfo flags)
{
  if (!((flags & CCF_CAST) || d == s)) {
    CTInfo dqual = 0, squal = 0;
    d = FUNC0(cts, d, &dqual);
    if (!FUNC4(s->info))
      s = FUNC0(cts, s, &squal);
    if ((flags & CCF_SAME)) {
      if (dqual != squal)
	return 0;  /* Different qualifiers. */
    } else if (!(flags & CCF_IGNQUAL)) {
      if ((dqual & squal) != squal)
	return 0;  /* Discarded qualifiers. */
      if (FUNC5(d->info) || FUNC5(s->info))
	return 1;  /* Converting to/from void * is always ok. */
    }
    if (FUNC6(d->info) != FUNC6(s->info) ||
	d->size != s->size)
      return 0;  /* Different type or different size. */
    if (FUNC2(d->info)) {
      if (((d->info ^ s->info) & (CTF_BOOL|CTF_FP)))
	return 0;  /* Different numeric types. */
    } else if (FUNC3(d->info)) {
      /* Check child types for compatibility. */
      return FUNC7(cts, d, s, flags|CCF_SAME);
    } else if (FUNC4(d->info)) {
      if (d != s)
	return 0;  /* Must be exact same type for struct/union. */
    } else if (FUNC1(d->info)) {
      /* NYI: structural equality of functions. */
    }
  }
  return 1;  /* Types are compatible. */
}