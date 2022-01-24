#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {TYPE_1__* tab; scalar_t__* hash; } ;
struct TYPE_7__ {scalar_t__ next; int /*<<< orphan*/  info; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_1__ CType ;
typedef  TYPE_2__ CTState ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

CTypeID FUNC5(CTState *cts, CType **ctp, GCstr *name, uint32_t tmask)
{
  CTypeID id = cts->hash[FUNC0(name)];
  while (id) {
    CType *ct = FUNC1(cts, id);
    if (FUNC3(ct->name) == FUNC4(name) &&
	((tmask >> FUNC2(ct->info)) & 1)) {
      *ctp = ct;
      return id;
    }
    id = ct->next;
  }
  *ctp = &cts->tab[0];  /* Simplify caller logic. ctype_get() would assert. */
  return 0;
}