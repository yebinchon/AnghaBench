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
typedef  int /*<<< orphan*/  tuple_found_func ;
struct TYPE_3__ {void* data; int /*<<< orphan*/  hcache; int /*<<< orphan*/  database_info; } ;
typedef  TYPE_1__ TablespaceScanInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(const char *tspcname, tuple_found_func tuple_found, void *stmt)
{
	TablespaceScanInfo info = {
		.database_info = FUNC2(),
		.hcache = FUNC3(),
		.data = stmt,
	};

	FUNC0(tspcname, tuple_found, &info);

	FUNC1(info.hcache);
}