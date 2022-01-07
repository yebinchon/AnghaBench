
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DefineCustomBoolVariable (char*,char*,char*,int *,int,int ,int ,int *,int *,int *) ;
 int DefineCustomEnumVariable (char*,char*,char*,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int DefineCustomIntVariable (char*,char*,char*,int *,int,int ,int,int ,int ,int *,int *,int *) ;
 int DefineCustomStringVariable (char*,char*,char*,int *,int *,int ,int ,int *,int *,int *) ;
 int GUC_SUPERUSER_ONLY ;
 int INT64CONST (int) ;
 int Min (int,int) ;
 int PGC_SIGHUP ;
 int PGC_SUSET ;
 int PGC_USERSET ;
 int PG_INT16_MAX ;
 int TELEMETRY_DEFAULT ;
 int * TS_DEFAULT_LICENSE ;
 int * assign_max_cached_chunks_per_hypertable_hook ;
 int telemetry_level_options ;
 int ts_guc_constraint_aware_append ;
 int ts_guc_disable_optimizations ;
 int ts_guc_enable_chunk_append ;
 int ts_guc_enable_constraint_exclusion ;
 int ts_guc_enable_ordered_append ;
 int ts_guc_enable_parallel_chunk_append ;
 int ts_guc_enable_runtime_exclusion ;
 int ts_guc_enable_transparent_decompression ;
 int ts_guc_license_key ;
 int ts_guc_max_cached_chunks_per_hypertable ;
 int ts_guc_max_open_chunks_per_insert ;
 int ts_guc_optimize_non_hypertables ;
 int ts_guc_restoring ;
 int ts_guc_telemetry_level ;
 int ts_last_tune_time ;
 int ts_last_tune_version ;
 int * ts_license_on_assign ;
 int * ts_license_update_check ;
 int ts_shutdown_bgw ;
 int ts_telemetry_cloud ;
 int work_mem ;

void
_guc_init(void)
{

 DefineCustomBoolVariable("timescaledb.disable_optimizations",
        "Disable all timescale query optimizations",
        ((void*)0),
        &ts_guc_disable_optimizations,
        0,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));
 DefineCustomBoolVariable("timescaledb.optimize_non_hypertables",
        "Apply timescale query optimization to plain tables",
        "Apply timescale query optimization to plain tables in addition to "
        "hypertables",
        &ts_guc_optimize_non_hypertables,
        0,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("timescaledb.restoring",
        "Install timescale in restoring mode",
        "Used for running pg_restore",
        &ts_guc_restoring,
        0,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("timescaledb.constraint_aware_append",
        "Enable constraint-aware append scans",
        "Enable constraint exclusion at execution time",
        &ts_guc_constraint_aware_append,
        1,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("timescaledb.enable_ordered_append",
        "Enable ordered append scans",
        "Enable ordered append optimization for queries that are ordered by "
        "the time dimension",
        &ts_guc_enable_ordered_append,
        1,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("timescaledb.enable_chunk_append",
        "Enable chunk append node",
        "Enable using chunk append node",
        &ts_guc_enable_chunk_append,
        1,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("timescaledb.enable_parallel_chunk_append",
        "Enable parallel chunk append node",
        "Enable using parallel aware chunk append node",
        &ts_guc_enable_parallel_chunk_append,
        1,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("timescaledb.enable_runtime_exclusion",
        "Enable runtime chunk exclusion",
        "Enable runtime chunk exclusion in ChunkAppend node",
        &ts_guc_enable_runtime_exclusion,
        1,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("timescaledb.enable_constraint_exclusion",
        "Enable constraint exclusion",
        "Enable planner constraint exclusion",
        &ts_guc_enable_constraint_exclusion,
        1,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("timescaledb.enable_transparent_decompression",
        "Enable transparent decompression",
        "Enable transparent decompression when querying hypertable",
        &ts_guc_enable_transparent_decompression,
        1,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomIntVariable("timescaledb.max_open_chunks_per_insert",
       "Maximum open chunks per insert",
       "Maximum number of open chunk tables per insert",
       &ts_guc_max_open_chunks_per_insert,
       Min(work_mem * INT64CONST(1024) / INT64CONST(25000),
        PG_INT16_MAX),






       0,
       PG_INT16_MAX,
       PGC_USERSET,
       0,
       ((void*)0),
       ((void*)0),
       ((void*)0));

 DefineCustomIntVariable("timescaledb.max_cached_chunks_per_hypertable",
       "Maximum cached chunks",
       "Maximum number of chunks stored in the cache",
       &ts_guc_max_cached_chunks_per_hypertable,
       100,
       0,
       65536,
       PGC_USERSET,
       0,
       ((void*)0),
       assign_max_cached_chunks_per_hypertable_hook,
       ((void*)0));
 DefineCustomEnumVariable("timescaledb.telemetry_level",
        "Telemetry settings level",
        "Level used to determine which telemetry to send",
        &ts_guc_telemetry_level,
        TELEMETRY_DEFAULT,
        telemetry_level_options,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomStringVariable( "timescaledb.license_key",
                           "TimescaleDB license key",
                          "Determines which features are enabled",
                           &ts_guc_license_key,
                           TS_DEFAULT_LICENSE,
                         PGC_SUSET,
                       GUC_SUPERUSER_ONLY,
                            ts_license_update_check,
                             ts_license_on_assign,
                           ((void*)0));

 DefineCustomStringVariable( "timescaledb.last_tuned",
                           "last tune run",
                          "records last time timescaledb-tune ran",
                           &ts_last_tune_time,
                           ((void*)0),
                         PGC_SIGHUP,
                       0,
                            ((void*)0),
                             ((void*)0),
                           ((void*)0));

 DefineCustomStringVariable( "timescaledb.last_tuned_version",
                           "version of timescaledb-tune",
                          "version of timescaledb-tune used to tune",
                           &ts_last_tune_version,
                           ((void*)0),
                         PGC_SIGHUP,
                       0,
                            ((void*)0),
                             ((void*)0),
                           ((void*)0));

 DefineCustomStringVariable( "timescaledb_telemetry.cloud",
                           "cloud provider",
                          "cloud provider used for this instance",
                           &ts_telemetry_cloud,
                           ((void*)0),
                         PGC_SIGHUP,
                       0,
                            ((void*)0),
                             ((void*)0),
                           ((void*)0));
}
