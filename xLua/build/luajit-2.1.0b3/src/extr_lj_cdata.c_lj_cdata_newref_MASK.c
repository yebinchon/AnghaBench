#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GCcdata ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTSIZE_PTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

GCcdata *FUNC4(CTState *cts, const void *p, CTypeID id)
{
  CTypeID refid = FUNC3(cts, FUNC0(id), CTSIZE_PTR);
  GCcdata *cd = FUNC2(cts, refid, CTSIZE_PTR);
  *(const void **)FUNC1(cd) = p;
  return cd;
}