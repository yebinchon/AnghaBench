#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC1(TupleInfo *ti, void *arg)
{
	Chunk *chunk = arg;

	FUNC0(chunk, ti->tuple, ti->desc);
	return SCAN_DONE;
}