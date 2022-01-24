#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  relid; TYPE_1__* reltarget; } ;
struct TYPE_4__ {int /*<<< orphan*/  exprs; } ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(RelOptInfo *compressed_rel, Oid compressed_relid,
										const char *column_name)
{
	AttrNumber attnum = FUNC1(compressed_relid, column_name);
	FUNC0(attnum > 0);
	compressed_rel->reltarget->exprs = FUNC3(compressed_rel->reltarget->exprs,
											   FUNC4(compressed_rel->relid,
													   attnum,
													   FUNC2(compressed_rel->relid, attnum),
													   -1,
													   0,
													   0));
}