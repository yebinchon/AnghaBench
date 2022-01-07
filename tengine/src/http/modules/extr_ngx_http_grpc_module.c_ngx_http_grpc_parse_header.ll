; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_parse_header.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i64, i32, i64, i64, i32 }
%struct.TYPE_14__ = type { i64*, i64* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"grpc parse header: start\00", align 1
@NGX_HTTP_V2_HEADERS_FRAME = common dso_local global i64 0, align 8
@NGX_HTTP_V2_PADDED_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_PRIORITY_FLAG = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"upstream sent headers frame with invalid length: %uz\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_V2_END_STREAM_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_CONTINUATION_FRAME = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"upstream sent http2 frame with too long padding: %d in frame %uz\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_grpc_st_start = common dso_local global i32 0, align 4
@NGX_HTTP_V2_END_HEADERS_FLAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"upstream sent truncated http2 header\00", align 1
@NGX_HTTP_PARSE_HEADER_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*)* @ngx_http_grpc_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_grpc_parse_header(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %115

19:                                               ; preds = %3
  %20 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ngx_log_debug0(i32 %20, i32 %25, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NGX_HTTP_V2_HEADERS_FRAME, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %19
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 7
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NGX_HTTP_V2_PADDED_FLAG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NGX_HTTP_V2_PRIORITY_FLAG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 5, i32 0
  %53 = add nsw i32 %44, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %11, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %32
  %61 = load i32, i32* @NGX_LOG_ERR, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %61, i32 %66, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* @NGX_ERROR, align 8
  store i64 %71, i64* %4, align 8
  br label %356

72:                                               ; preds = %32
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NGX_HTTP_V2_END_STREAM_FLAG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NGX_HTTP_V2_PADDED_FLAG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, i32* %13, align 4
  br label %100

90:                                               ; preds = %82
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NGX_HTTP_V2_PRIORITY_FLAG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 2, i32* %13, align 4
  br label %99

98:                                               ; preds = %90
  store i32 7, i32* %13, align 4
  br label %99

99:                                               ; preds = %98, %97
  br label %100

100:                                              ; preds = %99, %89
  br label %109

101:                                              ; preds = %19
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NGX_HTTP_V2_CONTINUATION_FRAME, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 7, i32* %13, align 4
  br label %108

108:                                              ; preds = %107, %101
  br label %109

109:                                              ; preds = %108, %100
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %109, %3
  %116 = load i32, i32* %13, align 4
  %117 = icmp ult i32 %116, 7
  br i1 %117, label %118, label %245

118:                                              ; preds = %115
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = ptrtoint i64* %121 to i64
  %126 = ptrtoint i64* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %128, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %118
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  store i64* %138, i64** %10, align 8
  br label %147

139:                                              ; preds = %118
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  store i64* %146, i64** %10, align 8
  br label %147

147:                                              ; preds = %139, %135
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  store i64* %150, i64** %9, align 8
  br label %151

151:                                              ; preds = %178, %147
  %152 = load i64*, i64** %9, align 8
  %153 = load i64*, i64** %10, align 8
  %154 = icmp ult i64* %152, %153
  br i1 %154, label %155, label %181

155:                                              ; preds = %151
  %156 = load i64*, i64** %9, align 8
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %8, align 8
  %158 = load i32, i32* %13, align 4
  switch i32 %158, label %177 [
    i32 1, label %159
    i32 2, label %171
    i32 3, label %172
    i32 4, label %173
    i32 5, label %174
    i32 6, label %175
    i32 0, label %176
    i32 7, label %176
    i32 8, label %176
  ]

159:                                              ; preds = %155
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 6
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @NGX_HTTP_V2_PRIORITY_FLAG, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  store i32 2, i32* %13, align 4
  br label %177

170:                                              ; preds = %159
  br label %201

171:                                              ; preds = %155
  store i32 3, i32* %13, align 4
  br label %177

172:                                              ; preds = %155
  store i32 4, i32* %13, align 4
  br label %177

173:                                              ; preds = %155
  store i32 5, i32* %13, align 4
  br label %177

174:                                              ; preds = %155
  store i32 6, i32* %13, align 4
  br label %177

175:                                              ; preds = %155
  br label %201

176:                                              ; preds = %155, %155, %155
  br label %177

177:                                              ; preds = %155, %176, %174, %173, %172, %171, %169
  br label %178

178:                                              ; preds = %177
  %179 = load i64*, i64** %9, align 8
  %180 = getelementptr inbounds i64, i64* %179, i32 1
  store i64* %180, i64** %9, align 8
  br label %151

181:                                              ; preds = %151
  %182 = load i64*, i64** %9, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = ptrtoint i64* %182 to i64
  %187 = ptrtoint i64* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = sub i64 %192, %189
  store i64 %193, i64* %191, align 8
  %194 = load i64*, i64** %9, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  store i64* %194, i64** %196, align 8
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %200, i64* %4, align 8
  br label %356

201:                                              ; preds = %175, %170
  %202 = load i64*, i64** %9, align 8
  %203 = getelementptr inbounds i64, i64* %202, i32 1
  store i64* %203, i64** %9, align 8
  %204 = load i64*, i64** %9, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i64*, i64** %206, align 8
  %208 = ptrtoint i64* %204 to i64
  %209 = ptrtoint i64* %207 to i64
  %210 = sub i64 %208, %209
  %211 = sdiv exact i64 %210, 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = sub i64 %214, %211
  store i64 %215, i64* %213, align 8
  %216 = load i64*, i64** %9, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  store i64* %216, i64** %218, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp ugt i64 %221, %224
  br i1 %225, label %226, label %241

226:                                              ; preds = %201
  %227 = load i32, i32* @NGX_LOG_ERR, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 6
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %227, i32 %232, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %235, i64 %238)
  %240 = load i64, i64* @NGX_ERROR, align 8
  store i64 %240, i64* %4, align 8
  br label %356

241:                                              ; preds = %201
  store i32 7, i32* %13, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  br label %245

245:                                              ; preds = %241, %115
  %246 = load i32, i32* %13, align 4
  %247 = icmp eq i32 %246, 7
  br i1 %247, label %248, label %274

248:                                              ; preds = %245
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %252 = call i64 @ngx_http_grpc_parse_fragment(%struct.TYPE_12__* %249, %struct.TYPE_13__* %250, %struct.TYPE_14__* %251)
  store i64 %252, i64* %12, align 8
  %253 = load i64, i64* %12, align 8
  %254 = load i64, i64* @NGX_AGAIN, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %248
  %257 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %257, i64* %4, align 8
  br label %356

258:                                              ; preds = %248
  %259 = load i64, i64* %12, align 8
  %260 = load i64, i64* @NGX_ERROR, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i64, i64* @NGX_ERROR, align 8
  store i64 %263, i64* %4, align 8
  br label %356

264:                                              ; preds = %258
  %265 = load i64, i64* %12, align 8
  %266 = load i64, i64* @NGX_OK, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = load i64, i64* @NGX_OK, align 8
  store i64 %269, i64* %4, align 8
  br label %356

270:                                              ; preds = %264
  store i32 8, i32* %13, align 4
  %271 = load i32, i32* %13, align 4
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  br label %274

274:                                              ; preds = %270, %245
  %275 = load i32, i32* %13, align 4
  %276 = icmp eq i32 %275, 8
  br i1 %276, label %277, label %354

277:                                              ; preds = %274
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 0
  %280 = load i64*, i64** %279, align 8
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  %283 = load i64*, i64** %282, align 8
  %284 = ptrtoint i64* %280 to i64
  %285 = ptrtoint i64* %283 to i64
  %286 = sub i64 %284, %285
  %287 = sdiv exact i64 %286, 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = trunc i64 %290 to i32
  %292 = sext i32 %291 to i64
  %293 = icmp slt i64 %287, %292
  br i1 %293, label %294, label %315

294:                                              ; preds = %277
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i64*, i64** %296, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = ptrtoint i64* %297 to i64
  %302 = ptrtoint i64* %300 to i64
  %303 = sub i64 %301, %302
  %304 = sdiv exact i64 %303, 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = sub i64 %307, %304
  store i64 %308, i64* %306, align 8
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 0
  %311 = load i64*, i64** %310, align 8
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 1
  store i64* %311, i64** %313, align 8
  %314 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %314, i64* %4, align 8
  br label %356

315:                                              ; preds = %277
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 1
  %321 = load i64*, i64** %320, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 %318
  store i64* %322, i64** %320, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 4
  store i64 0, i64* %324, align 8
  %325 = load i32, i32* @ngx_http_grpc_st_start, align 4
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 8
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @NGX_HTTP_V2_END_HEADERS_FLAG, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %352

334:                                              ; preds = %315
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 7
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %334
  %340 = load i32, i32* @NGX_LOG_ERR, align 4
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %340, i32 %345, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %347 = load i64, i64* @NGX_ERROR, align 8
  store i64 %347, i64* %4, align 8
  br label %356

348:                                              ; preds = %334
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 2
  store i32 0, i32* %350, align 8
  %351 = load i64, i64* @NGX_HTTP_PARSE_HEADER_DONE, align 8
  store i64 %351, i64* %4, align 8
  br label %356

352:                                              ; preds = %315
  %353 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %353, i64* %4, align 8
  br label %356

354:                                              ; preds = %274
  %355 = load i64, i64* @NGX_ERROR, align 8
  store i64 %355, i64* %4, align 8
  br label %356

356:                                              ; preds = %354, %352, %348, %339, %294, %268, %262, %256, %226, %181, %60
  %357 = load i64, i64* %4, align 8
  ret i64 %357
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @ngx_http_grpc_parse_fragment(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
