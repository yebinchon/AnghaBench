; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_flush_resume_helper.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_flush_resume_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"client aborted\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"lua run thread returned %d\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_flush_resume_helper(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %10, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @lua_pushnil(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @lua_pushliteral(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %6, align 4
  br label %61

35:                                               ; preds = %2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @lua_pushnil(i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @lua_pushliteral(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %6, align 4
  br label %60

53:                                               ; preds = %35
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @lua_pushinteger(i32 %58, i32 1)
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %53, %40
  br label %61

61:                                               ; preds = %60, %22
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_16__* %62, %struct.TYPE_17__* %63)
  store i32* %64, i32** %7, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @ngx_http_lua_run_thread(i32* %68, %struct.TYPE_16__* %69, %struct.TYPE_17__* %70, i32 %71)
  store i64 %72, i64* %8, align 8
  %73 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @ngx_log_debug1(i32 %73, i32 %78, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @NGX_AGAIN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %61
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_18__* %85, i32* %86, %struct.TYPE_16__* %87, %struct.TYPE_17__* %88, i32 %89)
  store i64 %90, i64* %3, align 8
  br label %117

91:                                               ; preds = %61
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @NGX_DONE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = load i64, i64* @NGX_DONE, align 8
  %98 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_16__* %96, i64 %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_18__* %99, i32* %100, %struct.TYPE_16__* %101, %struct.TYPE_17__* %102, i32 %103)
  store i64 %104, i64* %3, align 8
  br label %117

105:                                              ; preds = %91
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_16__* %111, i64 %112)
  %114 = load i64, i64* @NGX_DONE, align 8
  store i64 %114, i64* %3, align 8
  br label %117

115:                                              ; preds = %105
  %116 = load i64, i64* %8, align 8
  store i64 %116, i64* %3, align 8
  br label %117

117:                                              ; preds = %115, %110, %95, %84
  %118 = load i64, i64* %3, align 8
  ret i64 %118
}

declare dso_local i32 @lua_pushnil(i32) #1

declare dso_local i32 @lua_pushliteral(i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i64 @ngx_http_lua_run_thread(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_18__*, i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
