; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_read_body_resume.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_read_body_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_wev_handler = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lua run thread returned %d\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @ngx_http_lua_read_body_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_read_body_resume(%struct.TYPE_15__* %0) #0 {
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
  %12 = load i32, i32* @ngx_http_lua_wev_handler, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_15__* %18, %struct.TYPE_16__* %19)
  store i32* %20, i32** %4, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = call i64 @ngx_http_lua_run_thread(i32* %24, %struct.TYPE_15__* %25, %struct.TYPE_16__* %26, i32 0)
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @ngx_log_debug1(i32 %28, i32 %33, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @NGX_AGAIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_17__* %40, i32* %41, %struct.TYPE_15__* %42, %struct.TYPE_16__* %43, i32 %44)
  store i64 %45, i64* %2, align 8
  br label %72

46:                                               ; preds = %1
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @NGX_DONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = load i64, i64* @NGX_DONE, align 8
  %53 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__* %51, i64 %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_17__* %54, i32* %55, %struct.TYPE_15__* %56, %struct.TYPE_16__* %57, i32 %58)
  store i64 %59, i64* %2, align 8
  br label %72

60:                                               ; preds = %46
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__* %66, i64 %67)
  %69 = load i64, i64* @NGX_DONE, align 8
  store i64 %69, i64* %2, align 8
  br label %72

70:                                               ; preds = %60
  %71 = load i64, i64* %5, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %70, %65, %50, %39
  %73 = load i64, i64* %2, align 8
  ret i64 %73
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
