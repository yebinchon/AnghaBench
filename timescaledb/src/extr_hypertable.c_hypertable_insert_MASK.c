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
typedef  scalar_t__ int64 ;
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ chunk_target_size; int compressed; scalar_t__ compressed_hypertable_id; int /*<<< orphan*/  chunk_sizing_func_name; int /*<<< orphan*/  chunk_sizing_func_schema; int /*<<< orphan*/  num_dimensions; int /*<<< orphan*/  associated_table_prefix; int /*<<< orphan*/  associated_schema_name; int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/ * Name ;
typedef  TYPE_1__ FormData_hypertable ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 char* DEFAULT_ASSOCIATED_TABLE_PREFIX_FORMAT ; 
 int /*<<< orphan*/  HYPERTABLE ; 
 scalar_t__ INVALID_HYPERTABLE_ID ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(int32 hypertable_id, Name schema_name, Name table_name,
				  Name associated_schema_name, Name associated_table_prefix,
				  Name chunk_sizing_func_schema, Name chunk_sizing_func_name,
				  int64 chunk_target_size, int16 num_dimensions, bool compressed)
{
	Catalog *catalog = FUNC10();
	Relation rel;
	FormData_hypertable fd;

	fd.id = hypertable_id;
	if (fd.id == INVALID_HYPERTABLE_ID)
	{
		CatalogSecurityContext sec_ctx;
		FUNC8(FUNC9(), &sec_ctx);
		fd.id = FUNC12(FUNC10(), HYPERTABLE);
		FUNC11(&sec_ctx);
	}

	FUNC6(&fd.schema_name, FUNC0(*schema_name));
	FUNC6(&fd.table_name, FUNC0(*table_name));
	FUNC6(&fd.associated_schema_name, FUNC0(*associated_schema_name));

	if (NULL == associated_table_prefix)
	{
		NameData default_associated_table_prefix;
		FUNC5(FUNC0(default_associated_table_prefix), '\0', NAMEDATALEN);
		FUNC7(FUNC0(default_associated_table_prefix),
				 NAMEDATALEN,
				 DEFAULT_ASSOCIATED_TABLE_PREFIX_FORMAT,
				 fd.id);
		FUNC6(&fd.associated_table_prefix, FUNC0(default_associated_table_prefix));
	}
	else
	{
		FUNC6(&fd.associated_table_prefix, FUNC0(*associated_table_prefix));
	}
	fd.num_dimensions = num_dimensions;

	FUNC6(&fd.chunk_sizing_func_schema, FUNC0(*chunk_sizing_func_schema));
	FUNC6(&fd.chunk_sizing_func_name, FUNC0(*chunk_sizing_func_name));

	fd.chunk_target_size = chunk_target_size;
	if (fd.chunk_target_size < 0)
		fd.chunk_target_size = 0;

	fd.compressed = compressed;

	/* when creating a hypertable, there is never an associated compressed dual */
	fd.compressed_hypertable_id = INVALID_HYPERTABLE_ID;

	rel = FUNC3(FUNC1(catalog, HYPERTABLE), RowExclusiveLock);
	FUNC4(rel, &fd);
	FUNC2(rel, RowExclusiveLock);
}