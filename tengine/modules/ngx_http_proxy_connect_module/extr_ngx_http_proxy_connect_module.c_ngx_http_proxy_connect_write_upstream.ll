; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_write_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_write_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_23__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"proxy_connect: upstream write handler\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"proxy_connect: upstream %s timed out (peer:%V)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@NGX_HTTP_GATEWAY_TIME_OUT = common dso_local global i32 0, align 4
@ngx_http_proxy_connect_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_BAD_GATEWAY = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*)* @ngx_http_proxy_connect_write_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_proxy_connect_write_upstream(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %5, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ngx_log_debug0(i32 %11, i32 %16, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load i32, i32* @NGX_LOG_ERR, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ngx_log_error(i32 %25, i32 %28, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = load i32, i32* @NGX_HTTP_GATEWAY_TIME_OUT, align 4
  %43 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_21__* %40, %struct.TYPE_22__* %41, i32 %42)
  br label %103

44:                                               ; preds = %2
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %46 = load i32, i32* @ngx_http_proxy_connect_module, align 4
  %47 = call %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_21__* %45, i32 %46)
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %6, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = call i32 @ngx_del_timer(%struct.TYPE_18__* %57)
  br label %59

59:                                               ; preds = %54, %44
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = call i64 @ngx_http_proxy_connect_test_connect(%struct.TYPE_24__* %65)
  %67 = load i64, i64* @NGX_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %73 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_21__* %70, %struct.TYPE_22__* %71, i32 %72)
  br label %103

74:                                               ; preds = %64, %59
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %81 = call i32 @ngx_http_proxy_connect_send_connection_established(%struct.TYPE_21__* %80)
  br label %103

82:                                               ; preds = %74
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = call i64 @ngx_handle_write_event(%struct.TYPE_18__* %90, i32 0)
  %92 = load i64, i64* @NGX_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %98 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_21__* %95, %struct.TYPE_22__* %96, i32 %97)
  br label %103

99:                                               ; preds = %87
  br label %103

100:                                              ; preds = %82
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %102 = call i32 @ngx_http_proxy_connect_tunnel(%struct.TYPE_21__* %101, i32 0, i32 1)
  br label %103

103:                                              ; preds = %100, %99, %94, %79, %69, %24
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_http_proxy_connect_test_connect(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_http_proxy_connect_send_connection_established(%struct.TYPE_21__*) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_tunnel(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
