; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_options.c_continuous_agg_update_options.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_options.c_continuous_agg_update_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8* }

@ContinuousEnabled = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot disable continuous aggregates\00", align 1
@ContinuousViewOptionRefreshLag = common dso_local global i64 0, align 8
@ContinuousViewOptionMaxIntervalPerRun = common dso_local global i64 0, align 8
@ContinuousViewOptionRefreshInterval = common dso_local global i64 0, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@ContinuousViewOptionCreateGroupIndex = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"cannot alter create_group_indexes option for continuous aggregates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @continuous_agg_update_options(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = load i64, i64* @ContinuousEnabled, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = load i64, i64* @ContinuousViewOptionRefreshLag, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %23
  %31 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_19__* @ts_hypertable_cache_get_entry_by_id(i32* %32, i32 %36)
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %6, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @hyperspace_get_open_dimension(i32 %40, i32 0)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @ts_dimension_get_partition_type(i32* %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = call i32 @continuous_agg_parse_refresh_lag(i32 %43, %struct.TYPE_18__* %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @update_refresh_lag(%struct.TYPE_20__* %46, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ts_cache_release(i32* %49)
  br label %51

51:                                               ; preds = %30, %23
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = load i64, i64* @ContinuousViewOptionMaxIntervalPerRun, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %51
  %59 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_19__* @ts_hypertable_cache_get_entry_by_id(i32* %60, i32 %64)
  store %struct.TYPE_19__* %65, %struct.TYPE_19__** %10, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @hyperspace_get_open_dimension(i32 %68, i32 0)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @ts_dimension_get_partition_type(i32* %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @continuous_agg_parse_max_interval_per_job(i32 %71, %struct.TYPE_18__* %72, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @update_max_interval_per_job(%struct.TYPE_20__* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @ts_cache_release(i32* %81)
  br label %83

83:                                               ; preds = %58, %51
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = load i64, i64* @ContinuousViewOptionRefreshInterval, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %123, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CurrentMemoryContext, align 4
  %96 = call %struct.TYPE_21__* @ts_bgw_job_find(i32 %94, i32 %95, i32 1)
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %13, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = load i64, i64* @ContinuousViewOptionRefreshInterval, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i8** @DatumGetIntervalP(i32 %101)
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = load i64, i64* @ContinuousViewOptionRefreshInterval, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i8** @DatumGetIntervalP(i32 %111)
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %122 = call i32 @ts_bgw_job_update_by_id(i32 %120, %struct.TYPE_21__* %121)
  br label %123

123:                                              ; preds = %90, %83
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %125 = load i64, i64* @ContinuousViewOptionCreateGroupIndex, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @ERROR, align 4
  %132 = call i32 @elog(i32 %131, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %123
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local %struct.TYPE_19__* @ts_hypertable_cache_get_entry_by_id(i32*, i32) #1

declare dso_local i32* @hyperspace_get_open_dimension(i32, i32) #1

declare dso_local i32 @continuous_agg_parse_refresh_lag(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ts_dimension_get_partition_type(i32*) #1

declare dso_local i32 @update_refresh_lag(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ts_cache_release(i32*) #1

declare dso_local i32 @continuous_agg_parse_max_interval_per_job(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @update_max_interval_per_job(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_21__* @ts_bgw_job_find(i32, i32, i32) #1

declare dso_local i8** @DatumGetIntervalP(i32) #1

declare dso_local i32 @ts_bgw_job_update_by_id(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
