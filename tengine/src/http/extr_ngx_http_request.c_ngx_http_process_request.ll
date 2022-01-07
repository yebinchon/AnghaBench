; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_process_request.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, %struct.TYPE_14__*, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_13__ = type { i8*, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@ngx_http_request_handler = common dso_local global i8* null, align 8
@ngx_http_block_reading = common dso_local global i32 0, align 4
@NGX_HTTPS_CERT_ERROR = common dso_local global i32 0, align 4
@NGX_HTTPS_NO_CERT = common dso_local global i32 0, align 4
@NGX_HTTP_TO_HTTPS = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i64 0, align 8
@ngx_http_ssl_module = common dso_local global i32 0, align 4
@ngx_stat_reading = common dso_local global i32 0, align 4
@ngx_stat_writing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_process_request(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %6, %struct.TYPE_19__** %3, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = call i32 @ngx_del_timer(%struct.TYPE_13__* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i8*, i8** @ngx_http_request_handler, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i8* %19, i8** %23, align 8
  %24 = load i8*, i8** @ngx_http_request_handler, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* @ngx_http_block_reading, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %33 = call i32 @ngx_http_handler(%struct.TYPE_18__* %32)
  ret void
}

declare dso_local i32 @ngx_del_timer(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_http_handler(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
