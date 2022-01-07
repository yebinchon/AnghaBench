; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_on_abort_resume.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_on_abort_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_wev_handler = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"lua resuming the on_abort callback thread\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"lua run thread returned %d\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @ngx_http_lua_on_abort_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_on_abort_resume(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
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
  br label %84

16:                                               ; preds = %1
  %17 = load i32, i32* @ngx_http_lua_wev_handler, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ngx_log_debug0(i32 %20, i32 %25, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %7, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_15__* %30, %struct.TYPE_16__* %31)
  store i32* %32, i32** %4, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = call i64 @ngx_http_lua_run_thread(i32* %36, %struct.TYPE_15__* %37, %struct.TYPE_16__* %38, i32 0)
  store i64 %39, i64* %5, align 8
  %40 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @ngx_log_debug1(i32 %40, i32 %45, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @NGX_AGAIN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %16
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_17__* %52, i32* %53, %struct.TYPE_15__* %54, %struct.TYPE_16__* %55, i32 %56)
  store i64 %57, i64* %2, align 8
  br label %84

58:                                               ; preds = %16
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @NGX_DONE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = load i64, i64* @NGX_DONE, align 8
  %65 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__* %63, i64 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_17__* %66, i32* %67, %struct.TYPE_15__* %68, %struct.TYPE_16__* %69, i32 %70)
  store i64 %71, i64* %2, align 8
  br label %84

72:                                               ; preds = %58
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__* %78, i64 %79)
  %81 = load i64, i64* @NGX_DONE, align 8
  store i64 %81, i64* %2, align 8
  br label %84

82:                                               ; preds = %72
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* %2, align 8
  br label %84

84:                                               ; preds = %82, %77, %62, %51, %14
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

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
