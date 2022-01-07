; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_read_unbuffered_request_body.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_read_unbuffered_request_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_25__*, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_17__*, i32, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_26__*, i32*, i32 }
%struct.TYPE_26__ = type { i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i32 }

@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"http2 negative window update\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_v2_read_unbuffered_request_body(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %8, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %7, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  store i64 %33, i64* %2, align 8
  br label %189

34:                                               ; preds = %23
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %47, i64* %2, align 8
  br label %189

48:                                               ; preds = %39
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %50 = call i64 @ngx_http_v2_filter_request_body(%struct.TYPE_23__* %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @NGX_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %2, align 8
  br label %189

58:                                               ; preds = %48
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load i64, i64* @NGX_OK, align 8
  store i64 %66, i64* %2, align 8
  br label %189

67:                                               ; preds = %58
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %75, i64* %2, align 8
  br label %189

76:                                               ; preds = %67
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %5, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  store i64 %98, i64* %4, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  store %struct.TYPE_22__* %101, %struct.TYPE_22__** %9, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %107 = icmp eq %struct.TYPE_21__* %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %76
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %4, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %108, %76
  %116 = load i64, i64* %4, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ule i64 %116, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load i32, i32* @NGX_LOG_ALERT, align 4
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ngx_log_error(i32 %128, i32 %133, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 8
  %137 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %137, i64* %2, align 8
  br label %189

138:                                              ; preds = %121
  %139 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %139, i64* %2, align 8
  br label %189

140:                                              ; preds = %115
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %4, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub i64 %147, %150
  %152 = call i64 @ngx_http_v2_send_window_update(%struct.TYPE_22__* %141, i32 %146, i64 %151)
  %153 = load i64, i64* @NGX_ERROR, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %140
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 8
  %158 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %158, i64* %2, align 8
  br label %189

159:                                              ; preds = %140
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %161 = call i64 @ngx_http_v2_send_output_queue(%struct.TYPE_22__* %160)
  %162 = load i64, i64* @NGX_ERROR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 8
  %167 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %167, i64* %2, align 8
  br label %189

168:                                              ; preds = %159
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %175 = load i32, i32* @ngx_http_core_module, align 4
  %176 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__* %174, i32 %175)
  store %struct.TYPE_24__* %176, %struct.TYPE_24__** %10, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ngx_add_timer(%struct.TYPE_17__* %179, i32 %182)
  br label %184

184:                                              ; preds = %173, %168
  %185 = load i64, i64* %4, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %188, i64* %2, align 8
  br label %189

189:                                              ; preds = %184, %164, %155, %138, %127, %74, %65, %54, %44, %28
  %190 = load i64, i64* %2, align 8
  ret i64 %190
}

declare dso_local i64 @ngx_http_v2_filter_request_body(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_v2_send_window_update(%struct.TYPE_22__*, i32, i64) #1

declare dso_local i64 @ngx_http_v2_send_output_queue(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
