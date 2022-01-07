; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_settings_params.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_settings_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@NGX_HTTP_V2_SETTINGS_PARAM_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"http2 setting %ui:%ui\00", align 1
@NGX_HTTP_V2_MAX_WINDOW = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"client sent SETTINGS frame with incorrect INITIAL_WINDOW_SIZE value %ui\00", align 1
@NGX_HTTP_V2_FLOW_CTRL_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_V2_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_V2_DEFAULT_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"client sent SETTINGS frame with incorrect MAX_FRAME_SIZE value %ui\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"client sent SETTINGS frame with incorrect ENABLE_PUSH value %ui\00", align 1
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_SETTINGS_ACK_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_V2_SETTINGS_FRAME = common dso_local global i32 0, align 4
@NGX_HTTP_V2_ACK_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_19__*, i32*, i32*)* @ngx_http_v2_state_settings_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_settings_params(%struct.TYPE_19__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %144, %3
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %149

19:                                               ; preds = %13
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = load i32, i32* @NGX_HTTP_V2_SETTINGS_PARAM_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @ngx_http_v2_state_save(%struct.TYPE_19__* %30, i32* %31, i32* %32, i32* (%struct.TYPE_19__*, i32*, i32*)* @ngx_http_v2_state_settings_params)
  store i32* %33, i32** %4, align 8
  br label %188

34:                                               ; preds = %19
  %35 = load i32, i32* @NGX_HTTP_V2_SETTINGS_PARAM_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, %36
  store i64 %41, i64* %39, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @ngx_http_v2_parse_uint16(i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = call i32 @ngx_http_v2_parse_uint32(i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ngx_log_debug2(i32 %47, i32 %52, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %143 [
    i32 130, label %57
    i32 129, label %79
    i32 132, label %103
    i32 128, label %125
    i32 131, label %140
  ]

57:                                               ; preds = %34
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @NGX_HTTP_V2_MAX_WINDOW, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* @NGX_LOG_INFO, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @ngx_log_error(i32 %62, i32 %67, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = load i32, i32* @NGX_HTTP_V2_FLOW_CTRL_ERROR, align 4
  %72 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %70, i32 %71)
  store i32* %72, i32** %4, align 8
  br label %188

73:                                               ; preds = %57
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %8, align 4
  br label %144

79:                                               ; preds = %34
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @NGX_HTTP_V2_MAX_FRAME_SIZE, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @NGX_HTTP_V2_DEFAULT_FRAME_SIZE, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @NGX_LOG_INFO, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @ngx_log_error(i32 %88, i32 %93, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %97 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %98 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %96, i32 %97)
  store i32* %98, i32** %4, align 8
  br label %188

99:                                               ; preds = %83
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %144

103:                                              ; preds = %34
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load i32, i32* @NGX_LOG_INFO, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @ngx_log_error(i32 %107, i32 %112, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %117 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %115, i32 %116)
  store i32* %117, i32** %4, align 8
  br label %188

118:                                              ; preds = %103
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %144

125:                                              ; preds = %34
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ngx_http_v2_module, align 4
  %132 = call %struct.TYPE_18__* @ngx_http_get_module_srv_conf(i32 %130, i32 %131)
  store %struct.TYPE_18__* %132, %struct.TYPE_18__** %11, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ngx_min(i32 %133, i32 %136)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  br label %144

140:                                              ; preds = %34
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  br label %144

143:                                              ; preds = %34
  br label %144

144:                                              ; preds = %143, %140, %125, %118, %99, %73
  %145 = load i32, i32* @NGX_HTTP_V2_SETTINGS_PARAM_SIZE, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %6, align 8
  br label %13

149:                                              ; preds = %13
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %151 = load i32, i32* @NGX_HTTP_V2_SETTINGS_ACK_SIZE, align 4
  %152 = load i32, i32* @NGX_HTTP_V2_SETTINGS_FRAME, align 4
  %153 = load i32, i32* @NGX_HTTP_V2_ACK_FLAG, align 4
  %154 = call i32* @ngx_http_v2_get_frame(%struct.TYPE_19__* %150, i32 %151, i32 %152, i32 %153, i32 0)
  store i32* %154, i32** %12, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %159 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %160 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %158, i32 %159)
  store i32* %160, i32** %4, align 8
  br label %188

161:                                              ; preds = %149
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = call i32 @ngx_http_v2_queue_ordered_frame(%struct.TYPE_19__* %162, i32* %163)
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %161
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i64 @ngx_http_v2_adjust_windows(%struct.TYPE_19__* %173, i32 %174)
  %176 = load i64, i64* @NGX_OK, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %167
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %181 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %179, i32 %180)
  store i32* %181, i32** %4, align 8
  br label %188

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182, %161
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_19__* %184, i32* %185, i32* %186)
  store i32* %187, i32** %4, align 8
  br label %188

188:                                              ; preds = %183, %178, %157, %106, %87, %61, %29
  %189 = load i32*, i32** %4, align 8
  ret i32* %189
}

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_19__*, i32*, i32*, i32* (%struct.TYPE_19__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_http_v2_parse_uint16(i32*) #1

declare dso_local i32 @ngx_http_v2_parse_uint32(i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local i32 @ngx_min(i32, i32) #1

declare dso_local i32* @ngx_http_v2_get_frame(%struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_http_v2_queue_ordered_frame(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @ngx_http_v2_adjust_windows(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_complete(%struct.TYPE_19__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
