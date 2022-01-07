; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_uwsgi_module.c_ngx_http_uwsgi_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_uwsgi_module.c_ngx_http_uwsgi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_22__, i32, i64, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_21__*, %struct.TYPE_19__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_21__, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_http_uwsgi_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"uwsgi://\00", align 1
@ngx_http_uwsgi_create_request = common dso_local global i32 0, align 4
@ngx_http_uwsgi_reinit_request = common dso_local global i32 0, align 4
@ngx_http_uwsgi_process_status_line = common dso_local global i32 0, align 4
@ngx_http_uwsgi_abort_request = common dso_local global i32 0, align 4
@ngx_http_uwsgi_finalize_request = common dso_local global i32 0, align 4
@ngx_event_pipe_copy_input_filter = common dso_local global i32 0, align 4
@ngx_http_upstream_init = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@ngx_http_uwsgi_create_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*)* @ngx_http_uwsgi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_uwsgi_handler(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %9 = call i64 @ngx_http_upstream_create(%struct.TYPE_26__* %8)
  %10 = load i64, i64* @NGX_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %13, i64* %2, align 8
  br label %138

14:                                               ; preds = %1
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @ngx_pcalloc(i32 %17, i32 4)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %138

24:                                               ; preds = %14
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @ngx_http_uwsgi_module, align 4
  %28 = call i32 @ngx_http_set_ctx(%struct.TYPE_26__* %25, i32* %26, i32 %27)
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %30 = load i32, i32* @ngx_http_uwsgi_module, align 4
  %31 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_26__* %29, i32 %30)
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %7, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  store %struct.TYPE_25__* %34, %struct.TYPE_25__** %6, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 12
  %42 = call i32 @ngx_str_set(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %52

43:                                               ; preds = %24
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %46 = call i64 @ngx_http_uwsgi_eval(%struct.TYPE_26__* %44, %struct.TYPE_24__* %45)
  %47 = load i64, i64* @NGX_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %50, i64* %2, align 8
  br label %138

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 11
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  store i64 ptrtoint (i32* @ngx_http_uwsgi_module to i64), i64* %55, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 10
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %59, align 8
  %60 = load i32, i32* @ngx_http_uwsgi_create_request, align 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ngx_http_uwsgi_reinit_request, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ngx_http_uwsgi_process_status_line, align 4
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ngx_http_uwsgi_abort_request, align 4
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @ngx_http_uwsgi_finalize_request, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @ngx_pcalloc(i32 %85, i32 4)
  %87 = bitcast i8* %86 to %struct.TYPE_20__*
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %89, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = icmp eq %struct.TYPE_20__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %52
  %95 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %95, i64* %2, align 8
  br label %138

96:                                               ; preds = %52
  %97 = load i32, i32* @ngx_event_pipe_copy_input_filter, align 4
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  store %struct.TYPE_26__* %102, %struct.TYPE_26__** %106, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %96
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %118, %112, %96
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %129 = load i32, i32* @ngx_http_upstream_init, align 4
  %130 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_26__* %128, i32 %129)
  store i64 %130, i64* %4, align 8
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i64, i64* %4, align 8
  store i64 %135, i64* %2, align 8
  br label %138

136:                                              ; preds = %127
  %137 = load i64, i64* @NGX_DONE, align 8
  store i64 %137, i64* %2, align 8
  br label %138

138:                                              ; preds = %136, %134, %94, %49, %22, %12
  %139 = load i64, i64* %2, align 8
  ret i64 %139
}

declare dso_local i64 @ngx_http_upstream_create(%struct.TYPE_26__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i64 @ngx_http_uwsgi_eval(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
