; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_job.c_continuous_agg_job_get_default_schedule_interval.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_job.c_continuous_agg_job_get_default_schedule_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@DEFAULT_SCHEDULE_INTERVAL = common dso_local global i32* null, align 8
@make_interval = common dso_local global i32 0, align 4
@USECS_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @continuous_agg_job_get_default_schedule_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @continuous_agg_job_get_default_schedule_interval(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** @DEFAULT_SCHEDULE_INTERVAL, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_3__* @ts_hypertable_get_by_id(i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @hyperspace_get_open_dimension(i32 %18, i32 0)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ts_dimension_get_partition_type(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @IS_TIMESTAMP_TYPE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* @make_interval, align 4
  %30 = call i32 @Int32GetDatum(i32 0)
  %31 = call i32 @Int32GetDatum(i32 0)
  %32 = call i32 @Int32GetDatum(i32 0)
  %33 = call i32 @Int32GetDatum(i32 0)
  %34 = call i32 @Int32GetDatum(i32 0)
  %35 = call i32 @Int32GetDatum(i32 0)
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* @USECS_PER_SEC, align 4
  %39 = sdiv i32 %37, %38
  %40 = call i32 @Float8GetDatum(i32 %39)
  %41 = call i32 @DirectFunctionCall7(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %40)
  %42 = call i32* @DatumGetIntervalP(i32 %41)
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %28, %24, %2
  %44 = load i32*, i32** %6, align 8
  ret i32* %44
}

declare dso_local %struct.TYPE_3__* @ts_hypertable_get_by_id(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @hyperspace_get_open_dimension(i32, i32) #1

declare dso_local i32 @ts_dimension_get_partition_type(i32*) #1

declare dso_local i64 @IS_TIMESTAMP_TYPE(i32) #1

declare dso_local i32* @DatumGetIntervalP(i32) #1

declare dso_local i32 @DirectFunctionCall7(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Float8GetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
