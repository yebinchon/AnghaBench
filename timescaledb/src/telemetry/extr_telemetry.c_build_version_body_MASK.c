#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {char* sysname; char* version; char* release; char* pretty_version; scalar_t__ has_pretty_version; } ;
typedef  TYPE_3__ VersionOSInfo ;
struct TYPE_17__ {int /*<<< orphan*/  uncompressed_toast_size; int /*<<< orphan*/  uncompressed_index_size; int /*<<< orphan*/  uncompressed_heap_size; int /*<<< orphan*/  compressed_toast_size; int /*<<< orphan*/  compressed_index_size; int /*<<< orphan*/  compressed_heap_size; } ;
typedef  TYPE_4__ TotalSizes ;
struct TYPE_19__ {int /*<<< orphan*/  root; } ;
struct TYPE_14__ {void* len; void* val; } ;
struct TYPE_15__ {TYPE_1__ string; } ;
struct TYPE_18__ {TYPE_2__ val; void* type; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_5__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  TYPE_6__ Jsonb ;

/* Variables and functions */
 char* BUILD_OS_NAME ; 
 char* BUILD_OS_VERSION ; 
 char* BUILD_PROCESSOR ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  REQ_BUILD_ARCHITECTURE ; 
 int /*<<< orphan*/  REQ_BUILD_ARCHITECTURE_BIT_SIZE ; 
 int /*<<< orphan*/  REQ_BUILD_OS ; 
 int /*<<< orphan*/  REQ_BUILD_OS_VERSION ; 
 int /*<<< orphan*/  REQ_COMPRESSED_HEAP_SIZE ; 
 int /*<<< orphan*/  REQ_COMPRESSED_INDEX_SIZE ; 
 int /*<<< orphan*/  REQ_COMPRESSED_TOAST_SIZE ; 
 int /*<<< orphan*/  REQ_DATA_VOLUME ; 
 int /*<<< orphan*/  REQ_DB_UUID ; 
 int /*<<< orphan*/  REQ_EXPORTED_DB_UUID ; 
 int /*<<< orphan*/  REQ_INSTALL_METHOD ; 
 int /*<<< orphan*/  REQ_INSTALL_TIME ; 
 void* REQ_INSTANCE_METADATA ; 
 void* REQ_LICENSE_INFO ; 
 void* REQ_METADATA ; 
 int /*<<< orphan*/  REQ_NUM_COMPRESSED_HYPERTABLES ; 
 int /*<<< orphan*/  REQ_NUM_CONTINUOUS_AGGS ; 
 int /*<<< orphan*/  REQ_NUM_DROP_CHUNKS_POLICIES ; 
 int /*<<< orphan*/  REQ_NUM_HYPERTABLES ; 
 int /*<<< orphan*/  REQ_NUM_REORDER_POLICIES ; 
 int /*<<< orphan*/  REQ_OS ; 
 int /*<<< orphan*/  REQ_OS_RELEASE ; 
 int /*<<< orphan*/  REQ_OS_VERSION ; 
 int /*<<< orphan*/  REQ_OS_VERSION_PRETTY ; 
 int /*<<< orphan*/  REQ_PS_VERSION ; 
 void* REQ_RELATED_EXTENSIONS ; 
 int /*<<< orphan*/  REQ_TS_LAST_TUNE_TIME ; 
 int /*<<< orphan*/  REQ_TS_LAST_TUNE_VERSION ; 
 int /*<<< orphan*/  REQ_TS_TELEMETRY_CLOUD ; 
 int /*<<< orphan*/  REQ_TS_VERSION ; 
 int /*<<< orphan*/  REQ_UNCOMPRESSED_HEAP_SIZE ; 
 int /*<<< orphan*/  REQ_UNCOMPRESSED_INDEX_SIZE ; 
 int /*<<< orphan*/  REQ_UNCOMPRESSED_TOAST_SIZE ; 
 char* TIMESCALEDB_INSTALL_METHOD ; 
 char* TIMESCALEDB_VERSION_MOD ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  WJB_BEGIN_OBJECT ; 
 int /*<<< orphan*/  WJB_END_OBJECT ; 
 int /*<<< orphan*/  WJB_KEY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 () ; 
 char* FUNC8 () ; 
 char* FUNC9 () ; 
 char* FUNC10 () ; 
 char* FUNC11 () ; 
 char* FUNC12 () ; 
 char* FUNC13 () ; 
 char* FUNC14 () ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 void* jbvString ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_5__* FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_5__*) ; 
 void* FUNC18 (void*) ; 
 int /*<<< orphan*/  timestamptz_out ; 
 TYPE_4__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* ts_last_tune_time ; 
 char* ts_last_tune_version ; 
 char* ts_telemetry_cloud ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ FUNC25 (TYPE_3__*) ; 
 int /*<<< orphan*/  uuid_out ; 

