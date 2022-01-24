#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  L; } ;
typedef  int /*<<< orphan*/  GCcdata ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_1__ CTState ;
typedef  int /*<<< orphan*/  CTSize ;
typedef  int CTInfo ;

/* Variables and functions */
 int CTF_VLA ; 
 scalar_t__ CT_MEMALIGN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

GCcdata *FUNC3(CTState *cts, CTypeID id, CTSize sz, CTInfo info)
{
  if (!(info & CTF_VLA) && FUNC0(info) <= CT_MEMALIGN)
    return FUNC1(cts, id, sz);
  else
    return FUNC2(cts->L, id, sz, FUNC0(info));
}