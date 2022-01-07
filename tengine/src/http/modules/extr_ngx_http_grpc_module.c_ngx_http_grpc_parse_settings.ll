; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_parse_settings.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_parse_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, i32, i32, i8*, %struct.TYPE_11__*, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32* }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"upstream sent settings frame with non-zero stream id: %ui\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_V2_ACK_FLAG = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"grpc settings ack\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"upstream sent settings frame with ack flag and non-zero length: %uz\00", align 1
@ngx_http_grpc_st_start = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"upstream sent settings frame with invalid length: %uz\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"upstream sent too many settings frames\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"grpc setting: %ui %ui\00", align 1
@NGX_HTTP_V2_MAX_WINDOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [69 x i8] c"upstream sent settings frame with too large initial window size: %ui\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*)* @ngx_http_grpc_parse_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_grpc_parse_settings(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = ptrtoint i32* %15 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %10, align 8
  br label %41

41:                                               ; preds = %32, %28
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %139

47:                                               ; preds = %41
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32, i32* @NGX_LOG_ERR, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %53, i32 %58, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @NGX_ERROR, align 4
  store i32 %63, i32* %4, align 4
  br label %308

64:                                               ; preds = %47
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NGX_HTTP_V2_ACK_FLAG, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %64
  %72 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ngx_log_debug0(i32 %72, i32 %77, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %71
  %84 = load i32, i32* @NGX_LOG_ERR, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %84, i32 %89, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @NGX_ERROR, align 4
  store i32 %94, i32* %4, align 4
  br label %308

95:                                               ; preds = %71
  %96 = load i8*, i8** @ngx_http_grpc_st_start, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* @NGX_OK, align 4
  store i32 %99, i32* %4, align 4
  br label %308

100:                                              ; preds = %64
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = srem i32 %103, 6
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load i32, i32* @NGX_LOG_ERR, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %107, i32 %112, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @NGX_ERROR, align 4
  store i32 %117, i32* %4, align 4
  br label %308

118:                                              ; preds = %100
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 10
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %118
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = icmp sgt i32 %126, 1000
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load i32, i32* @NGX_LOG_ERR, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %130, i32 %135, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* @NGX_ERROR, align 4
  store i32 %137, i32* %4, align 4
  br label %308

138:                                              ; preds = %123, %118
  br label %139

139:                                              ; preds = %138, %41
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %9, align 8
  br label %143

143:                                              ; preds = %271, %139
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = icmp ult i32* %144, %145
  br i1 %146, label %147, label %274

147:                                              ; preds = %143
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %12, align 4
  switch i32 %150, label %270 [
    i32 0, label %151
    i32 1, label %151
    i32 2, label %156
    i32 3, label %162
    i32 4, label %167
    i32 5, label %174
    i32 6, label %181
  ]

151:                                              ; preds = %147, %147
  %152 = load i32, i32* %8, align 4
  %153 = shl i32 %152, 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  store i32 2, i32* %12, align 4
  br label %270

156:                                              ; preds = %147
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  store i32 3, i32* %12, align 4
  br label %270

162:                                              ; preds = %147
  %163 = load i32, i32* %8, align 4
  %164 = shl i32 %163, 24
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  store i32 4, i32* %12, align 4
  br label %270

167:                                              ; preds = %147
  %168 = load i32, i32* %8, align 4
  %169 = shl i32 %168, 16
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  store i32 5, i32* %12, align 4
  br label %270

174:                                              ; preds = %147
  %175 = load i32, i32* %8, align 4
  %176 = shl i32 %175, 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  store i32 6, i32* %12, align 4
  br label %270

181:                                              ; preds = %147
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  store i32 1, i32* %12, align 4
  %187 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ngx_log_debug2(i32 %187, i32 %192, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %195, i32 %198)
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 4
  br i1 %203, label %204, label %269

204:                                              ; preds = %181
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @NGX_HTTP_V2_MAX_WINDOW, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %204
  %211 = load i32, i32* @NGX_LOG_ERR, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %211, i32 %216, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* @NGX_ERROR, align 4
  store i32 %221, i32* %4, align 4
  br label %308

222:                                              ; preds = %204
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %225, %230
  store i32 %231, i32* %11, align 4
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  store i32 %234, i32* %238, align 4
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %263

243:                                              ; preds = %222
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @NGX_HTTP_V2_MAX_WINDOW, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %245, %248
  %250 = icmp sgt i32 %244, %249
  br i1 %250, label %251, label %263

251:                                              ; preds = %243
  %252 = load i32, i32* @NGX_LOG_ERR, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %252, i32 %257, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* @NGX_ERROR, align 4
  store i32 %262, i32* %4, align 4
  br label %308

263:                                              ; preds = %243, %222
  %264 = load i32, i32* %11, align 4
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %263, %181
  br label %270

270:                                              ; preds = %147, %269, %174, %167, %162, %156, %151
  br label %271

271:                                              ; preds = %270
  %272 = load i32*, i32** %9, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %9, align 8
  br label %143

274:                                              ; preds = %143
  %275 = load i32*, i32** %9, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = ptrtoint i32* %275 to i64
  %280 = ptrtoint i32* %278 to i64
  %281 = sub i64 %279, %280
  %282 = sdiv exact i64 %281, 4
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = sub nsw i64 %286, %282
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %284, align 8
  %289 = load i32, i32* %12, align 4
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load i32*, i32** %9, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  store i32* %292, i32** %294, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %274
  %300 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %300, i32* %4, align 4
  br label %308

301:                                              ; preds = %274
  %302 = load i8*, i8** @ngx_http_grpc_st_start, align 8
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 7
  store i8* %302, i8** %304, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %307 = call i32 @ngx_http_grpc_send_settings_ack(%struct.TYPE_13__* %305, %struct.TYPE_14__* %306)
  store i32 %307, i32* %4, align 4
  br label %308

308:                                              ; preds = %301, %299, %251, %210, %129, %106, %95, %83, %52
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_http_grpc_send_settings_ack(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
