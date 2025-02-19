; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_create.c_get_max_interval_per_job.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_create.c_get_max_interval_per_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ContinuousViewOptionMaxIntervalPerRun = common dso_local global i64 0, align 8
@DEFAULT_MAX_INTERVAL_MAX_BUCKET_WIDTH = common dso_local global i32 0, align 4
@DEFAULT_MAX_INTERVAL_MULTIPLIER = common dso_local global i32 0, align 4
@PG_INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*, i32)* @get_max_interval_per_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_interval_per_job(i32 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %9 = load i64, i64* @ContinuousViewOptionMaxIntervalPerRun, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DEFAULT_MAX_INTERVAL_MAX_BUCKET_WIDTH, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @DEFAULT_MAX_INTERVAL_MULTIPLIER, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %19, %20
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @PG_INT64_MAX, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %21, %18 ], [ %23, %22 ]
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @continuous_agg_parse_max_interval_per_job(i32 %27, %struct.TYPE_4__* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %24
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @continuous_agg_parse_max_interval_per_job(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
