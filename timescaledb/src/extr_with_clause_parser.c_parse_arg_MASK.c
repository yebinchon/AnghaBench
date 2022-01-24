#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type_id; } ;
typedef  TYPE_1__ WithClauseDefinition ;
struct TYPE_9__ {int /*<<< orphan*/  defname; int /*<<< orphan*/  defnamespace; int /*<<< orphan*/ * arg; } ;
struct TYPE_8__ {int /*<<< orphan*/  typname; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_type ;
typedef  TYPE_3__ DefElem ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BOOLOID ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 char* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static Datum
FUNC18(WithClauseDefinition arg, DefElem *def)
{
	char *value;
	Datum val;
	Oid in_fn;
	Oid typIOParam;

	if (!FUNC6(arg.type_id))
		FUNC12(ERROR, "argument \"%s.%s\" not implemented", def->defnamespace, def->defname);

	if (def->arg != NULL)
		value = FUNC11(def);
	else if (arg.type_id == BOOLOID)
		/* for booleans, postgres defines the option timescale.foo to be the same as
		 * timescaledb.foo='true' so if no value is found set it to "true" here */
		value = "true";
	else
		FUNC13(ERROR,
				(FUNC14(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC16("parameter \"%s.%s\" must have a value", def->defnamespace, def->defname)));

	FUNC17(arg.type_id, &in_fn, &typIOParam);

	FUNC0(FUNC6(in_fn));

	FUNC9();
	{
		val = FUNC5(in_fn, value, typIOParam, -1);
	}
	FUNC7();
	{
		Form_pg_type typetup;
		HeapTuple tup = FUNC10(TYPEOID, FUNC4(arg.type_id));
		if (!FUNC2(tup))
			FUNC12(ERROR,
				 "cache lookup failed for type of %s.%s '%u'",
				 def->defnamespace,
				 def->defname,
				 arg.type_id);

		typetup = (Form_pg_type) FUNC1(tup);

		FUNC13(ERROR,
				(FUNC14(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC16("invalid value for %s.%s '%s'", def->defnamespace, def->defname, value),
				 FUNC15("%s.%s must be a valid %s",
						 def->defnamespace,
						 def->defname,
						 FUNC3(typetup->typname))));
	}
	FUNC8();
	return val;
}