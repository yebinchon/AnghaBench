; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_fastcgi_module.c_ngx_http_fastcgi_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_fastcgi_module.c_ngx_http_fastcgi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__*, i32, i32, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_20__*, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_http_fastcgi_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fastcgi://\00", align 1
@ngx_http_fastcgi_create_request = common dso_local global i32 0, align 4
@ngx_http_fastcgi_reinit_request = common dso_local global i32 0, align 4
@ngx_http_fastcgi_process_header = common dso_local global i32 0, align 4
@ngx_http_fastcgi_abort_request = common dso_local global i32 0, align 4
@ngx_http_fastcgi_finalize_request = common dso_local global i32 0, align 4
@ngx_http_fastcgi_input_filter = common dso_local global i32 0, align 4
@ngx_http_fastcgi_input_filter_init = common dso_local global i32 0, align 4
@ngx_http_fastcgi_non_buffered_filter = common dso_local global i32 0, align 4
@ngx_http_upstream_init = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@ngx_http_fastcgi_create_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*)* @ngx_http_fastcgi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_fastcgi_handler(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = call i64 @ngx_http_upstream_create(%struct.TYPE_22__* %8)
  %10 = load i64, i64* @NGX_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %13, i64* %2, align 8
  br label %140

14:                                               ; preds = %1
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @ngx_pcalloc(i32 %17, i32 4)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %140

24:                                               ; preds = %14
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ngx_http_fastcgi_module, align 4
  %28 = call i32 @ngx_http_set_ctx(%struct.TYPE_22__* %25, i32* %26, i32 %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %30 = load i32, i32* @ngx_http_fastcgi_module, align 4
  %31 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %29, i32 %30)
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %7, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %39 = call i64 @ngx_http_fastcgi_eval(%struct.TYPE_22__* %37, %struct.TYPE_24__* %38)
  %40 = load i64, i64* @NGX_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %43, i64* %2, align 8
  br label %140

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  store %struct.TYPE_21__* %48, %struct.TYPE_21__** %5, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 14
  %51 = call i32 @ngx_str_set(i32* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 13
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i64 ptrtoint (i32* @ngx_http_fastcgi_module to i64), i64* %54, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 12
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %58, align 8
  %59 = load i32, i32* @ngx_http_fastcgi_create_request, align 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ngx_http_fastcgi_reinit_request, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @ngx_http_fastcgi_process_header, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @ngx_http_fastcgi_abort_request, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @ngx_http_fastcgi_finalize_request, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @ngx_pcalloc(i32 %84, i32 4)
  %86 = bitcast i8* %85 to %struct.TYPE_19__*
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %88, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = icmp eq %struct.TYPE_19__* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %45
  %94 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %94, i64* %2, align 8
  br label %140

95:                                               ; preds = %45
  %96 = load i32, i32* @ngx_http_fastcgi_input_filter, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  store %struct.TYPE_22__* %101, %struct.TYPE_22__** %105, align 8
  %106 = load i32, i32* @ngx_http_fastcgi_input_filter_init, align 4
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @ngx_http_fastcgi_non_buffered_filter, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  store %struct.TYPE_22__* %112, %struct.TYPE_22__** %114, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %95
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %120, %95
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %131 = load i32, i32* @ngx_http_upstream_init, align 4
  %132 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_22__* %130, i32 %131)
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i64, i64* %4, align 8
  store i64 %137, i64* %2, align 8
  br label %140

138:                                              ; preds = %129
  %139 = load i64, i64* @NGX_DONE, align 8
  store i64 %139, i64* %2, align 8
  br label %140

140:                                              ; preds = %138, %136, %93, %42, %22, %12
  %141 = load i64, i64* %2, align 8
  ret i64 %141
}

declare dso_local i64 @ngx_http_upstream_create(%struct.TYPE_22__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_fastcgi_eval(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
