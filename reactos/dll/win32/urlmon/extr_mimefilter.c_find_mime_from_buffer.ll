; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_mimefilter.c_find_mime_from_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_mimefilter.c_find_mime_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (i32*, i32)*, i32* }

@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@app_octetstreamW = common dso_local global i32* null, align 8
@text_plainW = common dso_local global i32* null, align 8
@mime_filters_any_pos = common dso_local global %struct.TYPE_4__* null, align 8
@mime_filters = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"found %s for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32**)* @find_mime_from_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_mime_from_buffer(i32* %0, i32 %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32 -1, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %20, %5
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @E_FAIL, align 4
  store i32 %27, i32* %6, align 4
  br label %394

28:                                               ; preds = %23
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @strlenW(i32* %29)
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32* @CoTaskMemAlloc(i32 %35)
  %37 = load i32**, i32*** %11, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i32**, i32*** %11, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %42, i32* %6, align 4
  br label %394

43:                                               ; preds = %28
  %44 = load i32**, i32*** %11, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i32* %45, i32* %46, i32 %50)
  %52 = load i32, i32* @S_OK, align 4
  store i32 %52, i32* %6, align 4
  br label %394

53:                                               ; preds = %20
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** @app_octetstreamW, align 8
  %59 = call i32 @strcmpW(i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** @text_plainW, align 8
  %64 = call i32 @strcmpW(i32* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61, %56
  store i32* null, i32** %9, align 8
  br label %67

67:                                               ; preds = %66, %61, %53
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %165

70:                                               ; preds = %67
  %71 = load i32*, i32** %9, align 8
  store i32* %71, i32** %15, align 8
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %122, %70
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %72
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @strcmpW(i32* %78, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %113, %87
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64 (i32*, i32)*, i64 (i32*, i32)** %98, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %12, align 4
  %109 = call i64 %99(i32* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  br label %116

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %12, align 4
  br label %90

116:                                              ; preds = %111, %90
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32* null, i32** %15, align 8
  br label %120

120:                                              ; preds = %119, %116
  br label %125

121:                                              ; preds = %77
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %72

125:                                              ; preds = %120, %72
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %128 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %127)
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %164

130:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %160, %130
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters, align 8
  %134 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %133)
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %163

136:                                              ; preds = %131
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @strcmpW(i32* %137, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %136
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64 (i32*, i32)*, i64 (i32*, i32)** %151, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i64 %152(i32* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %146
  store i32* null, i32** %15, align 8
  br label %158

158:                                              ; preds = %157, %146
  br label %163

159:                                              ; preds = %136
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %131

163:                                              ; preds = %158, %131
  br label %164

164:                                              ; preds = %163, %125
  br label %165

165:                                              ; preds = %164, %67
  %166 = load i32*, i32** %9, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, -1
  br i1 %170, label %171, label %221

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %217, %171
  %174 = load i32*, i32** %15, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %12, align 4
  %178 = icmp sgt i32 %177, 0
  br label %179

179:                                              ; preds = %176, %173
  %180 = phi i1 [ false, %173 ], [ %178, %176 ]
  br i1 %180, label %181, label %220

181:                                              ; preds = %179
  store i32 0, i32* %13, align 4
  br label %182

182:                                              ; preds = %213, %181
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %185 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %184)
  %186 = icmp slt i32 %183, %185
  br i1 %186, label %187, label %216

187:                                              ; preds = %182
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i64 (i32*, i32)*, i64 (i32*, i32)** %192, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = sub i64 0, %199
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %12, align 4
  %203 = call i64 %193(i32* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %187
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  store i32* %211, i32** %15, align 8
  br label %216

212:                                              ; preds = %187
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %182

216:                                              ; preds = %205, %182
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %12, align 4
  br label %173

220:                                              ; preds = %179
  br label %221

221:                                              ; preds = %220, %168
  store i32 0, i32* %13, align 4
  br label %222

222:                                              ; preds = %244, %221
  %223 = load i32*, i32** %15, align 8
  %224 = icmp ne i32* %223, null
  %225 = xor i1 %224, true
  br i1 %225, label %226, label %247

226:                                              ; preds = %222
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i64 (i32*, i32)*, i64 (i32*, i32)** %231, align 8
  %233 = load i32*, i32** %7, align 8
  %234 = load i32, i32* %8, align 4
  %235 = call i64 %232(i32* %233, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %226
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  store i32* %243, i32** %15, align 8
  br label %244

244:                                              ; preds = %237, %226
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %222

247:                                              ; preds = %222
  %248 = load i32, i32* %14, align 4
  %249 = icmp ne i32 %248, -1
  br i1 %249, label %250, label %261

250:                                              ; preds = %247
  %251 = load i32*, i32** %15, align 8
  %252 = load i32*, i32** @text_plainW, align 8
  %253 = icmp eq i32* %251, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %250
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %256 = load i32, i32* %14, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  store i32* %260, i32** %15, align 8
  br label %332

261:                                              ; preds = %250, %247
  %262 = load i32*, i32** %9, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %331

264:                                              ; preds = %261
  %265 = load i32*, i32** %15, align 8
  %266 = load i32*, i32** @app_octetstreamW, align 8
  %267 = icmp eq i32* %265, %266
  br i1 %267, label %268, label %331

268:                                              ; preds = %264
  %269 = load i32, i32* %8, align 4
  store i32 %269, i32* %12, align 4
  br label %270

270:                                              ; preds = %321, %268
  %271 = load i32*, i32** %15, align 8
  %272 = load i32*, i32** @app_octetstreamW, align 8
  %273 = icmp eq i32* %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  %275 = load i32, i32* %12, align 4
  %276 = icmp sgt i32 %275, 0
  br label %277

277:                                              ; preds = %274, %270
  %278 = phi i1 [ false, %270 ], [ %276, %274 ]
  br i1 %278, label %279, label %324

279:                                              ; preds = %277
  %280 = load i32*, i32** %7, align 8
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %12, align 4
  %283 = sub nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %280, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @is_text_plain_char(i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %279
  br label %324

290:                                              ; preds = %279
  store i32 0, i32* %13, align 4
  br label %291

291:                                              ; preds = %317, %290
  %292 = load i32, i32* %13, align 4
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %294 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %293)
  %295 = icmp slt i32 %292, %294
  br i1 %295, label %296, label %320

296:                                              ; preds = %291
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_filters_any_pos, align 8
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = load i64 (i32*, i32)*, i64 (i32*, i32)** %301, align 8
  %303 = load i32*, i32** %7, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = sub i64 0, %308
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = load i32, i32* %12, align 4
  %312 = call i64 %302(i32* %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %296
  %315 = load i32*, i32** @text_plainW, align 8
  store i32* %315, i32** %15, align 8
  br label %320

316:                                              ; preds = %296
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %13, align 4
  br label %291

320:                                              ; preds = %314, %291
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %12, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %12, align 4
  br label %270

324:                                              ; preds = %289, %277
  %325 = load i32*, i32** %15, align 8
  %326 = load i32*, i32** @app_octetstreamW, align 8
  %327 = icmp eq i32* %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = load i32*, i32** %9, align 8
  store i32* %329, i32** %15, align 8
  br label %330

330:                                              ; preds = %328, %324
  br label %331

331:                                              ; preds = %330, %264, %261
  br label %332

332:                                              ; preds = %331, %254
  %333 = load i32*, i32** %10, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %361

335:                                              ; preds = %332
  %336 = load i32*, i32** %15, align 8
  %337 = load i32*, i32** @app_octetstreamW, align 8
  %338 = icmp eq i32* %336, %337
  br i1 %338, label %343, label %339

339:                                              ; preds = %335
  %340 = load i32*, i32** %15, align 8
  %341 = load i32*, i32** @text_plainW, align 8
  %342 = icmp eq i32* %340, %341
  br i1 %342, label %343, label %361

343:                                              ; preds = %339, %335
  %344 = load i32*, i32** %10, align 8
  %345 = call i32 @find_mime_from_url(i32* %344, i32** %16)
  store i32 %345, i32* %17, align 4
  %346 = load i32, i32* %17, align 4
  %347 = call i64 @SUCCEEDED(i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %360

349:                                              ; preds = %343
  %350 = load i32*, i32** %16, align 8
  %351 = call i32 @is_known_mime_type(i32* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %357, label %353

353:                                              ; preds = %349
  %354 = load i32*, i32** %16, align 8
  %355 = load i32**, i32*** %11, align 8
  store i32* %354, i32** %355, align 8
  %356 = load i32, i32* %17, align 4
  store i32 %356, i32* %6, align 4
  br label %394

357:                                              ; preds = %349
  %358 = load i32*, i32** %16, align 8
  %359 = call i32 @CoTaskMemFree(i32* %358)
  br label %360

360:                                              ; preds = %357, %343
  br label %361

361:                                              ; preds = %360, %339, %332
  %362 = load i32*, i32** %15, align 8
  %363 = call i32 @debugstr_w(i32* %362)
  %364 = load i32*, i32** %7, align 8
  %365 = bitcast i32* %364 to i8*
  %366 = load i32, i32* %8, align 4
  %367 = call i32 @min(i32 32, i32 %366)
  %368 = call i32 @debugstr_an(i8* %365, i32 %367)
  %369 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %363, i32 %368)
  %370 = load i32*, i32** %15, align 8
  %371 = call i32 @strlenW(i32* %370)
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %12, align 4
  %373 = load i32, i32* %12, align 4
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 4
  %376 = trunc i64 %375 to i32
  %377 = call i32* @CoTaskMemAlloc(i32 %376)
  %378 = load i32**, i32*** %11, align 8
  store i32* %377, i32** %378, align 8
  %379 = load i32**, i32*** %11, align 8
  %380 = load i32*, i32** %379, align 8
  %381 = icmp ne i32* %380, null
  br i1 %381, label %384, label %382

382:                                              ; preds = %361
  %383 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %383, i32* %6, align 4
  br label %394

384:                                              ; preds = %361
  %385 = load i32**, i32*** %11, align 8
  %386 = load i32*, i32** %385, align 8
  %387 = load i32*, i32** %15, align 8
  %388 = load i32, i32* %12, align 4
  %389 = sext i32 %388 to i64
  %390 = mul i64 %389, 4
  %391 = trunc i64 %390 to i32
  %392 = call i32 @memcpy(i32* %386, i32* %387, i32 %391)
  %393 = load i32, i32* @S_OK, align 4
  store i32 %393, i32* %6, align 4
  br label %394

394:                                              ; preds = %384, %382, %353, %43, %41, %26
  %395 = load i32, i32* %6, align 4
  ret i32 %395
}

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @strcmpW(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @is_text_plain_char(i32) #1

declare dso_local i32 @find_mime_from_url(i32*, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @is_known_mime_type(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
