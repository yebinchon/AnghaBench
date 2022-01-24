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
struct TYPE_3__ {scalar_t__ state_transition_failures; } ;
typedef  TYPE_1__ DbHashEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_guc_max_background_workers ; 

__attribute__((used)) static void
FUNC4(DbHashEntry *entry)
{
	if (entry->state_transition_failures == 0)
		FUNC0(LOG,
				(FUNC1(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
				 FUNC3("TimescaleDB background worker limit of %d exceeded",
						ts_guc_max_background_workers),
				 FUNC2("Consider increasing timescaledb.max_background_workers.")));
	entry->state_transition_failures++;
}