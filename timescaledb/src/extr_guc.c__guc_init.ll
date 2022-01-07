; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_guc.c__guc_init.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_guc.c__guc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"timescaledb.disable_optimizations\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Disable all timescale query optimizations\00", align 1
@ts_guc_disable_optimizations = common dso_local global i32 0, align 4
@PGC_USERSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"timescaledb.optimize_non_hypertables\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Apply timescale query optimization to plain tables\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"Apply timescale query optimization to plain tables in addition to hypertables\00", align 1
@ts_guc_optimize_non_hypertables = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"timescaledb.restoring\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Install timescale in restoring mode\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Used for running pg_restore\00", align 1
@ts_guc_restoring = common dso_local global i32 0, align 4
@PGC_SUSET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"timescaledb.constraint_aware_append\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Enable constraint-aware append scans\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Enable constraint exclusion at execution time\00", align 1
@ts_guc_constraint_aware_append = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"timescaledb.enable_ordered_append\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Enable ordered append scans\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"Enable ordered append optimization for queries that are ordered by the time dimension\00", align 1
@ts_guc_enable_ordered_append = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"timescaledb.enable_chunk_append\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Enable chunk append node\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Enable using chunk append node\00", align 1
@ts_guc_enable_chunk_append = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [41 x i8] c"timescaledb.enable_parallel_chunk_append\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Enable parallel chunk append node\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Enable using parallel aware chunk append node\00", align 1
@ts_guc_enable_parallel_chunk_append = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"timescaledb.enable_runtime_exclusion\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Enable runtime chunk exclusion\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"Enable runtime chunk exclusion in ChunkAppend node\00", align 1
@ts_guc_enable_runtime_exclusion = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [40 x i8] c"timescaledb.enable_constraint_exclusion\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Enable constraint exclusion\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Enable planner constraint exclusion\00", align 1
@ts_guc_enable_constraint_exclusion = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [45 x i8] c"timescaledb.enable_transparent_decompression\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Enable transparent decompression\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"Enable transparent decompression when querying hypertable\00", align 1
@ts_guc_enable_transparent_decompression = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [39 x i8] c"timescaledb.max_open_chunks_per_insert\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Maximum open chunks per insert\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"Maximum number of open chunk tables per insert\00", align 1
@ts_guc_max_open_chunks_per_insert = common dso_local global i32 0, align 4
@work_mem = common dso_local global i32 0, align 4
@PG_INT16_MAX = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [45 x i8] c"timescaledb.max_cached_chunks_per_hypertable\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Maximum cached chunks\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"Maximum number of chunks stored in the cache\00", align 1
@ts_guc_max_cached_chunks_per_hypertable = common dso_local global i32 0, align 4
@assign_max_cached_chunks_per_hypertable_hook = common dso_local global i32* null, align 8
@.str.35 = private unnamed_addr constant [28 x i8] c"timescaledb.telemetry_level\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"Telemetry settings level\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"Level used to determine which telemetry to send\00", align 1
@ts_guc_telemetry_level = common dso_local global i32 0, align 4
@TELEMETRY_DEFAULT = common dso_local global i32 0, align 4
@telemetry_level_options = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [24 x i8] c"timescaledb.license_key\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"TimescaleDB license key\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Determines which features are enabled\00", align 1
@ts_guc_license_key = common dso_local global i32 0, align 4
@TS_DEFAULT_LICENSE = common dso_local global i32* null, align 8
@GUC_SUPERUSER_ONLY = common dso_local global i32 0, align 4
@ts_license_update_check = common dso_local global i32* null, align 8
@ts_license_on_assign = common dso_local global i32* null, align 8
@.str.41 = private unnamed_addr constant [23 x i8] c"timescaledb.last_tuned\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"last tune run\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"records last time timescaledb-tune ran\00", align 1
@ts_last_tune_time = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [31 x i8] c"timescaledb.last_tuned_version\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"version of timescaledb-tune\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"version of timescaledb-tune used to tune\00", align 1
@ts_last_tune_version = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [28 x i8] c"timescaledb_telemetry.cloud\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"cloud provider\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"cloud provider used for this instance\00", align 1
@ts_telemetry_cloud = common dso_local global i32 0, align 4
@ts_shutdown_bgw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_guc_init() #0 {
  %1 = load i32, i32* @PGC_USERSET, align 4
  %2 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* null, i32* @ts_guc_disable_optimizations, i32 0, i32 %1, i32 0, i32* null, i32* null, i32* null)
  %3 = load i32, i32* @PGC_USERSET, align 4
  %4 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32* @ts_guc_optimize_non_hypertables, i32 0, i32 %3, i32 0, i32* null, i32* null, i32* null)
  %5 = load i32, i32* @PGC_SUSET, align 4
  %6 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32* @ts_guc_restoring, i32 0, i32 %5, i32 0, i32* null, i32* null, i32* null)
  %7 = load i32, i32* @PGC_USERSET, align 4
  %8 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32* @ts_guc_constraint_aware_append, i32 1, i32 %7, i32 0, i32* null, i32* null, i32* null)
  %9 = load i32, i32* @PGC_USERSET, align 4
  %10 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0), i32* @ts_guc_enable_ordered_append, i32 1, i32 %9, i32 0, i32* null, i32* null, i32* null)
  %11 = load i32, i32* @PGC_USERSET, align 4
  %12 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32* @ts_guc_enable_chunk_append, i32 1, i32 %11, i32 0, i32* null, i32* null, i32* null)
  %13 = load i32, i32* @PGC_USERSET, align 4
  %14 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i32* @ts_guc_enable_parallel_chunk_append, i32 1, i32 %13, i32 0, i32* null, i32* null, i32* null)
  %15 = load i32, i32* @PGC_USERSET, align 4
  %16 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0), i32* @ts_guc_enable_runtime_exclusion, i32 1, i32 %15, i32 0, i32* null, i32* null, i32* null)
  %17 = load i32, i32* @PGC_USERSET, align 4
  %18 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i32* @ts_guc_enable_constraint_exclusion, i32 1, i32 %17, i32 0, i32* null, i32* null, i32* null)
  %19 = load i32, i32* @PGC_USERSET, align 4
  %20 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i64 0, i64 0), i32* @ts_guc_enable_transparent_decompression, i32 1, i32 %19, i32 0, i32* null, i32* null, i32* null)
  %21 = load i32, i32* @work_mem, align 4
  %22 = call i32 @INT64CONST(i32 1024)
  %23 = mul nsw i32 %21, %22
  %24 = call i32 @INT64CONST(i32 25000)
  %25 = sdiv i32 %23, %24
  %26 = load i32, i32* @PG_INT16_MAX, align 4
  %27 = call i32 @Min(i32 %25, i32 %26)
  %28 = load i32, i32* @PG_INT16_MAX, align 4
  %29 = load i32, i32* @PGC_USERSET, align 4
  %30 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0), i32* @ts_guc_max_open_chunks_per_insert, i32 %27, i32 0, i32 %28, i32 %29, i32 0, i32* null, i32* null, i32* null)
  %31 = load i32, i32* @PGC_USERSET, align 4
  %32 = load i32*, i32** @assign_max_cached_chunks_per_hypertable_hook, align 8
  %33 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0), i32* @ts_guc_max_cached_chunks_per_hypertable, i32 100, i32 0, i32 65536, i32 %31, i32 0, i32* null, i32* %32, i32* null)
  %34 = load i32, i32* @TELEMETRY_DEFAULT, align 4
  %35 = load i32, i32* @telemetry_level_options, align 4
  %36 = load i32, i32* @PGC_USERSET, align 4
  %37 = call i32 @DefineCustomEnumVariable(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i64 0, i64 0), i32* @ts_guc_telemetry_level, i32 %34, i32 %35, i32 %36, i32 0, i32* null, i32* null, i32* null)
  %38 = load i32*, i32** @TS_DEFAULT_LICENSE, align 8
  %39 = load i32, i32* @PGC_SUSET, align 4
  %40 = load i32, i32* @GUC_SUPERUSER_ONLY, align 4
  %41 = load i32*, i32** @ts_license_update_check, align 8
  %42 = load i32*, i32** @ts_license_on_assign, align 8
  %43 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32* @ts_guc_license_key, i32* %38, i32 %39, i32 %40, i32* %41, i32* %42, i32* null)
  %44 = load i32, i32* @PGC_SIGHUP, align 4
  %45 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i32* @ts_last_tune_time, i32* null, i32 %44, i32 0, i32* null, i32* null, i32* null)
  %46 = load i32, i32* @PGC_SIGHUP, align 4
  %47 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i64 0, i64 0), i32* @ts_last_tune_version, i32* null, i32 %46, i32 0, i32* null, i32* null, i32* null)
  %48 = load i32, i32* @PGC_SIGHUP, align 4
  %49 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i64 0, i64 0), i32* @ts_telemetry_cloud, i32* null, i32 %48, i32 0, i32* null, i32* null, i32* null)
  ret void
}

declare dso_local i32 @DefineCustomBoolVariable(i8*, i8*, i8*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomIntVariable(i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @INT64CONST(i32) #1

declare dso_local i32 @DefineCustomEnumVariable(i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomStringVariable(i8*, i8*, i8*, i32*, i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
