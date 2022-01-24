#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type_oid; size_t type_name; int /*<<< orphan*/  schema_name; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ CustomTypeInfo ;
typedef  size_t CustomType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  TYPENAMENSP ; 
 size_t _CUSTOM_TYPE_MAX_INDEX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 TYPE_1__* typeinfo ; 

extern CustomTypeInfo *
FUNC6(CustomType type)
{
	CustomTypeInfo *tinfo;

	if (type >= _CUSTOM_TYPE_MAX_INDEX)
		FUNC5(ERROR, "invalid timescaledb type %d", type);

	tinfo = &typeinfo[type];

	if (tinfo->type_oid == InvalidOid)
	{
		Oid schema_oid = FUNC2(tinfo->schema_name, false);
		Oid type_oid = FUNC1(TYPENAMENSP,
									   FUNC0(tinfo->type_name),
									   FUNC3(schema_oid));
		if (!FUNC4(type_oid))
			FUNC5(ERROR, "unknown timescaledb type %s", tinfo->type_name);

		tinfo->type_oid = type_oid;
	}

	return tinfo;
}