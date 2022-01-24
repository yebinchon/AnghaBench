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
struct TYPE_7__ {scalar_t__ size; int /*<<< orphan*/  info; int /*<<< orphan*/  name; scalar_t__ sib; } ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  scalar_t__ CTSize ;
typedef  scalar_t__ CTInfo ;

/* Variables and functions */
 scalar_t__ CTA_QUAL ; 
 int /*<<< orphan*/  CTA_SUBTYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

CType *FUNC7(CTState *cts, CType *ct, GCstr *name, CTSize *ofs,
			  CTInfo *qual)
{
  while (ct->sib) {
    ct = FUNC2(cts, ct->sib);
    if (FUNC5(ct->name) == FUNC6(name)) {
      *ofs = ct->size;
      return ct;
    }
    if (FUNC4(ct->info, CTA_SUBTYPE)) {
      CType *fct, *cct = FUNC1(cts, ct);
      CTInfo q = 0;
      while (FUNC3(cct->info)) {
	if (FUNC0(cct->info) == CTA_QUAL) q |= cct->size;
	cct = FUNC1(cts, cct);
      }
      fct = FUNC7(cts, cct, name, ofs, qual);
      if (fct) {
	if (qual) *qual |= q;
	*ofs += ct->size;
	return fct;
      }
    }
  }
  return NULL;  /* Not found. */
}