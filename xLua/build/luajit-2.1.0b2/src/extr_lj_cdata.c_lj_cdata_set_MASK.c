#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int /*<<< orphan*/  L; } ;
struct TYPE_12__ {int info; int size; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ CType ;
typedef  TYPE_2__ CTState ;
typedef  int CTInfo ;

/* Variables and functions */
 scalar_t__ CTA_QUAL ; 
 int CTF_CONST ; 
 int CTSIZE_PTR ; 
 int /*<<< orphan*/  LJ_ERR_FFI_WRCONST ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

void FUNC14(CTState *cts, CType *d, uint8_t *dp, TValue *o, CTInfo qual)
{
  if (FUNC5(d->info)) {
    goto err_const;
  } else if (FUNC4(d->info)) {
    if (((d->info|qual) & CTF_CONST)) goto err_const;
    FUNC10(cts, d, dp, o);
    return;
  }

  /* Get child type of pointer/array/field. */
  FUNC13(FUNC7(d->info) || FUNC6(d->info));
  d = FUNC1(cts, d);

  /* Resolve reference for field. */
  if (FUNC8(d->info)) {
    FUNC13(d->size == CTSIZE_PTR);
    dp = *(uint8_t **)dp;
    d = FUNC1(cts, d);
  }

  /* Skip attributes and collect qualifiers. */
  for (;;) {
    if (FUNC3(d->info)) {
      if (FUNC0(d->info) == CTA_QUAL) qual |= d->size;
    } else {
      break;
    }
    d = FUNC1(cts, d);
  }

  FUNC13(FUNC2(d->info) && !FUNC9(d->info));

  if (((d->info|qual) & CTF_CONST)) {
  err_const:
    FUNC12(cts->L, LJ_ERR_FFI_WRCONST);
  }

  FUNC11(cts, d, dp, o, 0);
}