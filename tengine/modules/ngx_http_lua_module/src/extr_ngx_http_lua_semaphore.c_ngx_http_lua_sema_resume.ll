; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_semaphore.c_ngx_http_lua_sema_resume.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_semaphore.c_ngx_http_lua_sema_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_wev_handler = common dso_local global i32 0, align 4
@SEMAPHORE_WAIT_SUCC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"lua run thread returned %d\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*)* @ngx_http_lua_sema_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_sema_resume(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = load i32, i32* @ngx_http_lua_module, align 4
  %11 = call %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_17__* %9, i32 %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %8, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %13 = icmp eq %struct.TYPE_18__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @NGX_ERROR, align 8
  store i64 %15, i64* %2, align 8
  br label %111

16:                                               ; preds = %1
  %17 = load i32, i32* @ngx_http_lua_wev_handler, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_17__* %23, %struct.TYPE_18__* %24)
  store i32* %25, i32** %4, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SEMAPHORE_WAIT_SUCC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %16
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @lua_pushboolean(i32 %41, i32 1)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @lua_pushnil(i32 %47)
  br label %62

49:                                               ; preds = %16
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @lua_pushboolean(i32 %54, i32 0)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @lua_pushliteral(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %49, %36
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = call i64 @ngx_http_lua_run_thread(i32* %63, %struct.TYPE_17__* %64, %struct.TYPE_18__* %65, i32 2)
  store i64 %66, i64* %6, align 8
  %67 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @ngx_log_debug1(i32 %67, i32 %72, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @NGX_AGAIN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %62
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_19__* %79, i32* %80, %struct.TYPE_17__* %81, %struct.TYPE_18__* %82, i32 %83)
  store i64 %84, i64* %2, align 8
  br label %111

85:                                               ; preds = %62
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @NGX_DONE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = load i64, i64* @NGX_DONE, align 8
  %92 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_17__* %90, i64 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_19__* %93, i32* %94, %struct.TYPE_17__* %95, %struct.TYPE_18__* %96, i32 %97)
  store i64 %98, i64* %2, align 8
  br label %111

99:                                               ; preds = %85
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_17__* %105, i64 %106)
  %108 = load i64, i64* @NGX_DONE, align 8
  store i64 %108, i64* %2, align 8
  br label %111

109:                                              ; preds = %99
  %110 = load i64, i64* %6, align 8
  store i64 %110, i64* %2, align 8
  br label %111

111:                                              ; preds = %109, %104, %89, %78, %14
  %112 = load i64, i64* %2, align 8
  ret i64 %112
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @lua_pushboolean(i32, i32) #1

declare dso_local i32 @lua_pushnil(i32) #1

declare dso_local i32 @lua_pushliteral(i32, i8*) #1

declare dso_local i64 @ngx_http_lua_run_thread(i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_19__*, i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
