; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_aggregate.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i64, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.stats_pool = type { %struct.TYPE_3__, i32 }
%struct.stats_server = type { i32 }

@LOG_PVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"skip aggregate of shadow %p to sum %p as generator is slow\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"aggregate stats shadow %p to sum %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats*)* @stats_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_aggregate(%struct.stats* %0) #0 {
  %2 = alloca %struct.stats*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.stats_pool*, align 8
  %5 = alloca %struct.stats_pool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stats_server*, align 8
  %8 = alloca %struct.stats_server*, align 8
  store %struct.stats* %0, %struct.stats** %2, align 8
  %9 = load %struct.stats*, %struct.stats** %2, align 8
  %10 = getelementptr inbounds %struct.stats, %struct.stats* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @LOG_PVERB, align 4
  %15 = load %struct.stats*, %struct.stats** %2, align 8
  %16 = getelementptr inbounds %struct.stats, %struct.stats* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stats*, %struct.stats** %2, align 8
  %20 = getelementptr inbounds %struct.stats, %struct.stats* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @log_debug(i32 %14, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22)
  br label %89

24:                                               ; preds = %1
  %25 = load i32, i32* @LOG_PVERB, align 4
  %26 = load %struct.stats*, %struct.stats** %2, align 8
  %27 = getelementptr inbounds %struct.stats, %struct.stats* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.stats*, %struct.stats** %2, align 8
  %31 = getelementptr inbounds %struct.stats, %struct.stats* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @log_debug(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %33)
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %83, %24
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.stats*, %struct.stats** %2, align 8
  %38 = getelementptr inbounds %struct.stats, %struct.stats* %37, i32 0, i32 2
  %39 = call i64 @array_n(%struct.TYPE_3__* %38)
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %86

41:                                               ; preds = %35
  %42 = load %struct.stats*, %struct.stats** %2, align 8
  %43 = getelementptr inbounds %struct.stats, %struct.stats* %42, i32 0, i32 2
  %44 = load i64, i64* %3, align 8
  %45 = call i8* @array_get(%struct.TYPE_3__* %43, i64 %44)
  %46 = bitcast i8* %45 to %struct.stats_pool*
  store %struct.stats_pool* %46, %struct.stats_pool** %4, align 8
  %47 = load %struct.stats*, %struct.stats** %2, align 8
  %48 = getelementptr inbounds %struct.stats, %struct.stats* %47, i32 0, i32 1
  %49 = load i64, i64* %3, align 8
  %50 = call i8* @array_get(%struct.TYPE_3__* %48, i64 %49)
  %51 = bitcast i8* %50 to %struct.stats_pool*
  store %struct.stats_pool* %51, %struct.stats_pool** %5, align 8
  %52 = load %struct.stats_pool*, %struct.stats_pool** %5, align 8
  %53 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %52, i32 0, i32 1
  %54 = load %struct.stats_pool*, %struct.stats_pool** %4, align 8
  %55 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %54, i32 0, i32 1
  %56 = call i32 @stats_aggregate_metric(i32* %53, i32* %55)
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %79, %41
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.stats_pool*, %struct.stats_pool** %4, align 8
  %60 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %59, i32 0, i32 0
  %61 = call i64 @array_n(%struct.TYPE_3__* %60)
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.stats_pool*, %struct.stats_pool** %4, align 8
  %65 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %64, i32 0, i32 0
  %66 = load i64, i64* %6, align 8
  %67 = call i8* @array_get(%struct.TYPE_3__* %65, i64 %66)
  %68 = bitcast i8* %67 to %struct.stats_server*
  store %struct.stats_server* %68, %struct.stats_server** %7, align 8
  %69 = load %struct.stats_pool*, %struct.stats_pool** %5, align 8
  %70 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %69, i32 0, i32 0
  %71 = load i64, i64* %6, align 8
  %72 = call i8* @array_get(%struct.TYPE_3__* %70, i64 %71)
  %73 = bitcast i8* %72 to %struct.stats_server*
  store %struct.stats_server* %73, %struct.stats_server** %8, align 8
  %74 = load %struct.stats_server*, %struct.stats_server** %8, align 8
  %75 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %74, i32 0, i32 0
  %76 = load %struct.stats_server*, %struct.stats_server** %7, align 8
  %77 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %76, i32 0, i32 0
  %78 = call i32 @stats_aggregate_metric(i32* %75, i32* %77)
  br label %79

79:                                               ; preds = %63
  %80 = load i64, i64* %6, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %57

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %3, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %3, align 8
  br label %35

86:                                               ; preds = %35
  %87 = load %struct.stats*, %struct.stats** %2, align 8
  %88 = getelementptr inbounds %struct.stats, %struct.stats* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %13
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, i32, i32) #1

declare dso_local i64 @array_n(%struct.TYPE_3__*) #1

declare dso_local i8* @array_get(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @stats_aggregate_metric(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
