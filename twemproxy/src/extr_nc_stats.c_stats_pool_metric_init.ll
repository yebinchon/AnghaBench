; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_pool_metric_init.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_pool_metric_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_metric = type { i32 }
%struct.array = type { i32 }

@STATS_POOL_NFIELD = common dso_local global i64 0, align 8
@NC_OK = common dso_local global i64 0, align 8
@stats_pool_codec = common dso_local global %struct.stats_metric* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.array*)* @stats_pool_metric_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stats_pool_metric_init(%struct.array* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.array*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stats_metric*, align 8
  store %struct.array* %0, %struct.array** %3, align 8
  %8 = load i64, i64* @STATS_POOL_NFIELD, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.array*, %struct.array** %3, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @array_init(%struct.array* %9, i64 %10, i32 4)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @NC_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %38

17:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.array*, %struct.array** %3, align 8
  %24 = call %struct.stats_metric* @array_push(%struct.array* %23)
  store %struct.stats_metric* %24, %struct.stats_metric** %7, align 8
  %25 = load %struct.stats_metric*, %struct.stats_metric** %7, align 8
  %26 = load %struct.stats_metric*, %struct.stats_metric** @stats_pool_codec, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %26, i64 %27
  %29 = bitcast %struct.stats_metric* %25 to i8*
  %30 = bitcast %struct.stats_metric* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.stats_metric*, %struct.stats_metric** %7, align 8
  %32 = call i32 @stats_metric_init(%struct.stats_metric* %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %18

36:                                               ; preds = %18
  %37 = load i64, i64* @NC_OK, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %15
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @array_init(%struct.array*, i64, i32) #1

declare dso_local %struct.stats_metric* @array_push(%struct.array*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @stats_metric_init(%struct.stats_metric*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
