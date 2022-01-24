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
struct TYPE_6__ {int info; int size; } ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTInfo ;

/* Variables and functions */
 scalar_t__ CTA_QUAL ; 
 int CTF_QUAL ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static CType *FUNC4(CTState *cts, CType *ct, CTInfo *qual)
{
  ct = FUNC1(cts, ct);
  for (;;) {
    if (FUNC2(ct->info)) {
      if (FUNC0(ct->info) == CTA_QUAL) *qual |= ct->size;
    } else if (!FUNC3(ct->info)) {
      break;
    }
    ct = FUNC1(cts, ct);
  }
  *qual |= (ct->info & CTF_QUAL);
  return ct;
}