; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headerfilterby.c_ngx_http_lua_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headerfilterby.c_ngx_http_lua_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_18__*)*, i64 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"lua header filter for user lua code, uri \22%V\22\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"no header filter handler found\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ctx = %p\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_request_cleanup_handler = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_HEADER_FILTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"calling header filter handler\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*)* @ngx_http_lua_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_header_filter(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = call i32 @ngx_log_debug1(i32 %9, i32 %14, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = load i32, i32* @ngx_http_lua_module, align 4
  %20 = call %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %18, i32 %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %4, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %30, align 8
  %32 = icmp eq i64 (%struct.TYPE_18__*)* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = call i64 @ngx_http_next_header_filter(%struct.TYPE_18__* %35)
  store i64 %36, i64* %2, align 8
  br label %110

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = load i32, i32* @ngx_http_lua_module, align 4
  %40 = call %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %38, i32 %39)
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %5, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %41)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = icmp eq %struct.TYPE_20__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = call %struct.TYPE_20__* @ngx_http_lua_create_ctx(%struct.TYPE_18__* %46)
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %5, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = icmp eq %struct.TYPE_20__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @NGX_ERROR, align 8
  store i64 %51, i64* %2, align 8
  br label %110

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = call %struct.TYPE_21__* @ngx_http_cleanup_add(%struct.TYPE_18__* %59, i32 0)
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %7, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = icmp eq %struct.TYPE_21__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i64, i64* @NGX_ERROR, align 8
  store i64 %64, i64* %2, align 8
  br label %110

65:                                               ; preds = %58
  %66 = load i32, i32* @ngx_http_lua_request_cleanup_handler, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  br label %76

76:                                               ; preds = %65, %53
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_HEADER_FILTER, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = call i64 %86(%struct.TYPE_18__* %87)
  store i64 %88, i64* %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @NGX_DECLINED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %76
  %96 = load i64, i64* @NGX_OK, align 8
  store i64 %96, i64* %2, align 8
  br label %110

97:                                               ; preds = %76
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @NGX_AGAIN, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @NGX_ERROR, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %2, align 8
  br label %110

107:                                              ; preds = %101
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %109 = call i64 @ngx_http_next_header_filter(%struct.TYPE_18__* %108)
  store i64 %109, i64* %2, align 8
  br label %110

110:                                              ; preds = %107, %105, %95, %63, %50, %33
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i64 @ngx_http_next_header_filter(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_http_lua_create_ctx(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_cleanup_add(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
