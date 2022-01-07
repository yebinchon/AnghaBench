; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headerfilterby.c_ngx_http_lua_header_filter_by_chunk.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headerfilterby.c_ngx_http_lua_header_filter_by_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_traceback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rc == %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to run header_filter_by_lua*: %*s\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"exited: %d, exit code: %d, old exit code: %d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"finalize request with %d\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_header_filter_by_chunk(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = load i32, i32* @ngx_http_lua_module, align 4
  %13 = call %struct.TYPE_11__* @ngx_http_get_module_ctx(%struct.TYPE_10__* %11, i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %10, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = call i32 @ngx_http_lua_header_filter_by_lua_env(i32* %23, %struct.TYPE_10__* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @ngx_http_lua_traceback, align 4
  %28 = call i32 @lua_pushcfunction(i32* %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @lua_insert(i32* %29, i32 1)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_pcall(i32* %31, i32 0, i32 1, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @lua_remove(i32* %33, i32 1)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %22
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @lua_tolstring(i32* %40, i32 -1, i64* %9)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32* bitcast ([15 x i8]* @.str.1 to i32*), i32** %8, align 8
  store i64 14, i64* %9, align 8
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* @NGX_LOG_ERR, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @ngx_log_error(i32 %47, i32 %52, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %53, i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @lua_settop(i32* %56, i32 0)
  %58 = load i32, i32* @NGX_ERROR, align 4
  store i32 %58, i32* %3, align 4
  br label %112

59:                                               ; preds = %22
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %66, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @lua_settop(i32* %69, i32 0)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %59
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %75
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NGX_ERROR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @NGX_ERROR, align 4
  store i32 %88, i32* %3, align 4
  br label %112

89:                                               ; preds = %81
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ngx_http_filter_finalize_request(%struct.TYPE_10__* %94, i32* @ngx_http_lua_module, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @NGX_ERROR, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @NGX_AGAIN, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %89
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %109, i32* %3, align 4
  br label %112

110:                                              ; preds = %75, %59
  %111 = load i32, i32* @NGX_OK, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %108, %106, %87, %46
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_11__* @ngx_http_get_module_ctx(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ngx_http_lua_header_filter_by_lua_env(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @dd(i8*, i32, ...) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @ngx_http_filter_finalize_request(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
