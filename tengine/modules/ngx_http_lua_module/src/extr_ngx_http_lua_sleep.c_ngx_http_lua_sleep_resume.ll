; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_sleep.c_ngx_http_lua_sleep_resume.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_sleep.c_ngx_http_lua_sleep_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_wev_handler = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lua run thread returned %d\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @ngx_http_lua_sleep_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_sleep_resume(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = load i32, i32* @ngx_http_lua_module, align 4
  %11 = call %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_15__* %9, i32 %10)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @NGX_ERROR, align 8
  store i64 %15, i64* %2, align 8
  br label %77

16:                                               ; preds = %1
  %17 = load i32, i32* @ngx_http_lua_wev_handler, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %5, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_15__* %23, %struct.TYPE_16__* %24)
  store i32* %25, i32** %4, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = call i64 @ngx_http_lua_run_thread(i32* %29, %struct.TYPE_15__* %30, %struct.TYPE_16__* %31, i32 0)
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ngx_log_debug1(i32 %33, i32 %38, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @NGX_AGAIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %16
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_17__* %45, i32* %46, %struct.TYPE_15__* %47, %struct.TYPE_16__* %48, i32 %49)
  store i64 %50, i64* %2, align 8
  br label %77

51:                                               ; preds = %16
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @NGX_DONE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = load i64, i64* @NGX_DONE, align 8
  %58 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__* %56, i64 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_17__* %59, i32* %60, %struct.TYPE_15__* %61, %struct.TYPE_16__* %62, i32 %63)
  store i64 %64, i64* %2, align 8
  br label %77

65:                                               ; preds = %51
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__* %71, i64 %72)
  %74 = load i64, i64* @NGX_DONE, align 8
  store i64 %74, i64* %2, align 8
  br label %77

75:                                               ; preds = %65
  %76 = load i64, i64* %6, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %75, %70, %55, %44, %14
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i64 @ngx_http_lua_run_thread(i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_17__*, i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
