; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_send_connection_established.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_send_connection_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 (%struct.TYPE_27__*)*, %struct.TYPE_25__*, %struct.TYPE_23__, %struct.TYPE_31__* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_31__ = type { i64 (%struct.TYPE_31__*, i64, i64)*, %struct.TYPE_24__*, %struct.TYPE_26__*, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, %struct.TYPE_32__, %struct.TYPE_28__* }

@ngx_http_proxy_connect_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"proxy_connect: send 200 connection established\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"proxy_connect: sent 200 connection established\00", align 1
@ngx_http_proxy_connect_write_downstream = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_proxy_connect_send_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @ngx_http_proxy_connect_send_connection_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_proxy_connect_send_connection_established(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %10 = load i32, i32* @ngx_http_proxy_connect_module, align 4
  %11 = call %struct.TYPE_29__* @ngx_http_get_module_ctx(%struct.TYPE_27__* %9, i32 %10)
  store %struct.TYPE_29__* %11, %struct.TYPE_29__** %8, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_31__* %14, %struct.TYPE_31__** %5, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ngx_log_debug0(i32 %15, i32 %20, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %23 = load i32, i32* @ngx_http_core_module, align 4
  %24 = call %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__* %22, i32 %23)
  store %struct.TYPE_30__* %24, %struct.TYPE_30__** %6, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %7, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 3
  store %struct.TYPE_32__* %29, %struct.TYPE_32__** %4, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %133, %1
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_31__*, i64, i64)*, i64 (%struct.TYPE_31__*, i64, i64)** %36, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i64 %37(%struct.TYPE_31__* %38, i64 %41, i64 %48)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %134

52:                                               ; preds = %34
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  store i32 200, i32* %55, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %52
  %69 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ngx_log_debug0(i32 %69, i32 %72, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %68
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %82, align 8
  %84 = call i32 @ngx_del_timer(%struct.TYPE_24__* %83)
  br label %85

85:                                               ; preds = %80, %68
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @ngx_http_proxy_connect_write_downstream, align 4
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 1
  store i32 (%struct.TYPE_27__*)* @ngx_http_proxy_connect_read_downstream, i32 (%struct.TYPE_27__*)** %92, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ngx_handle_write_event(%struct.TYPE_24__* %95, i32 %98)
  %100 = load i64, i64* @NGX_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %85
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %105 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %106 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_27__* %103, %struct.TYPE_28__* %104, i64 %105)
  br label %170

107:                                              ; preds = %85
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %112, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %107
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119, %107
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %128, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %131 = call i32 %129(%struct.TYPE_27__* %130)
  br label %170

132:                                              ; preds = %119
  br label %170

133:                                              ; preds = %52
  br label %34

134:                                              ; preds = %34
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %3, align 8
  %137 = load i64, i64* @NGX_ERROR, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %142 = load i64, i64* @NGX_ERROR, align 8
  %143 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_27__* %140, %struct.TYPE_28__* %141, i64 %142)
  br label %170

144:                                              ; preds = %135
  %145 = load i32, i32* @ngx_http_proxy_connect_send_handler, align 4
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %149, align 8
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ngx_add_timer(%struct.TYPE_24__* %150, i32 %153)
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %156, align 8
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @ngx_handle_write_event(%struct.TYPE_24__* %157, i32 %160)
  %162 = load i64, i64* @NGX_OK, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %144
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %167 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %168 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_27__* %165, %struct.TYPE_28__* %166, i64 %167)
  br label %170

169:                                              ; preds = %144
  br label %170

170:                                              ; preds = %169, %164, %139, %132, %126, %102
  ret void
}

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_ctx(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_http_proxy_connect_read_downstream(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_27__*, %struct.TYPE_28__*, i64) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
