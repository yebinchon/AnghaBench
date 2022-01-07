; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_memcached_module.c_ngx_http_memcached_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_memcached_module.c_ngx_http_memcached_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, i32, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_17__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32 }

@NGX_HTTP_GET = common dso_local global i32 0, align 4
@NGX_HTTP_HEAD = common dso_local global i32 0, align 4
@NGX_HTTP_NOT_ALLOWED = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"memcached://\00", align 1
@ngx_http_memcached_module = common dso_local global i32 0, align 4
@ngx_http_memcached_create_request = common dso_local global i32 0, align 4
@ngx_http_memcached_reinit_request = common dso_local global i32 0, align 4
@ngx_http_memcached_process_header = common dso_local global i32 0, align 4
@ngx_http_memcached_abort_request = common dso_local global i32 0, align 4
@ngx_http_memcached_finalize_request = common dso_local global i32 0, align 4
@ngx_http_memcached_filter_init = common dso_local global i32 0, align 4
@ngx_http_memcached_filter = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*)* @ngx_http_memcached_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_memcached_handler(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NGX_HTTP_GET, align 4
  %12 = load i32, i32* @NGX_HTTP_HEAD, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @NGX_HTTP_NOT_ALLOWED, align 8
  store i64 %17, i64* %2, align 8
  br label %106

18:                                               ; preds = %1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = call i64 @ngx_http_discard_request_body(%struct.TYPE_20__* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @NGX_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %106

26:                                               ; preds = %18
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = call i64 @ngx_http_set_content_type(%struct.TYPE_20__* %27)
  %29 = load i64, i64* @NGX_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %32, i64* %2, align 8
  br label %106

33:                                               ; preds = %26
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = call i64 @ngx_http_upstream_create(%struct.TYPE_20__* %34)
  %36 = load i64, i64* @NGX_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %39, i64* %2, align 8
  br label %106

40:                                               ; preds = %33
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %5, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 10
  %46 = call i32 @ngx_str_set(i32* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store i64 ptrtoint (i32* @ngx_http_memcached_module to i64), i64* %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = load i32, i32* @ngx_http_memcached_module, align 4
  %52 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__* %50, i32 %51)
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %7, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 8
  store i32* %54, i32** %56, align 8
  %57 = load i32, i32* @ngx_http_memcached_create_request, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @ngx_http_memcached_reinit_request, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ngx_http_memcached_process_header, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ngx_http_memcached_abort_request, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ngx_http_memcached_finalize_request, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.TYPE_22__* @ngx_palloc(i32 %74, i32 8)
  store %struct.TYPE_22__* %75, %struct.TYPE_22__** %6, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = icmp eq %struct.TYPE_22__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %40
  %79 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %79, i64* %2, align 8
  br label %106

80:                                               ; preds = %40
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  store %struct.TYPE_20__* %81, %struct.TYPE_20__** %83, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = load i32, i32* @ngx_http_memcached_module, align 4
  %87 = call i32 @ngx_http_set_ctx(%struct.TYPE_20__* %84, %struct.TYPE_22__* %85, i32 %86)
  %88 = load i32, i32* @ngx_http_memcached_filter_init, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @ngx_http_memcached_filter, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  store %struct.TYPE_22__* %94, %struct.TYPE_22__** %96, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = call i32 @ngx_http_upstream_init(%struct.TYPE_20__* %103)
  %105 = load i64, i64* @NGX_DONE, align 8
  store i64 %105, i64* %2, align 8
  br label %106

106:                                              ; preds = %80, %78, %38, %31, %24, %16
  %107 = load i64, i64* %2, align 8
  ret i64 %107
}

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_20__*) #1

declare dso_local i64 @ngx_http_set_content_type(%struct.TYPE_20__*) #1

declare dso_local i64 @ngx_http_upstream_create(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_20__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_http_upstream_init(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
