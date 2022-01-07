; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_server_metric_init.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_server_metric_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_metric = type { i32 }
%struct.stats_server = type { i32 }

@STATS_SERVER_NFIELD = common dso_local global i64 0, align 8
@NC_OK = common dso_local global i64 0, align 8
@stats_server_codec = common dso_local global %struct.stats_metric* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stats_server*)* @stats_server_metric_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stats_server_metric_init(%struct.stats_server* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stats_server*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stats_metric*, align 8
  store %struct.stats_server* %0, %struct.stats_server** %3, align 8
  %8 = load i64, i64* @STATS_SERVER_NFIELD, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.stats_server*, %struct.stats_server** %3, align 8
  %10 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @array_init(i32* %10, i64 %11, i32 4)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @NC_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %2, align 8
  br label %40

18:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.stats_server*, %struct.stats_server** %3, align 8
  %25 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %24, i32 0, i32 0
  %26 = call %struct.stats_metric* @array_push(i32* %25)
  store %struct.stats_metric* %26, %struct.stats_metric** %7, align 8
  %27 = load %struct.stats_metric*, %struct.stats_metric** %7, align 8
  %28 = load %struct.stats_metric*, %struct.stats_metric** @stats_server_codec, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %28, i64 %29
  %31 = bitcast %struct.stats_metric* %27 to i8*
  %32 = bitcast %struct.stats_metric* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.stats_metric*, %struct.stats_metric** %7, align 8
  %34 = call i32 @stats_metric_init(%struct.stats_metric* %33)
  br label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %19

38:                                               ; preds = %19
  %39 = load i64, i64* @NC_OK, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %16
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @array_init(i32*, i64, i32) #1

declare dso_local %struct.stats_metric* @array_push(i32*) #1

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