__attribute__((used)) static StringInfo
FUNC26(void)
{
	JsonbValue ext_key;
	JsonbValue license_info_key;
	JsonbValue *result;
	Jsonb *jb;
	StringInfo jtext;
	VersionOSInfo osinfo;
	JsonbParseState *parseState = NULL;
	TotalSizes sizes = FUNC19();

	FUNC17(&parseState, WJB_BEGIN_OBJECT, NULL);

	FUNC20(parseState,
					 REQ_DB_UUID,
					 FUNC0(
						 FUNC1(uuid_out, FUNC24())));
	FUNC20(parseState,
					 REQ_EXPORTED_DB_UUID,
					 FUNC0(
						 FUNC1(uuid_out, FUNC22())));
	FUNC20(parseState,
					 REQ_INSTALL_TIME,
					 FUNC0(
						 FUNC1(timestamptz_out,
											 FUNC23())));

	FUNC20(parseState, REQ_INSTALL_METHOD, TIMESCALEDB_INSTALL_METHOD);

	if (FUNC25(&osinfo))
	{
		FUNC20(parseState, REQ_OS, osinfo.sysname);
		FUNC20(parseState, REQ_OS_VERSION, osinfo.version);
		FUNC20(parseState, REQ_OS_RELEASE, osinfo.release);
		if (osinfo.has_pretty_version)
			FUNC20(parseState, REQ_OS_VERSION_PRETTY, osinfo.pretty_version);
	}
	else
		FUNC20(parseState, REQ_OS, "Unknown");

	FUNC20(parseState, REQ_PS_VERSION, FUNC14());
	FUNC20(parseState, REQ_TS_VERSION, TIMESCALEDB_VERSION_MOD);
	FUNC20(parseState, REQ_BUILD_OS, BUILD_OS_NAME);
	FUNC20(parseState, REQ_BUILD_OS_VERSION, BUILD_OS_VERSION);
	FUNC20(parseState, REQ_BUILD_ARCHITECTURE, BUILD_PROCESSOR);
	FUNC20(parseState, REQ_BUILD_ARCHITECTURE_BIT_SIZE, FUNC7());
	FUNC20(parseState, REQ_DATA_VOLUME, FUNC8());
	FUNC20(parseState, REQ_NUM_HYPERTABLES, FUNC12());
	FUNC20(parseState, REQ_NUM_COMPRESSED_HYPERTABLES, FUNC9());
	FUNC20(parseState, REQ_NUM_CONTINUOUS_AGGS, FUNC10());
	FUNC20(parseState, REQ_NUM_REORDER_POLICIES, FUNC13());
	FUNC20(parseState, REQ_NUM_DROP_CHUNKS_POLICIES, FUNC11());

	FUNC20(parseState, REQ_COMPRESSED_HEAP_SIZE, FUNC15(sizes.compressed_heap_size));
	FUNC20(parseState, REQ_COMPRESSED_INDEX_SIZE, FUNC15(sizes.compressed_index_size));
	FUNC20(parseState, REQ_COMPRESSED_TOAST_SIZE, FUNC15(sizes.compressed_toast_size));
	FUNC20(parseState,
					 REQ_UNCOMPRESSED_HEAP_SIZE,
					 FUNC15(sizes.uncompressed_heap_size));
	FUNC20(parseState,
					 REQ_UNCOMPRESSED_INDEX_SIZE,
					 FUNC15(sizes.uncompressed_index_size));
	FUNC20(parseState,
					 REQ_UNCOMPRESSED_TOAST_SIZE,
					 FUNC15(sizes.uncompressed_toast_size));

	/* Add related extensions, which is a nested JSON */
	ext_key.type = jbvString;
	ext_key.val.string.val = REQ_RELATED_EXTENSIONS;
	ext_key.val.string.len = FUNC18(REQ_RELATED_EXTENSIONS);
	FUNC17(&parseState, WJB_KEY, &ext_key);
	FUNC6(parseState);

	/* add license info, which is a nested JSON */
	license_info_key.type = jbvString;
	license_info_key.val.string.val = REQ_LICENSE_INFO;
	license_info_key.val.string.len = FUNC18(REQ_LICENSE_INFO);
	FUNC17(&parseState, WJB_KEY, &license_info_key);
	FUNC5(parseState);

	/* add tuned info, which is optional */
	if (ts_last_tune_time != NULL)
		FUNC20(parseState, REQ_TS_LAST_TUNE_TIME, ts_last_tune_time);

	if (ts_last_tune_version != NULL)
		FUNC20(parseState, REQ_TS_LAST_TUNE_VERSION, ts_last_tune_version);

	/* add cloud to telemetry when set */
	if (ts_telemetry_cloud != NULL)
	{
		ext_key.type = jbvString;
		ext_key.val.string.val = REQ_INSTANCE_METADATA;
		ext_key.val.string.len = FUNC18(REQ_INSTANCE_METADATA);
		FUNC17(&parseState, WJB_KEY, &ext_key);

		FUNC17(&parseState, WJB_BEGIN_OBJECT, NULL);
		FUNC20(parseState, REQ_TS_TELEMETRY_CLOUD, ts_telemetry_cloud);
		FUNC17(&parseState, WJB_END_OBJECT, NULL);
	}

	/* Add additional content from metadata */
	ext_key.type = jbvString;
	ext_key.val.string.val = REQ_METADATA;
	ext_key.val.string.len = FUNC18(REQ_METADATA);
	FUNC17(&parseState, WJB_KEY, &ext_key);
	FUNC17(&parseState, WJB_BEGIN_OBJECT, NULL);
	FUNC21(parseState);
	FUNC17(&parseState, WJB_END_OBJECT, NULL);

	/* end of telemetry object */
	result = FUNC17(&parseState, WJB_END_OBJECT, NULL);
	jb = FUNC3(result);
	jtext = FUNC16();
	FUNC2(jtext, &jb->root, FUNC4(jb));

	return jtext;
}