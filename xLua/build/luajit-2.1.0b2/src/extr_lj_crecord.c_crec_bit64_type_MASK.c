#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_7__ {int /*<<< orphan*/  ctypeid; } ;
struct TYPE_6__ {int info; int size; } ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int CTF_BOOL ; 
 int CTF_FP ; 
 int CTF_UNSIGNED ; 
 int /*<<< orphan*/  CTID_INT64 ; 
 int /*<<< orphan*/  CTID_UINT64 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int CTMASK_NUM ; 
 int /*<<< orphan*/  CT_NUM ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static CTypeID FUNC6(CTState *cts, cTValue *tv)
{
  if (FUNC5(tv)) {
    CType *ct = FUNC4(cts, FUNC1(tv)->ctypeid);
    if (FUNC3(ct->info)) ct = FUNC2(cts, ct);
    if ((ct->info & (CTMASK_NUM|CTF_BOOL|CTF_FP|CTF_UNSIGNED)) ==
	FUNC0(CT_NUM, CTF_UNSIGNED) && ct->size == 8)
      return CTID_UINT64;  /* Use uint64_t, since it has the highest rank. */
    return CTID_INT64;  /* Otherwise use int64_t. */
  }
  return 0;  /* Use regular 32 bit ops. */
}