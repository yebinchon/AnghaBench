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
typedef  int /*<<< orphan*/  int64 ;
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_2__ {scalar_t__ current_time; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* application_name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 TYPE_1__* FUNC5 () ; 

__attribute__((used)) static bool
FUNC6(Relation rel, char *msg)
{
	TupleDesc desc = FUNC3(rel);
	static int32 msg_no = 0;
	Datum values[4];
	bool nulls[4] = { false, false, false };

	values[0] = FUNC1(msg_no++);
	values[1] = FUNC2((int64) FUNC5()->current_time);
	values[2] = FUNC0(application_name);
	values[3] = FUNC0(msg);

	FUNC4(rel, desc, values, nulls);

	return true;
}