; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_swap.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@stats_enabled = common dso_local global i32 0, align 4
@LOG_PVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"skip swap of current %p shadow %p as aggregator is busy\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"skip swap of current %p shadow %p as there is nothing new\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"swap stats current %p shadow %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stats_swap(%struct.stats* %0) #0 {
  %2 = alloca %struct.stats*, align 8
  store %struct.stats* %0, %struct.stats** %2, align 8
  %3 = load i32, i32* @stats_enabled, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %61

6:                                                ; preds = %1
  %7 = load %struct.stats*, %struct.stats** %2, align 8
  %8 = getelementptr inbounds %struct.stats, %struct.stats* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load i32, i32* @LOG_PVERB, align 4
  %13 = load %struct.stats*, %struct.stats** %2, align 8
  %14 = getelementptr inbounds %struct.stats, %struct.stats* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.stats*, %struct.stats** %2, align 8
  %18 = getelementptr inbounds %struct.stats, %struct.stats* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @log_debug(i32 %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  br label %61

22:                                               ; preds = %6
  %23 = load %struct.stats*, %struct.stats** %2, align 8
  %24 = getelementptr inbounds %struct.stats, %struct.stats* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* @LOG_PVERB, align 4
  %29 = load %struct.stats*, %struct.stats** %2, align 8
  %30 = getelementptr inbounds %struct.stats, %struct.stats* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.stats*, %struct.stats** %2, align 8
  %34 = getelementptr inbounds %struct.stats, %struct.stats* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @log_debug(i32 %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36)
  br label %61

38:                                               ; preds = %22
  %39 = load i32, i32* @LOG_PVERB, align 4
  %40 = load %struct.stats*, %struct.stats** %2, align 8
  %41 = getelementptr inbounds %struct.stats, %struct.stats* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.stats*, %struct.stats** %2, align 8
  %45 = getelementptr inbounds %struct.stats, %struct.stats* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @log_debug(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %47)
  %49 = load %struct.stats*, %struct.stats** %2, align 8
  %50 = getelementptr inbounds %struct.stats, %struct.stats* %49, i32 0, i32 2
  %51 = load %struct.stats*, %struct.stats** %2, align 8
  %52 = getelementptr inbounds %struct.stats, %struct.stats* %51, i32 0, i32 3
  %53 = call i32 @array_swap(%struct.TYPE_4__* %50, %struct.TYPE_5__* %52)
  %54 = load %struct.stats*, %struct.stats** %2, align 8
  %55 = getelementptr inbounds %struct.stats, %struct.stats* %54, i32 0, i32 2
  %56 = call i32 @stats_pool_reset(%struct.TYPE_4__* %55)
  %57 = load %struct.stats*, %struct.stats** %2, align 8
  %58 = getelementptr inbounds %struct.stats, %struct.stats* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.stats*, %struct.stats** %2, align 8
  %60 = getelementptr inbounds %struct.stats, %struct.stats* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %38, %27, %11, %5
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @array_swap(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @stats_pool_reset(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
