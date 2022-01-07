; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_start_aggregator.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_start_aggregator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32 }

@stats_enabled = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i64 0, align 8
@stats_loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"stats aggregator create failed: %s\00", align 1
@NC_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stats*)* @stats_start_aggregator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stats_start_aggregator(%struct.stats* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stats*, align 8
  %4 = alloca i64, align 8
  store %struct.stats* %0, %struct.stats** %3, align 8
  %5 = load i32, i32* @stats_enabled, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @NC_OK, align 8
  store i64 %8, i64* %2, align 8
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.stats*, %struct.stats** %3, align 8
  %11 = call i64 @stats_listen(%struct.stats* %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @NC_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %32

17:                                               ; preds = %9
  %18 = load %struct.stats*, %struct.stats** %3, align 8
  %19 = getelementptr inbounds %struct.stats, %struct.stats* %18, i32 0, i32 0
  %20 = load i32, i32* @stats_loop, align 4
  %21 = load %struct.stats*, %struct.stats** %3, align 8
  %22 = call i64 @pthread_create(i32* %19, i32* null, i32 %20, %struct.stats* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @strerror(i64 %26)
  %28 = call i32 @log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @NC_ERROR, align 8
  store i64 %29, i64* %2, align 8
  br label %32

30:                                               ; preds = %17
  %31 = load i64, i64* @NC_OK, align 8
  store i64 %31, i64* %2, align 8
  br label %32

32:                                               ; preds = %30, %25, %15, %7
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

declare dso_local i64 @stats_listen(%struct.stats*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.stats*) #1

declare dso_local i32 @log_error(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
