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

Oid
FUNC7(StringInfo buffer)
{
	const char *element_type_namespace = FUNC6(buffer);
	const char *element_type_name = FUNC6(buffer);
	Oid namespace_oid;
	Oid type_oid;

	namespace_oid = FUNC1(element_type_namespace, false);

	type_oid = FUNC0(TYPENAMENSP,
							   FUNC4(element_type_name),
							   FUNC2(namespace_oid));
	if (!FUNC3(type_oid))
		FUNC5(ERROR, "could not find type %s.%s", element_type_namespace, element_type_name);

	return type_oid;
}