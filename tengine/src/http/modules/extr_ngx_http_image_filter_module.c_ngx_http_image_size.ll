; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_size.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i64, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"JPEG: %02xd %02xd\00", align 1
@NGX_DECLINED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"app data size: %uz\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"image size: %d x %d\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @ngx_http_image_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_image_size(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %377 [
    i32 130, label %18
    i32 131, label %181
    i32 129, label %207
    i32 128, label %233
  ]

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = getelementptr inbounds i32, i32* %28, i64 -10
  store i32* %29, i32** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %150, %146, %18
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %153

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %150

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 255
  br i1 %43, label %44, label %150

44:                                               ; preds = %39
  %45 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ngx_log_debug2(i32 %45, i32 %50, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 192
  br i1 %62, label %87, label %63

63:                                               ; preds = %44
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 193
  br i1 %66, label %87, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 194
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 195
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 201
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 202
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 203
  br i1 %86, label %87, label %112

87:                                               ; preds = %83, %79, %75, %71, %67, %63, %44
  %88 = load i64, i64* %10, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %11, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 256
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %10, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 256
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %93, %90, %83
  %113 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ngx_log_debug2(i32 %113, i32 %118, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 256
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %129, %132
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %8, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %136, 225
  br i1 %137, label %138, label %146

138:                                              ; preds = %112
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %140, 239
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %9, align 8
  br label %146

146:                                              ; preds = %142, %138, %112
  %147 = load i64, i64* %8, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 %147
  store i32* %149, i32** %6, align 8
  br label %30

150:                                              ; preds = %39, %34
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %6, align 8
  br label %30

153:                                              ; preds = %30
  %154 = load i64, i64* %10, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* %11, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156, %153
  %160 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %160, i32* %3, align 4
  br label %398

161:                                              ; preds = %156
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %164, 20
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %9, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %161
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 3
  store i32 1, i32* %171, align 8
  %172 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i64, i64* %9, align 8
  %179 = call i32 @ngx_log_debug1(i32 %172, i32 %177, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %178)
  br label %180

180:                                              ; preds = %169, %161
  br label %379

181:                                              ; preds = %2
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %184, 10
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %187, i32* %3, align 4
  br label %398

188:                                              ; preds = %181
  %189 = load i32*, i32** %6, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 7
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %191, 256
  %193 = load i32*, i32** %6, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 6
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %192, %195
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %10, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 9
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %200, 256
  %202 = load i32*, i32** %6, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 8
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %201, %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %11, align 8
  br label %379

207:                                              ; preds = %2
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %210, 24
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %213, i32* %3, align 4
  br label %398

214:                                              ; preds = %207
  %215 = load i32*, i32** %6, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 18
  %217 = load i32, i32* %216, align 4
  %218 = mul nsw i32 %217, 256
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 19
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %218, %221
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %10, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 22
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %226, 256
  %228 = load i32*, i32** %6, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 23
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %227, %230
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %11, align 8
  br label %379

233:                                              ; preds = %2
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %236, 30
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %239, i32* %3, align 4
  br label %398

240:                                              ; preds = %233
  %241 = load i32*, i32** %6, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 12
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 86
  br i1 %244, label %255, label %245

245:                                              ; preds = %240
  %246 = load i32*, i32** %6, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 13
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 80
  br i1 %249, label %255, label %250

250:                                              ; preds = %245
  %251 = load i32*, i32** %6, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 14
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 56
  br i1 %254, label %255, label %257

255:                                              ; preds = %250, %245, %240
  %256 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %256, i32* %3, align 4
  br label %398

257:                                              ; preds = %250
  %258 = load i32*, i32** %6, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 15
  %260 = load i32, i32* %259, align 4
  switch i32 %260, label %374 [
    i32 32, label %261
    i32 76, label %307
    i32 88, label %343
  ]

261:                                              ; preds = %257
  %262 = load i32*, i32** %6, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 20
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 1
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %268, i32* %3, align 4
  br label %398

269:                                              ; preds = %261
  %270 = load i32*, i32** %6, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 23
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 157
  br i1 %273, label %284, label %274

274:                                              ; preds = %269
  %275 = load i32*, i32** %6, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 24
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 1
  br i1 %278, label %284, label %279

279:                                              ; preds = %274
  %280 = load i32*, i32** %6, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 25
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 42
  br i1 %283, label %284, label %286

284:                                              ; preds = %279, %274, %269
  %285 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %285, i32* %3, align 4
  br label %398

286:                                              ; preds = %279
  %287 = load i32*, i32** %6, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 26
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %6, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 27
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 8
  %294 = or i32 %289, %293
  %295 = and i32 %294, 16383
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %10, align 8
  %297 = load i32*, i32** %6, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 28
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %6, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 29
  %302 = load i32, i32* %301, align 4
  %303 = shl i32 %302, 8
  %304 = or i32 %299, %303
  %305 = and i32 %304, 16383
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %11, align 8
  br label %376

307:                                              ; preds = %257
  %308 = load i32*, i32** %6, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 20
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 47
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %313, i32* %3, align 4
  br label %398

314:                                              ; preds = %307
  %315 = load i32*, i32** %6, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 21
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %6, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 22
  %320 = load i32, i32* %319, align 4
  %321 = shl i32 %320, 8
  %322 = or i32 %317, %321
  %323 = and i32 %322, 16383
  %324 = add nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  store i64 %325, i64* %10, align 8
  %326 = load i32*, i32** %6, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 22
  %328 = load i32, i32* %327, align 4
  %329 = ashr i32 %328, 6
  %330 = load i32*, i32** %6, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 23
  %332 = load i32, i32* %331, align 4
  %333 = shl i32 %332, 2
  %334 = or i32 %329, %333
  %335 = load i32*, i32** %6, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 24
  %337 = load i32, i32* %336, align 4
  %338 = shl i32 %337, 10
  %339 = or i32 %334, %338
  %340 = and i32 %339, 16383
  %341 = add nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  store i64 %342, i64* %11, align 8
  br label %376

343:                                              ; preds = %257
  %344 = load i32*, i32** %6, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 24
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %6, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 25
  %349 = load i32, i32* %348, align 4
  %350 = shl i32 %349, 8
  %351 = or i32 %346, %350
  %352 = load i32*, i32** %6, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 26
  %354 = load i32, i32* %353, align 4
  %355 = shl i32 %354, 16
  %356 = or i32 %351, %355
  %357 = add nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %10, align 8
  %359 = load i32*, i32** %6, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 27
  %361 = load i32, i32* %360, align 4
  %362 = load i32*, i32** %6, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 28
  %364 = load i32, i32* %363, align 4
  %365 = shl i32 %364, 8
  %366 = or i32 %361, %365
  %367 = load i32*, i32** %6, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 29
  %369 = load i32, i32* %368, align 4
  %370 = shl i32 %369, 16
  %371 = or i32 %366, %370
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  store i64 %373, i64* %11, align 8
  br label %376

374:                                              ; preds = %257
  %375 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %375, i32* %3, align 4
  br label %398

376:                                              ; preds = %343, %314, %286
  br label %379

377:                                              ; preds = %2
  %378 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %378, i32* %3, align 4
  br label %398

379:                                              ; preds = %376, %214, %188, %180
  %380 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load i64, i64* %10, align 8
  %387 = trunc i64 %386 to i32
  %388 = load i64, i64* %11, align 8
  %389 = trunc i64 %388 to i32
  %390 = call i32 @ngx_log_debug2(i32 %380, i32 %385, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %387, i32 %389)
  %391 = load i64, i64* %10, align 8
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 5
  store i64 %391, i64* %393, align 8
  %394 = load i64, i64* %11, align 8
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 4
  store i64 %394, i64* %396, align 8
  %397 = load i32, i32* @NGX_OK, align 4
  store i32 %397, i32* %3, align 4
  br label %398

398:                                              ; preds = %379, %377, %374, %312, %284, %267, %255, %238, %212, %186, %159
  %399 = load i32, i32* %3, align 4
  ret i32 %399
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
