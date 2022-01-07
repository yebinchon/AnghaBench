; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_add_timers.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_add_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32 }

@check_peers_ctx = common dso_local global %struct.TYPE_12__* null, align 8
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"http check upstream init_process, shm_name: %V, peer number: %ud\00", align 1
@ngx_pid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @ngx_http_upstream_check_add_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_check_add_timers(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @check_peers_ctx, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @NGX_OK, align 4
  store i32 %16, i32* %2, align 4
  br label %96

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %11, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %22 = icmp eq %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @NGX_OK, align 4
  store i32 %24, i32* %2, align 4
  br label %96

25:                                               ; preds = %17
  %26 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ngx_log_debug2(i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32* %31, i64 %35)
  %37 = load i32, i32* @ngx_pid, align 4
  %38 = call i32 @srandom(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %7, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %10, align 8
  store i64 0, i64* %4, align 8
  br label %46

46:                                               ; preds = %91, %25
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %46
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %9, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1000
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  br label %68

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 1000, %67 ]
  store i32 %69, i32* %6, align 4
  %70 = call i32 (...) @ngx_random()
  %71 = load i32, i32* %6, align 4
  %72 = srem i32 %70, %71
  store i32 %72, i32* %5, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32* %75, i32** %79, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %81
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ngx_http_upstream_check_add_timer(%struct.TYPE_14__* %82, i32 %85, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %68
  %92 = load i64, i64* %4, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %4, align 8
  br label %46

94:                                               ; preds = %46
  %95 = load i32, i32* @NGX_OK, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %23, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i64) #1

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @ngx_random(...) #1

declare dso_local i32 @ngx_http_upstream_check_add_timer(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
