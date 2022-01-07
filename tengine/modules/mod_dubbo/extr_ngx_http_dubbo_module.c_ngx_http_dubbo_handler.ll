; ModuleID = '/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__*, i32, i32, i64, i32*, i32, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_http_dubbo_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dubbo://\00", align 1
@ngx_http_dubbo_create_request = common dso_local global i32 0, align 4
@ngx_http_dubbo_reinit_request = common dso_local global i32 0, align 4
@ngx_http_dubbo_parse_filter = common dso_local global i32 0, align 4
@ngx_http_dubbo_abort_request = common dso_local global i32 0, align 4
@ngx_http_dubbo_finalize_request = common dso_local global i32 0, align 4
@ngx_http_dubbo_filter_init = common dso_local global i32 0, align 4
@ngx_http_dubbo_filter = common dso_local global i32 0, align 4
@NGX_MULTI_UPS_NEED_MULTI = common dso_local global i32 0, align 4
@ngx_http_upstream_init = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*)* @ngx_http_dubbo_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dubbo_handler(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call i64 @ngx_http_upstream_create(%struct.TYPE_18__* %8)
  %10 = load i64, i64* @NGX_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %13, i64* %2, align 8
  br label %98

14:                                               ; preds = %1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @ngx_pcalloc(i32 %17, i32 8)
  %19 = bitcast i8* %18 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %6, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = icmp eq %struct.TYPE_20__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %98

24:                                               ; preds = %14
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %27, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = load i32, i32* @ngx_http_dubbo_module, align 4
  %31 = call i32 @ngx_http_set_ctx(%struct.TYPE_18__* %28, %struct.TYPE_20__* %29, i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %5, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 13
  %37 = call i32 @ngx_str_set(i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 12
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  store i64 ptrtoint (i32* @ngx_http_dubbo_module to i64), i64* %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = load i32, i32* @ngx_http_dubbo_module, align 4
  %43 = call %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %41, i32 %42)
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %7, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 11
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = call i64 @ngx_http_set_content_type(%struct.TYPE_18__* %48)
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %24
  %53 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %53, i64* %2, align 8
  br label %98

54:                                               ; preds = %24
  %55 = load i32, i32* @ngx_http_dubbo_create_request, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @ngx_http_dubbo_reinit_request, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ngx_http_dubbo_parse_filter, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ngx_http_dubbo_abort_request, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @ngx_http_dubbo_finalize_request, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @ngx_http_dubbo_filter_init, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @ngx_http_dubbo_filter, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @NGX_MULTI_UPS_NEED_MULTI, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = load i32, i32* @ngx_http_upstream_init, align 4
  %90 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_18__* %88, i32 %89)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %54
  %95 = load i64, i64* %4, align 8
  store i64 %95, i64* %2, align 8
  br label %98

96:                                               ; preds = %54
  %97 = load i64, i64* @NGX_DONE, align 8
  store i64 %97, i64* %2, align 8
  br label %98

98:                                               ; preds = %96, %94, %52, %22, %12
  %99 = load i64, i64* %2, align 8
  ret i64 %99
}

declare dso_local i64 @ngx_http_upstream_create(%struct.TYPE_18__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_18__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_http_set_content_type(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
