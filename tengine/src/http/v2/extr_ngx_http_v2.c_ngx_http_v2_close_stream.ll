; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_close_stream.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_close_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_15__*, i64, i32*, %struct.TYPE_19__*, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, i64, i64, i64, %struct.TYPE_22__*, %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_16__ = type { i64, i32*, %struct.TYPE_18__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"http2 close stream %ui, queued %ui, processing %ui, pushing %ui\00", align 1
@ngx_http_v2_close_stream_handler = common dso_local global i32 0, align 4
@ngx_http_empty_handler = common dso_local global i32 0, align 4
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_V2_MAX_WINDOW = common dso_local global i64 0, align 8
@ngx_http_v2_handle_connection_handler = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@NGX_HTTP_V2_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_v2_close_stream(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 9
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %10, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %9, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ngx_log_debug4(i32 %17, i32 %22, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i64 %31, i64 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %8, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %2
  %46 = load i32, i32* @ngx_http_v2_close_stream_handler, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* @ngx_http_empty_handler, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  br label %276

56:                                               ; preds = %2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %129, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %129, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  br label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = call i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_20__* %74, i32 %77, i32 %87)
  %89 = load i64, i64* @NGX_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %86
  br label %128

97:                                               ; preds = %68
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NGX_HTTP_V2_MAX_WINDOW, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* @NGX_HTTP_V2_MAX_WINDOW, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = call i64 @ngx_http_v2_send_window_update(%struct.TYPE_20__* %109, i32 %112, i64 %117)
  %119 = load i64, i64* @NGX_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %121, %108, %102
  br label %127

127:                                              ; preds = %126, %97
  br label %128

128:                                              ; preds = %127, %96
  br label %129

129:                                              ; preds = %128, %61, %56
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = icmp eq %struct.TYPE_18__* %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %139, align 8
  br label %140

140:                                              ; preds = %136, %129
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = srem i32 %145, 2
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %6, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 2
  store i32* null, i32** %150, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = call i32 @ngx_queue_insert_tail(i32* %152, i32* %154)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  store i32* %162, i32** %5, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = sub nsw i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @ngx_http_free_request(%struct.TYPE_15__* %174, i32 %175)
  %177 = load i32*, i32** %5, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %177, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %140
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 @ngx_destroy_pool(i32* %184)
  br label %190

186:                                              ; preds = %140
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %186, %183
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %192, align 8
  store %struct.TYPE_21__* %193, %struct.TYPE_21__** %7, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %200 = call i32 @ngx_del_timer(%struct.TYPE_21__* %199)
  br label %201

201:                                              ; preds = %198, %190
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %208 = call i32 @ngx_delete_posted_event(%struct.TYPE_21__* %207)
  br label %209

209:                                              ; preds = %206, %201
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  store %struct.TYPE_21__* %212, %struct.TYPE_21__** %7, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %219 = call i32 @ngx_del_timer(%struct.TYPE_21__* %218)
  br label %220

220:                                              ; preds = %217, %209
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %227 = call i32 @ngx_delete_posted_event(%struct.TYPE_21__* %226)
  br label %228

228:                                              ; preds = %225, %220
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %230, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  store %struct.TYPE_22__* %231, %struct.TYPE_22__** %233, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 4
  store %struct.TYPE_22__* %234, %struct.TYPE_22__** %236, align 8
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %228
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, -1
  store i64 %243, i64* %241, align 8
  br label %249

244:                                              ; preds = %228
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, -1
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %244, %239
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %249
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %254
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %259, %254, %249
  br label %276

265:                                              ; preds = %259
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %269, align 8
  store %struct.TYPE_21__* %270, %struct.TYPE_21__** %7, align 8
  %271 = load i32, i32* @ngx_http_v2_handle_connection_handler, align 4
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %275 = call i32 @ngx_post_event(%struct.TYPE_21__* %274, i32* @ngx_posted_events)
  br label %276

276:                                              ; preds = %265, %264, %45
  ret void
}

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @ngx_http_v2_send_window_update(%struct.TYPE_20__*, i32, i64) #1

declare dso_local i32 @ngx_queue_insert_tail(i32*, i32*) #1

declare dso_local i32 @ngx_http_free_request(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_delete_posted_event(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
