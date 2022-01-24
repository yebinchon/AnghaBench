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
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_3__ {int /*<<< orphan*/  parsed; int /*<<< orphan*/  is_default; } ;
typedef  TYPE_1__ WithClauseResult ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t ContinuousViewOptionRefreshLag ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 

int64
FUNC3(Oid column_type, WithClauseResult *with_clause_options)
{
	char *value;

	FUNC0(!with_clause_options[ContinuousViewOptionRefreshLag].is_default);

	value = FUNC1(with_clause_options[ContinuousViewOptionRefreshLag].parsed);

	return FUNC2(value, column_type, "refresh_lag");
}