; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_continuous_agg_execute_materialization.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_continuous_agg_execute_materialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"can only materialize continuous aggregates on a hypertable\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"can only materialize continuous aggregates to a hypertable\00", align 1
@PG_INT64_MIN = common dso_local global i64 0, align 8
@PG_INT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @continuous_agg_execute_materialization(i64 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = bitcast %struct.TYPE_16__* %8 to { i32*, i32* }*
  %22 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %21, i32 0, i32 0
  store i32* %3, i32** %22, align 8
  %23 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %21, i32 0, i32 1
  store i32* %4, i32** %23, align 8
  store i64 %0, i64* %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i64 %6, i64* %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @completed_threshold_get(i32 %25)
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %30, i32** %17, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.TYPE_18__* @ts_hypertable_cache_get_entry_by_id(i32* %31, i32 %32)
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %18, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.TYPE_18__* @ts_hypertable_cache_get_entry_by_id(i32* %34, i32 %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %45 = icmp eq %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %7
  %47 = load i32, i32* @ERROR, align 4
  %48 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %7
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %51 = icmp eq %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ERROR, align 4
  %54 = call i32 @elog(i32 %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_13__* @hyperspace_get_open_dimension(i32 %58, i32 0)
  %60 = call i32 @ts_dimension_get_partition_type(%struct.TYPE_13__* %59)
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_13__* @hyperspace_get_open_dimension(i32 %64, i32 0)
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %20, align 4
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PG_INT64_MIN, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ts_time_bucket_by_type(i64 %76, i64 %78, i32 %80)
  %82 = icmp eq i64 %75, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @Assert(i32 %83)
  br label %85

85:                                               ; preds = %73, %55
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PG_INT64_MAX, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @ts_time_bucket_by_type(i64 %93, i64 %95, i32 %97)
  %99 = icmp eq i64 %92, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @Assert(i32 %100)
  br label %110

102:                                              ; preds = %85
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @ts_time_bucket_by_type(i64 %103, i64 %105, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %102, %90
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store i32* %113, i32** %114, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32* %117, i32** %118, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = bitcast %struct.TYPE_16__* %8 to { i32*, i32* }*
  %122 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %121, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = bitcast %struct.TYPE_16__* %15 to { i32*, i32* }*
  %127 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %126, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @update_materializations(i32* %123, i32* %125, i32* %128, i32* %130, i32* %20, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %16, i64 %119, i32* %120)
  %132 = call i32 (...) @ts_catalog_database_info_get()
  %133 = call i32 @ts_catalog_database_info_become_owner(i32 %132, i32* %14)
  %134 = load i32, i32* %11, align 4
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @continuous_aggs_completed_threshold_set(i32 %134, i64 %136)
  %138 = call i32 @ts_catalog_restore_user(i32* %14)
  %139 = load i32*, i32** %17, align 8
  %140 = call i32 @ts_cache_release(i32* %139)
  ret void
}

declare dso_local i64 @completed_threshold_get(i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local %struct.TYPE_18__* @ts_hypertable_cache_get_entry_by_id(i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ts_dimension_get_partition_type(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @hyperspace_get_open_dimension(i32, i32) #1

declare dso_local i64 @ts_time_bucket_by_type(i64, i64, i32) #1

declare dso_local i32 @update_materializations(i32*, i32*, i32*, i32*, i32*, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8, i64, i32*) #1

declare dso_local i32 @ts_catalog_database_info_become_owner(i32, i32*) #1

declare dso_local i32 @ts_catalog_database_info_get(...) #1

declare dso_local i32 @continuous_aggs_completed_threshold_set(i32, i64) #1

declare dso_local i32 @ts_catalog_restore_user(i32*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
