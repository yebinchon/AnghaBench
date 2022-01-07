; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_job_stat.c_calculate_next_start_on_failure.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_job_stat.c_calculate_next_start_on_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@interval_mul = common dso_local global i32 0, align 4
@MAX_INTERVALS_BACKOFF = common dso_local global i32 0, align 4
@interval_cmp = common dso_local global i32 0, align 4
@timestamptz_pl_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_5__*)* @calculate_next_start_on_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_next_start_on_failure(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %11 = call i32 (...) @calculate_jitter_percent()
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 1, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @interval_mul, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @IntervalPGetDatum(i32* %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @Float8GetDatum(i32 %20)
  %22 = call i32 @DirectFunctionCall2(i32 %15, i32 %19, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @interval_mul, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @IntervalPGetDatum(i32* %26)
  %28 = load i32, i32* @MAX_INTERVALS_BACKOFF, align 4
  %29 = call i32 @Float8GetDatum(i32 %28)
  %30 = call i32 @DirectFunctionCall2(i32 %23, i32 %27, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @interval_cmp, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @DirectFunctionCall2(i32 %31, i32 %32, i32 %33)
  %35 = call i64 @DatumGetInt32(i32 %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %3
  %40 = load i32, i32* @interval_mul, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sitofp i32 %42 to double
  %44 = fadd double 1.000000e+00, %43
  %45 = fptosi double %44 to i32
  %46 = call i32 @Float8GetDatum(i32 %45)
  %47 = call i32 @DirectFunctionCall2(i32 %40, i32 %41, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @timestamptz_pl_interval, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @TimestampTzGetDatum(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @DirectFunctionCall2(i32 %48, i32 %50, i32 %51)
  %53 = call i32 @DatumGetTimestampTz(i32 %52)
  ret i32 %53
}

declare dso_local i32 @calculate_jitter_percent(...) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @IntervalPGetDatum(i32*) #1

declare dso_local i32 @Float8GetDatum(i32) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @DatumGetTimestampTz(i32) #1

declare dso_local i32 @TimestampTzGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
