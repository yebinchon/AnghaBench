#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  integer_now_func_schema; int /*<<< orphan*/  integer_now_func; } ;
struct TYPE_13__ {TYPE_1__ fd; } ;
struct TYPE_12__ {int is_time_interval; int /*<<< orphan*/  integer_interval; int /*<<< orphan*/  time_interval; } ;
struct TYPE_11__ {int /*<<< orphan*/  space; } ;
typedef  int Oid ;
typedef  TYPE_2__ Hypertable ;
typedef  TYPE_3__ FormData_ts_interval ;
typedef  TYPE_4__ Dimension ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_NOT_EXIST ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  INT2OID 131 
#define  INT4OID 130 
#define  INT8OID 129 
#define  INTERVALOID 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int const,int,char*) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 

FormData_ts_interval *
FUNC20(Oid relid, Datum interval, Oid interval_type, char *parameter_name,
						   char *caller_name)
{
	Hypertable *hypertable;
	Cache *hcache;
	FormData_ts_interval *invl = FUNC11(sizeof(FormData_ts_interval));
	Oid partitioning_type;
	Dimension *open_dim;

	FUNC18(relid, FUNC1());

	hcache = FUNC17();
	hypertable = FUNC16(hcache, relid);
	/* First verify that the hypertable corresponds to a valid table */
	if (hypertable == NULL)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
				 FUNC8("could not add drop_chunks policy because \"%s\" is not a hypertable",
						FUNC9(relid))));
	/* validate that the open dimension uses a time type */
	open_dim = FUNC10(hypertable->space, 0);

	if (NULL == open_dim)
		FUNC4(ERROR, "internal error: no open dimension found while parsing interval");

	partitioning_type = FUNC14(open_dim);
	FUNC13(hcache);

	switch (interval_type)
	{
		case INTERVALOID:
			if (FUNC2(partitioning_type))
				FUNC5(ERROR,
						(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC8("invalid parameter value for %s", parameter_name),
						 FUNC7("INTERVAL time duration cannot be used with hypertables with "
								 "integer-based time dimensions")));
			FUNC15(INTERVALOID, partitioning_type, caller_name);
			invl->is_time_interval = true;
			invl->time_interval = *FUNC0(interval);
			break;
		case INT2OID:
		case INT4OID:
		case INT8OID:
			if (!FUNC2(partitioning_type))
				FUNC5(ERROR,
						(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC8("invalid parameter value for %s", parameter_name),
						 FUNC7("integer-based time duration cannot be used with hypertables with "
								 "a timestamp-based time dimensions")));

			if (FUNC12(FUNC3(open_dim->fd.integer_now_func)) == 0 ||
				FUNC12(FUNC3(open_dim->fd.integer_now_func_schema)) == 0)
				FUNC5(ERROR,
						(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC8("integer_now_func not set on hypertable %s", FUNC9(relid))));

			invl->is_time_interval = false;
			invl->integer_interval = FUNC19(interval, interval_type);

			break;
		default:
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC8("invalid type for parameter %s in %s", parameter_name, caller_name)));
	}

	return invl;
}