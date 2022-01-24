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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  TYPENAMENSP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC7(StringInfo buf)
{
	const char *schema_name = FUNC6(buf);
	const char *type_name = FUNC6(buf);
	Oid schema_oid = FUNC1(schema_name, false);
	Oid type_oid =
		FUNC0(TYPENAMENSP, FUNC4(type_name), FUNC2(schema_oid));
	if (!FUNC3(type_oid))
		FUNC5(ERROR, "cache lookup failed for type %s.%s", schema_name, type_name);

	return type_oid;
}