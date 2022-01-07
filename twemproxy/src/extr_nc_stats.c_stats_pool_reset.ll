; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_pool_reset.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_pool_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32 }
%struct.stats_pool = type { %struct.array, i32 }
%struct.stats_server = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.array*)* @stats_pool_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_pool_reset(%struct.array* %0) #0 {
  %2 = alloca %struct.array*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stats_pool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stats_server*, align 8
  store %struct.array* %0, %struct.array** %2, align 8
  %9 = load %struct.array*, %struct.array** %2, align 8
  %10 = call i64 @array_n(%struct.array* %9)
  store i64 %10, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %43, %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load %struct.array*, %struct.array** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i8* @array_get(%struct.array* %16, i64 %17)
  %19 = bitcast i8* %18 to %struct.stats_pool*
  store %struct.stats_pool* %19, %struct.stats_pool** %5, align 8
  %20 = load %struct.stats_pool*, %struct.stats_pool** %5, align 8
  %21 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %20, i32 0, i32 1
  %22 = call i32 @stats_metric_reset(i32* %21)
  %23 = load %struct.stats_pool*, %struct.stats_pool** %5, align 8
  %24 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %23, i32 0, i32 0
  %25 = call i64 @array_n(%struct.array* %24)
  store i64 %25, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %39, %15
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.stats_pool*, %struct.stats_pool** %5, align 8
  %32 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i8* @array_get(%struct.array* %32, i64 %33)
  %35 = bitcast i8* %34 to %struct.stats_server*
  store %struct.stats_server* %35, %struct.stats_server** %8, align 8
  %36 = load %struct.stats_server*, %struct.stats_server** %8, align 8
  %37 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %36, i32 0, i32 0
  %38 = call i32 @stats_metric_reset(i32* %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %26

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %3, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %11

46:                                               ; preds = %11
  ret void
}

declare dso_local i64 @array_n(%struct.array*) #1

declare dso_local i8* @array_get(%struct.array*, i64) #1

declare dso_local i32 @stats_metric_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
