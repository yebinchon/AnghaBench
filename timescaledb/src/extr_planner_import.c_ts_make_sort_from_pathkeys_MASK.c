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
typedef  int /*<<< orphan*/  Sort ;
typedef  int /*<<< orphan*/  Relids ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int**) ; 

Sort *
FUNC2(Plan *lefttree, List *pathkeys, Relids relids)
{
	int numsortkeys;
	AttrNumber *sortColIdx;
	Oid *sortOperators;
	Oid *collations;
	bool *nullsFirst;

	/* Compute sort column info, and adjust lefttree as needed */
	lefttree = FUNC1(lefttree,
											 pathkeys,
											 relids,
											 NULL,
											 false,
											 &numsortkeys,
											 &sortColIdx,
											 &sortOperators,
											 &collations,
											 &nullsFirst);

	/* Now build the Sort node */
	return FUNC0(lefttree, numsortkeys, sortColIdx, sortOperators, collations, nullsFirst);
}