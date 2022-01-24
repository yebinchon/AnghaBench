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
typedef  int /*<<< orphan*/  finalfnargtypes ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ANYELEMENTOID ; 
 int /*<<< orphan*/  BYTEAOID ; 
 int /*<<< orphan*/  FINALFN ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NAMEOID ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC4()
{
	Oid finalfnoid;
	Oid finalfnargtypes[] = { TEXTOID,  NAMEOID,	  NAMEOID, FUNC1(NAMEOID),
							  BYTEAOID, ANYELEMENTOID };
	List *funcname = FUNC2(FUNC3(INTERNAL_SCHEMA_NAME), FUNC3(FINALFN));
	int nargs = sizeof(finalfnargtypes) / sizeof(finalfnargtypes[0]);
	finalfnoid = FUNC0(funcname, nargs, finalfnargtypes, false);
	return finalfnoid;
}