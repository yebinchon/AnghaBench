#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_13__ {int /*<<< orphan*/  (* continuous_agg_drop_chunks_by_chunk_id ) (int /*<<< orphan*/ ,TYPE_4__**,int) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_2__ table_name; TYPE_1__ schema_name; } ;
struct TYPE_12__ {TYPE_3__ fd; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_4__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DROP_CASCADE ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  HypertableIsMaterialization 130 
#define  HypertableIsMaterializationAndRaw 129 
#define  HypertableIsRawTable 128 
 int /*<<< orphan*/ * NIL ; 
 TYPE_4__** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (size_t) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,char*,char const*,char const*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__**,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* ts_cm_functions ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

List *
FUNC16(Oid table_relid, Datum older_than_datum, Datum newer_than_datum,
						Oid older_than_type, Oid newer_than_type, bool cascade,
						bool cascades_to_materializations, int32 log_level)
{
	int i = 0;
	uint64 num_chunks = 0;
	Chunk **chunks;
	List *dropped_chunk_names = NIL;
	const char *schema_name, *table_name;
	int32 hypertable_id = FUNC15(table_relid);

	FUNC14(table_relid, FUNC0());

	switch (FUNC13(hypertable_id))
	{
		case HypertableIsMaterialization:
		case HypertableIsMaterializationAndRaw:
			FUNC2(ERROR, "cannot drop_chunks on a continuous aggregate materialization table");
		case HypertableIsRawTable:
			if (!cascades_to_materializations)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC5("cannot drop_chunks on hypertable that has a continuous aggregate "
								"without cascade_to_materializations set to true")));
			break;
		default:
			cascades_to_materializations = false;
			break;
	}

	chunks = FUNC1(table_relid,
											older_than_datum,
											newer_than_datum,
											older_than_type,
											newer_than_type,
											"drop_chunks",
											CurrentMemoryContext,
											&num_chunks);

	for (; i < num_chunks; i++)
	{
		size_t len;
		char *chunk_name;

		/* store chunk name for output */
		schema_name = FUNC8(chunks[i]->fd.schema_name.data);
		table_name = FUNC8(chunks[i]->fd.table_name.data);

		len = FUNC10(schema_name) + FUNC10(table_name) + 2;
		chunk_name = FUNC7(len);

		FUNC9(chunk_name, len, "%s.%s", schema_name, table_name);
		dropped_chunk_names = FUNC6(dropped_chunk_names, chunk_name);

		FUNC12(chunks[i], (cascade ? DROP_CASCADE : DROP_RESTRICT), log_level);
	}

	if (cascades_to_materializations)
		ts_cm_functions->continuous_agg_drop_chunks_by_chunk_id(hypertable_id, chunks, num_chunks);

	return dropped_chunk_names;
}