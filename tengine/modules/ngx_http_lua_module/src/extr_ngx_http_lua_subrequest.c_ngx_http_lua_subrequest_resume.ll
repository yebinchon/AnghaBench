; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_subrequest_resume.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_subrequest_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64, i32*, i32*, i32*, i32* }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_wev_handler = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"lua run subrequests done, resuming lua thread\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nsubreqs: %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"free sr_statues/headers/bodies memory ASAP\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"lua run thread returned %d\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*)* @ngx_http_lua_subrequest_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_subrequest_resume(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = load i32, i32* @ngx_http_lua_module, align 4
  %12 = call %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %10, i32 %11)
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %8, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %14 = icmp eq %struct.TYPE_19__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @NGX_ERROR, align 8
  store i64 %16, i64* %2, align 8
  br label %115

17:                                               ; preds = %1
  %18 = load i32, i32* @ngx_http_lua_wev_handler, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ngx_log_debug0(i32 %21, i32 %26, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %9, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = call i32 @ngx_http_lua_handle_subreq_responses(%struct.TYPE_18__* %36, %struct.TYPE_19__* %37)
  %39 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ngx_pfree(i32 %42, i32* %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %7, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_18__* %58, %struct.TYPE_19__* %59)
  store i32* %60, i32** %4, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @ngx_http_lua_run_thread(i32* %64, %struct.TYPE_18__* %65, %struct.TYPE_19__* %66, i64 %69)
  store i64 %70, i64* %5, align 8
  %71 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @ngx_log_debug1(i32 %71, i32 %76, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @NGX_AGAIN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %17
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_21__* %83, i32* %84, %struct.TYPE_18__* %85, %struct.TYPE_19__* %86, i32 %87)
  store i64 %88, i64* %2, align 8
  br label %115

89:                                               ; preds = %17
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @NGX_DONE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = load i64, i64* @NGX_DONE, align 8
  %96 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_18__* %94, i64 %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_21__* %97, i32* %98, %struct.TYPE_18__* %99, %struct.TYPE_19__* %100, i32 %101)
  store i64 %102, i64* %2, align 8
  br label %115

103:                                              ; preds = %89
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_18__* %109, i64 %110)
  %112 = load i64, i64* @NGX_DONE, align 8
  store i64 %112, i64* %2, align 8
  br label %115

113:                                              ; preds = %103
  %114 = load i64, i64* %5, align 8
  store i64 %114, i64* %2, align 8
  br label %115

115:                                              ; preds = %113, %108, %93, %82, %15
  %116 = load i64, i64* %2, align 8
  ret i64 %116
}

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_http_lua_handle_subreq_responses(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_pfree(i32, i32*) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @ngx_http_lua_run_thread(i32*, %struct.TYPE_18__*, %struct.TYPE_19__*, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_21__*, i32*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
