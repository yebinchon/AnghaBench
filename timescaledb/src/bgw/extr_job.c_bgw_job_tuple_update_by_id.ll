; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_bgw_job_tuple_update_by_id.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_bgw_job_tuple_update_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@interval_eq = common dso_local global i32 0, align 4
@timestamptz_pl_interval = common dso_local global i32 0, align 4
@SCAN_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*)* @bgw_job_tuple_update_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgw_job_tuple_update_by_id(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @heap_copytuple(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @GETSTRUCT(i32 %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = call i32 @ts_bgw_job_permission_check(%struct.TYPE_16__* %19)
  %21 = load i32, i32* @interval_eq, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  %24 = call i32 @IntervalPGetDatum(i32* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = call i32 @IntervalPGetDatum(i32* %27)
  %29 = call i32 @DirectFunctionCall2(i32 %21, i32 %24, i32 %28)
  %30 = call i32 @DatumGetBool(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_15__* @ts_bgw_job_stat_find(i32 %35)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %9, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %38 = icmp ne %struct.TYPE_15__* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load i32, i32* @timestamptz_pl_interval, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TimestampTzGetDatum(i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = call i32 @IntervalPGetDatum(i32* %48)
  %50 = call i32 @DirectFunctionCall2(i32 %40, i32 %45, i32 %49)
  %51 = call i32 @DatumGetTimestampTz(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ts_bgw_job_stat_update_next_start(%struct.TYPE_16__* %52, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %39, %32
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %2
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ts_catalog_update(i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @heap_freetuple(i32 %86)
  %88 = load i32, i32* @SCAN_DONE, align 4
  ret i32 %88
}

declare dso_local i32 @heap_copytuple(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ts_bgw_job_permission_check(%struct.TYPE_16__*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @IntervalPGetDatum(i32*) #1

declare dso_local %struct.TYPE_15__* @ts_bgw_job_stat_find(i32) #1

declare dso_local i32 @DatumGetTimestampTz(i32) #1

declare dso_local i32 @TimestampTzGetDatum(i32) #1

declare dso_local i32 @ts_bgw_job_stat_update_next_start(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ts_catalog_update(i32, i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
