; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_read_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_read_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__, %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32, i32*, i32*, i32*, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"proxy_connect: upstream read handler\00", align 1
@ngx_http_proxy_connect_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"proxy_connect: upstream read timed out (peer:%V)\00", align 1
@NGX_HTTP_GATEWAY_TIME_OUT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_BAD_GATEWAY = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*)* @ngx_http_proxy_connect_read_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_proxy_connect_read_upstream(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %7 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ngx_log_debug0(i32 %7, i32 %12, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = load i32, i32* @ngx_http_proxy_connect_module, align 4
  %16 = call %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_23__* %14, i32 %15)
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %6, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %5, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load i32, i32* @NGX_LOG_ERR, align 4
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ngx_log_error(i32 %28, i32 %31, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = load i32, i32* @NGX_HTTP_GATEWAY_TIME_OUT, align 4
  %40 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_23__* %37, %struct.TYPE_24__* %38, i32 %39)
  br label %138

41:                                               ; preds = %2
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %48 = call i64 @ngx_http_proxy_connect_test_connect(%struct.TYPE_26__* %47)
  %49 = load i64, i64* @NGX_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %55 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_23__* %52, %struct.TYPE_24__* %53, i32 %54)
  br label %138

56:                                               ; preds = %46, %41
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %117

62:                                               ; preds = %56
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @ngx_palloc(i32 %65, i32 %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  store i32* %71, i32** %74, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %62
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %83 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %84 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_23__* %81, %struct.TYPE_24__* %82, i32 %83)
  br label %138

85:                                               ; preds = %62
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 4
  store i32* %89, i32** %92, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 3
  store i32* %96, i32** %99, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  store i32* %110, i32** %113, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %85, %56
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %117
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = call i64 @ngx_handle_read_event(%struct.TYPE_18__* %125, i32 0)
  %127 = load i64, i64* @NGX_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %132 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %133 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_23__* %130, %struct.TYPE_24__* %131, i32 %132)
  br label %138

134:                                              ; preds = %122
  br label %138

135:                                              ; preds = %117
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %137 = call i32 @ngx_http_proxy_connect_tunnel(%struct.TYPE_23__* %136, i32 1, i32 0)
  br label %138

138:                                              ; preds = %135, %134, %129, %80, %51, %27
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_http_proxy_connect_test_connect(%struct.TYPE_26__*) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_tunnel(%struct.TYPE_23__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
