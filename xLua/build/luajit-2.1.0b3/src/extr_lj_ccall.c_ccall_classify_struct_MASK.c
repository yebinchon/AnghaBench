#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int size; int /*<<< orphan*/  info; scalar_t__ sib; } ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTSize ;

/* Variables and functions */
 int CCALL_RCL_INT ; 
 int CCALL_RCL_MEM ; 
 int /*<<< orphan*/  CTA_SUBTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(CTState *cts, CType *ct, int *rcl, CTSize ofs)
{
  if (ct->size > 16) return CCALL_RCL_MEM;  /* Too big, gets memory class. */
  while (ct->sib) {
    CTSize fofs;
    ct = FUNC1(cts, ct->sib);
    fofs = ofs+ct->size;
    if (FUNC3(ct->info))
      FUNC0(cts, FUNC5(cts, ct), rcl, fofs);
    else if (FUNC2(ct->info))
      rcl[(fofs >= 8)] |= CCALL_RCL_INT;  /* NYI: unaligned bitfields? */
    else if (FUNC4(ct->info, CTA_SUBTYPE))
      FUNC6(cts, FUNC5(cts, ct), rcl, fofs);
  }
  return ((rcl[0]|rcl[1]) & CCALL_RCL_MEM);  /* Memory class? */
}