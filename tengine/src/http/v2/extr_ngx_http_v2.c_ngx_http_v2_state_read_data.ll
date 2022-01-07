; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_read_data.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"skipping http2 DATA frame\00", align 1
@NGX_HTTP_V2_END_STREAM_FLAG = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"http2 preread buffer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_23__*, i32*, i32*)* @ngx_http_v2_state_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_read_data(%struct.TYPE_23__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %12, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %19 = icmp eq %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__* %21, i32* %22, i32* %23)
  store i32* %24, i32** %4, align 8
  br label %191

25:                                               ; preds = %3
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ngx_log_debug0(i32 %31, i32 %36, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__* %38, i32* %39, i32* %40)
  store i32* %41, i32** %4, align 8
  br label %191

42:                                               ; preds = %25
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %49, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %42
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NGX_HTTP_V2_END_STREAM_FLAG, align 4
  %65 = and i32 %63, %64
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %55, %42
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %70, align 8
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %11, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %68
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ngx_http_v2_process_request_body(%struct.TYPE_24__* %77, i32* %78, i64 %79, i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @NGX_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @ngx_http_finalize_request(%struct.TYPE_24__* %90, i64 %91)
  br label %93

93:                                               ; preds = %87, %76
  br label %155

94:                                               ; preds = %68
  %95 = load i64, i64* %8, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %154

97:                                               ; preds = %94
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %99, align 8
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %9, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %102 = icmp eq %struct.TYPE_25__* %101, null
  br i1 %102, label %103, label %124

103:                                              ; preds = %97
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %105 = load i32, i32* @ngx_http_v2_module, align 4
  %106 = call %struct.TYPE_22__* @ngx_http_get_module_srv_conf(%struct.TYPE_24__* %104, i32 %105)
  store %struct.TYPE_22__* %106, %struct.TYPE_22__** %13, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.TYPE_25__* @ngx_create_temp_buf(i32 %109, i32 %112)
  store %struct.TYPE_25__* %113, %struct.TYPE_25__** %9, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %115 = icmp eq %struct.TYPE_25__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %103
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %118 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %119 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_23__* %117, i32 %118)
  store i32* %119, i32** %4, align 8
  br label %191

120:                                              ; preds = %103
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  store %struct.TYPE_25__* %121, %struct.TYPE_25__** %123, align 8
  br label %124

124:                                              ; preds = %120, %97
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  %133 = icmp ugt i64 %125, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %124
  %135 = load i32, i32* @NGX_LOG_ALERT, align 4
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ngx_log_error(i32 %135, i32 %140, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %144 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_23__* %142, i32 %143)
  store i32* %144, i32** %4, align 8
  br label %191

145:                                              ; preds = %124
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = load i64, i64* %8, align 8
  %151 = call i64 @ngx_cpymem(i64 %148, i32* %149, i64 %150)
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %145, %94
  br label %155

155:                                              ; preds = %154, %93
  %156 = load i64, i64* %8, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %156
  store i32* %158, i32** %6, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %163, %159
  store i64 %164, i64* %162, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %155
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = call i32* @ngx_http_v2_state_save(%struct.TYPE_23__* %171, i32* %172, i32* %173, i32* (%struct.TYPE_23__*, i32*, i32*)* @ngx_http_v2_state_read_data)
  store i32* %174, i32** %4, align 8
  br label %191

175:                                              ; preds = %155
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = call i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__* %182, i32* %183, i32* %184)
  store i32* %185, i32** %4, align 8
  br label %191

186:                                              ; preds = %175
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = load i32*, i32** %7, align 8
  %190 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_23__* %187, i32* %188, i32* %189)
  store i32* %190, i32** %4, align 8
  br label %191

191:                                              ; preds = %186, %181, %170, %134, %116, %30, %20
  %192 = load i32*, i32** %4, align 8
  ret i32* %192
}

declare dso_local i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_v2_process_request_body(%struct.TYPE_24__*, i32*, i64, i32) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_24__*, i64) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_srv_conf(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_create_temp_buf(i32, i32) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_cpymem(i64, i32*, i64) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_23__*, i32*, i32*, i32* (%struct.TYPE_23__*, i32*, i32*)*) #1

declare dso_local i32* @ngx_http_v2_state_complete(%struct.TYPE_23__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
