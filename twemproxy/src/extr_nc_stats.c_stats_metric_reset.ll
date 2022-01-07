; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_metric_reset.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_metric_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32 }
%struct.stats_metric = type { i32 }

@STATS_POOL_NFIELD = common dso_local global i64 0, align 8
@STATS_SERVER_NFIELD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.array*)* @stats_metric_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_metric_reset(%struct.array* %0) #0 {
  %2 = alloca %struct.array*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stats_metric*, align 8
  store %struct.array* %0, %struct.array** %2, align 8
  %6 = load %struct.array*, %struct.array** %2, align 8
  %7 = call i64 @array_n(%struct.array* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @STATS_POOL_NFIELD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @STATS_SERVER_NFIELD, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i1 [ true, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %29, %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.array*, %struct.array** %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call %struct.stats_metric* @array_get(%struct.array* %24, i64 %25)
  store %struct.stats_metric* %26, %struct.stats_metric** %5, align 8
  %27 = load %struct.stats_metric*, %struct.stats_metric** %5, align 8
  %28 = call i32 @stats_metric_init(%struct.stats_metric* %27)
  br label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %19

32:                                               ; preds = %19
  ret void
}

declare dso_local i64 @array_n(%struct.array*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.stats_metric* @array_get(%struct.array*, i64) #1

declare dso_local i32 @stats_metric_init(%struct.stats_metric*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
