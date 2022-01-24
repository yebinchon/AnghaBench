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
typedef  int /*<<< orphan*/  argtype ;
struct TYPE_3__ {int /*<<< orphan*/  chunk_sizing_func_name; int /*<<< orphan*/  chunk_sizing_func_schema; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ FormData_hypertable ;

/* Variables and functions */
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC4(FormData_hypertable *fd)
{
	Oid argtype[] = { INT4OID, INT8OID, INT8OID };
	return FUNC0(FUNC2(FUNC3(FUNC1(fd->chunk_sizing_func_schema)),
									 FUNC3(FUNC1(fd->chunk_sizing_func_name))),
						  sizeof(argtype) / sizeof(argtype[0]),
						  argtype,
						  false);
}