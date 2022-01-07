; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_timers.c_ngx_http_tfs_timers_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_timers.c_ngx_http_tfs_timers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"nginx_tfs_keepalive_zone\00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ngx_http_tfs_timers_init(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 128, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 25, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32* bitcast ([25 x i8]* @.str to i32*), i32** %15, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = call i64 @ngx_shm_alloc(%struct.TYPE_11__* %8)
  %21 = load i64, i64* @NGX_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %51

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %6, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_12__* @ngx_palloc(i32 %29, i32 16)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %9, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %51

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i64 -1, i64* %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @ngx_shmtx_create(%struct.TYPE_14__* %42, i32* %43, i32* %44)
  %46 = load i64, i64* @NGX_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %51

49:                                               ; preds = %34
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %3, align 8
  br label %51

51:                                               ; preds = %49, %48, %33, %23
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %52
}

declare dso_local i64 @ngx_shm_alloc(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_shmtx_create(%struct.TYPE_14__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
