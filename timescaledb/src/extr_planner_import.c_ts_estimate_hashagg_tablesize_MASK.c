#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct Path {TYPE_1__* pathtarget; } ;
struct AggClauseCosts {int /*<<< orphan*/  numAggs; scalar_t__ transitionSpace; } ;
struct TYPE_2__ {int /*<<< orphan*/  width; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SizeofMinimalTupleHeader ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

size_t
FUNC2(struct Path *path, const struct AggClauseCosts *agg_costs,
							  double dNumGroups)
{
	size_t hashentrysize;

	/* Estimate per-hash-entry space at tuple width... */
	hashentrysize = FUNC0(path->pathtarget->width) + FUNC0(SizeofMinimalTupleHeader);

	/* plus space for pass-by-ref transition values... */
	hashentrysize += agg_costs->transitionSpace;
	/* plus the per-hash-entry overhead */
	hashentrysize += FUNC1(agg_costs->numAggs);

	/*
	 * Note that this disregards the effect of fill-factor and growth policy
	 * of the hash-table. That's probably ok, given default the default
	 * fill-factor is relatively high. It'd be hard to meaningfully factor in
	 * "double-in-size" growth policies here.
	 */
	return hashentrysize * dNumGroups;
}