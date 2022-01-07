; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_capturefilter.c_ngx_http_lua_capture_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_capturefilter.c_ngx_http_lua_capture_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_14__, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"lua capture body filter, uri \22%V\22\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no ctx or no capture %.*s\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"lua body filter skipped because post subrequest already run\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"lua body filter skipped because no parent request found\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"lua capture body filter capturing response body, uri \22%V\22\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"add copy chain eof: %d, sr: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @ngx_http_lua_capture_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_capture_body_filter(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = call i32 @ngx_log_debug1(i32 %10, i32 %15, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @ngx_http_lua_next_body_filter(%struct.TYPE_12__* %22, i32* null)
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = load i32, i32* @ngx_http_lua_module, align 4
  %27 = call %struct.TYPE_13__* @ngx_http_get_module_ctx(%struct.TYPE_12__* %25, i32 %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %8, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ngx_http_lua_next_body_filter(%struct.TYPE_12__* %46, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %129

49:                                               ; preds = %30
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ngx_log_debug0(i32 %55, i32 %60, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @NGX_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %129

63:                                               ; preds = %49
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = icmp eq %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ngx_log_debug0(i32 %69, i32 %74, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @NGX_ERROR, align 4
  store i32 %76, i32* %3, align 4
  br label %129

77:                                               ; preds = %63
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* @ngx_http_lua_module, align 4
  %82 = call %struct.TYPE_13__* @ngx_http_get_module_ctx(%struct.TYPE_12__* %80, i32 %81)
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %9, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = icmp eq %struct.TYPE_13__* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @NGX_ERROR, align 4
  store i32 %86, i32* %3, align 4
  br label %129

87:                                               ; preds = %77
  %88 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = call i32 @ngx_log_debug1(i32 %88, i32 %93, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_14__* %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @ngx_http_lua_add_copy_chain(%struct.TYPE_12__* %97, %struct.TYPE_13__* %98, i32* %100, i32* %101, i32* %7)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @NGX_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %87
  %107 = load i32, i32* @NGX_ERROR, align 4
  store i32 %107, i32* %3, align 4
  br label %129

108:                                              ; preds = %87
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = icmp ne %struct.TYPE_12__* %110, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %109, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %108
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @ngx_http_lua_discard_bufs(i32 %125, i32* %126)
  %128 = load i32, i32* @NGX_OK, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %122, %106, %85, %68, %54, %35, %21
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @ngx_http_lua_next_body_filter(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_http_get_module_ctx(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dd(i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_add_copy_chain(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_discard_bufs(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
