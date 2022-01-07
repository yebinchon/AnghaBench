; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_resolve_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_resolve_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_24__*, i64, i32, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i64, i32*, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"proxy_connect: resolve handler\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"proxy_connect: %V could not be resolved (%i: %s)\00", align 1
@NGX_HTTP_BAD_GATEWAY = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_http_proxy_connect_resolve_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_proxy_connect_resolve_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %6, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %5, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %3, align 8
  %19 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ngx_log_debug0(i32 %19, i32 %24, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %1
  %31 = load i32, i32* @NGX_LOG_ERR, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ngx_resolver_strerror(i64 %44)
  %46 = call i32 @ngx_log_error(i32 %31, i32 %36, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %38, i64 %41, i32 %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %50 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_21__* %47, %struct.TYPE_22__* %48, i32 %49)
  br label %80

51:                                               ; preds = %1
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %58, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  store %struct.TYPE_24__* %59, %struct.TYPE_24__** %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = call i64 @ngx_http_proxy_connect_create_peer(%struct.TYPE_21__* %62, %struct.TYPE_20__* %63)
  %65 = load i64, i64* @NGX_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %70 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %71 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_21__* %68, %struct.TYPE_22__* %69, i32 %70)
  br label %80

72:                                               ; preds = %51
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %74 = call i32 @ngx_resolve_name_done(%struct.TYPE_19__* %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = call i32 @ngx_http_proxy_connect_process_connect(%struct.TYPE_21__* %77, %struct.TYPE_22__* %78)
  br label %80

80:                                               ; preds = %72, %67, %30
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %82 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_23__* %81)
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i64, i32) #1

declare dso_local i32 @ngx_resolver_strerror(i64) #1

declare dso_local i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_proxy_connect_create_peer(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ngx_resolve_name_done(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_http_proxy_connect_process_connect(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
