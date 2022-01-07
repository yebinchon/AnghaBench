; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_finalize_request.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_finalize_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_11__*, i32*, i32, i32 (%struct.TYPE_16__*, i32, i32)* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"proxy_connect: finalize upstream request: %i\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"proxy_connect: close upstream connection: %d\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"sending to client\00", align 1
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*, i64)* @ngx_http_proxy_connect_finalize_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_proxy_connect_finalize_request(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @ngx_log_debug1(i32 %7, %struct.TYPE_17__* %12, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ngx_resolve_name_done(i32* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %28, %21, %3
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = load i32 (%struct.TYPE_16__*, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_16__*, i32, i32)* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 3
  %55 = load i32 (%struct.TYPE_16__*, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %55(%struct.TYPE_16__* %57, i32 %61, i32 0)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %51, %45, %39
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  %73 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ngx_log_debug1(i32 %73, %struct.TYPE_17__* %78, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %72
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ngx_destroy_pool(i64 %99)
  br label %101

101:                                              ; preds = %93, %72
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = call i32 @ngx_close_connection(%struct.TYPE_11__* %105)
  br label %107

107:                                              ; preds = %101, %66
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %110, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @NGX_DECLINED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %148

115:                                              ; preds = %107
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %121, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %115
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125, %115
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @ngx_http_finalize_request(%struct.TYPE_14__* %130, i64 %131)
  br label %148

133:                                              ; preds = %125
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i64, i64* @NGX_ERROR, align 8
  store i64 %143, i64* %6, align 8
  br label %144

144:                                              ; preds = %142, %138, %133
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = load i64, i64* %6, align 8
  %147 = call i32 @ngx_http_finalize_request(%struct.TYPE_14__* %145, i64 %146)
  br label %148

148:                                              ; preds = %144, %129, %114
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_17__*, i32, i8*, i64) #1

declare dso_local i32 @ngx_resolve_name_done(i32*) #1

declare dso_local i32 @ngx_destroy_pool(i64) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_11__*) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
