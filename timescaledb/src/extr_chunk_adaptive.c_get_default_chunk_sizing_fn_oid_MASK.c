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
typedef  int /*<<< orphan*/  chunkfnargtypes ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CHUNK_SIZING_FN_NAME ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC3()
{
	Oid chunkfnargtypes[] = { INT4OID, INT8OID, INT8OID };
	List *funcname =
		FUNC1(FUNC2(INTERNAL_SCHEMA_NAME), FUNC2(DEFAULT_CHUNK_SIZING_FN_NAME));
	int nargs = sizeof(chunkfnargtypes) / sizeof(chunkfnargtypes[0]);
	Oid chunkfnoid = FUNC0(funcname, nargs, chunkfnargtypes, false);
	return chunkfnoid;
}