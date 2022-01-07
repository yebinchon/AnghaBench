; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_aggregate_metric.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_aggregate_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32 }
%struct.stats_metric = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.array*, %struct.array*)* @stats_aggregate_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_aggregate_metric(%struct.array* %0, %struct.array* %1) #0 {
  %3 = alloca %struct.array*, align 8
  %4 = alloca %struct.array*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stats_metric*, align 8
  %7 = alloca %struct.stats_metric*, align 8
  store %struct.array* %0, %struct.array** %3, align 8
  store %struct.array* %1, %struct.array** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %70, %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.array*, %struct.array** %4, align 8
  %11 = call i64 @array_n(%struct.array* %10)
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %13, label %73

13:                                               ; preds = %8
  %14 = load %struct.array*, %struct.array** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.stats_metric* @array_get(%struct.array* %14, i64 %15)
  store %struct.stats_metric* %16, %struct.stats_metric** %6, align 8
  %17 = load %struct.array*, %struct.array** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.stats_metric* @array_get(%struct.array* %17, i64 %18)
  store %struct.stats_metric* %19, %struct.stats_metric** %7, align 8
  %20 = load %struct.stats_metric*, %struct.stats_metric** %6, align 8
  %21 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stats_metric*, %struct.stats_metric** %7, align 8
  %24 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.stats_metric*, %struct.stats_metric** %6, align 8
  %30 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %67 [
    i32 130, label %32
    i32 129, label %42
    i32 128, label %52
  ]

32:                                               ; preds = %13
  %33 = load %struct.stats_metric*, %struct.stats_metric** %6, align 8
  %34 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.stats_metric*, %struct.stats_metric** %7, align 8
  %38 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %36
  store i32 %41, i32* %39, align 4
  br label %69

42:                                               ; preds = %13
  %43 = load %struct.stats_metric*, %struct.stats_metric** %6, align 8
  %44 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.stats_metric*, %struct.stats_metric** %7, align 8
  %48 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %69

52:                                               ; preds = %13
  %53 = load %struct.stats_metric*, %struct.stats_metric** %6, align 8
  %54 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.stats_metric*, %struct.stats_metric** %6, align 8
  %60 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.stats_metric*, %struct.stats_metric** %7, align 8
  %64 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %52
  br label %69

67:                                               ; preds = %13
  %68 = call i32 (...) @NOT_REACHED()
  br label %69

69:                                               ; preds = %67, %66, %42, %32
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %5, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %8

73:                                               ; preds = %8
  ret void
}

declare dso_local i64 @array_n(%struct.array*) #1

declare dso_local %struct.stats_metric* @array_get(%struct.array*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
