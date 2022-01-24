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
struct TYPE_4__ {int /*<<< orphan*/  mctx; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_5__ {int /*<<< orphan*/  list; int /*<<< orphan*/  alloc_size; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  BgwJob ;
typedef  TYPE_2__ AccumData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ScanTupleResult
FUNC3(TupleInfo *ti, void *data)
{
	AccumData *list_data = data;
	BgwJob *job = FUNC1(ti->tuple, list_data->alloc_size, ti->mctx);
	MemoryContext orig = FUNC0(ti->mctx);

	list_data->list = FUNC2(list_data->list, job);

	FUNC0(orig);
	return SCAN_CONTINUE;
}