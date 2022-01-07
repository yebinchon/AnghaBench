; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_GetOptimumFast.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_GetOptimumFast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i64**, i32, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* (i32)* }

@LZMA_MATCH_LEN_MAX = common dso_local global i32 0, align 4
@LZMA_NUM_REPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @GetOptimumFast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetOptimumFast(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i8* @ReadMatchDistances(%struct.TYPE_7__* %26, i32* %9)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %7, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %29, %25
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 -1, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %420

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64* (i32)*, i64* (i32)** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = call i64* %54(i32 %57)
  %59 = getelementptr inbounds i64, i64* %58, i64 -1
  store i64* %59, i64** %13, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %140, %50
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @LZMA_NUM_REPS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %143

64:                                               ; preds = %60
  %65 = load i64*, i64** %13, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i64**, i64*** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = ptrtoint i64* %65 to i64
  %75 = ptrtoint i64* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 8
  %78 = inttoptr i64 %77 to i64*
  store i64* %78, i64** %16, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %16, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %64
  %87 = load i64*, i64** %13, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %16, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86, %64
  br label %140

95:                                               ; preds = %86
  store i32 2, i32* %15, align 4
  br label %96

96:                                               ; preds = %115, %95
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i64*, i64** %13, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %16, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %105, %110
  br label %112

112:                                              ; preds = %100, %96
  %113 = phi i1 [ false, %96 ], [ %111, %100 ]
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %96

118:                                              ; preds = %112
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %5, align 8
  store i32 %125, i32* %126, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @MovePos(%struct.TYPE_7__* %127, i32 %129)
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %3, align 4
  br label %420

132:                                              ; preds = %118
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %94
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %60

143:                                              ; preds = %60
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  store i32* %146, i32** %14, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = icmp sge i32 %147, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %143
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @LZMA_NUM_REPS, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32*, i32** %5, align 8
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sub nsw i32 %163, 1
  %165 = call i32 @MovePos(%struct.TYPE_7__* %162, i32 %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %3, align 4
  br label %420

167:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp sge i32 %168, 2
  br i1 %169, label %170, label %226

170:                                              ; preds = %167
  %171 = load i32*, i32** %14, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %203, %170
  %178 = load i32, i32* %9, align 4
  %179 = icmp sgt i32 %178, 2
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load i32, i32* %7, align 4
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sub nsw i32 %183, 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  %189 = icmp eq i32 %181, %188
  br label %190

190:                                              ; preds = %180, %177
  %191 = phi i1 [ false, %177 ], [ %189, %180 ]
  br i1 %191, label %192, label %218

192:                                              ; preds = %190
  %193 = load i32*, i32** %14, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sub nsw i32 %194, 3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i64 @ChangePair(i32 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %192
  br label %218

203:                                              ; preds = %192
  %204 = load i32, i32* %9, align 4
  %205 = sub nsw i32 %204, 2
  store i32 %205, i32* %9, align 4
  %206 = load i32*, i32** %14, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sub nsw i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %7, align 4
  %212 = load i32*, i32** %14, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %8, align 4
  br label %177

218:                                              ; preds = %202, %190
  %219 = load i32, i32* %7, align 4
  %220 = icmp eq i32 %219, 2
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load i32, i32* %8, align 4
  %223 = icmp sge i32 %222, 128
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i32 1, i32* %7, align 4
  br label %225

225:                                              ; preds = %224, %221, %218
  br label %226

226:                                              ; preds = %225, %167
  %227 = load i32, i32* %11, align 4
  %228 = icmp sge i32 %227, 2
  br i1 %228, label %229, label %258

229:                                              ; preds = %226
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, 1
  %232 = load i32, i32* %7, align 4
  %233 = icmp sge i32 %231, %232
  br i1 %233, label %250, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 2
  %237 = load i32, i32* %7, align 4
  %238 = icmp sge i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, i32* %8, align 4
  %241 = icmp sge i32 %240, 512
  br i1 %241, label %250, label %242

242:                                              ; preds = %239, %234
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 3
  %245 = load i32, i32* %7, align 4
  %246 = icmp sge i32 %244, %245
  br i1 %246, label %247, label %258

247:                                              ; preds = %242
  %248 = load i32, i32* %8, align 4
  %249 = icmp sge i32 %248, 32768
  br i1 %249, label %250, label %258

250:                                              ; preds = %247, %239, %229
  %251 = load i32, i32* %10, align 4
  %252 = load i32*, i32** %5, align 8
  store i32 %251, i32* %252, align 4
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sub nsw i32 %254, 1
  %256 = call i32 @MovePos(%struct.TYPE_7__* %253, i32 %255)
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %3, align 4
  br label %420

258:                                              ; preds = %247, %242, %226
  %259 = load i32, i32* %7, align 4
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %6, align 4
  %263 = icmp sle i32 %262, 2
  br i1 %263, label %264, label %265

264:                                              ; preds = %261, %258
  store i32 1, i32* %3, align 4
  br label %420

265:                                              ; preds = %261
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  %269 = call i8* @ReadMatchDistances(%struct.TYPE_7__* %266, i32* %268)
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = icmp sge i32 %275, 2
  br i1 %276, label %277, label %331

277:                                              ; preds = %265
  %278 = load i32*, i32** %14, align 8
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %278, i64 %283
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %17, align 4
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %7, align 4
  %290 = icmp sge i32 %288, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %277
  %292 = load i32, i32* %17, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %329, label %295

295:                                              ; preds = %291, %277
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  %301 = icmp eq i32 %298, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %295
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %17, align 4
  %305 = call i64 @ChangePair(i32 %303, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %329

307:                                              ; preds = %302, %295
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* %7, align 4
  %312 = add nsw i32 %311, 1
  %313 = icmp sgt i32 %310, %312
  br i1 %313, label %329, label %314

314:                                              ; preds = %307
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, 1
  %319 = load i32, i32* %7, align 4
  %320 = icmp sge i32 %318, %319
  br i1 %320, label %321, label %330

321:                                              ; preds = %314
  %322 = load i32, i32* %7, align 4
  %323 = icmp sge i32 %322, 3
  br i1 %323, label %324, label %330

324:                                              ; preds = %321
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %8, align 4
  %327 = call i64 @ChangePair(i32 %325, i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324, %307, %302, %291
  store i32 1, i32* %3, align 4
  br label %420

330:                                              ; preds = %324, %321, %314
  br label %331

331:                                              ; preds = %330, %265
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i64* (i32)*, i64* (i32)** %334, align 8
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 8
  %339 = call i64* %335(i32 %338)
  %340 = getelementptr inbounds i64, i64* %339, i64 -1
  store i64* %340, i64** %13, align 8
  store i32 0, i32* %12, align 4
  br label %341

341:                                              ; preds = %407, %331
  %342 = load i32, i32* %12, align 4
  %343 = load i32, i32* @LZMA_NUM_REPS, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %410

345:                                              ; preds = %341
  %346 = load i64*, i64** %13, align 8
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 4
  %349 = load i64**, i64*** %348, align 8
  %350 = load i32, i32* %12, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64*, i64** %349, i64 %351
  %353 = load i64*, i64** %352, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 1
  %355 = ptrtoint i64* %346 to i64
  %356 = ptrtoint i64* %354 to i64
  %357 = sub i64 %355, %356
  %358 = sdiv exact i64 %357, 8
  %359 = inttoptr i64 %358 to i64*
  store i64* %359, i64** %20, align 8
  %360 = load i64*, i64** %13, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 0
  %362 = load i64, i64* %361, align 8
  %363 = load i64*, i64** %20, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %362, %365
  br i1 %366, label %375, label %367

367:                                              ; preds = %345
  %368 = load i64*, i64** %13, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 1
  %370 = load i64, i64* %369, align 8
  %371 = load i64*, i64** %20, align 8
  %372 = getelementptr inbounds i64, i64* %371, i64 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %370, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %367, %345
  br label %407

376:                                              ; preds = %367
  %377 = load i32, i32* %7, align 4
  %378 = sub nsw i32 %377, 1
  store i32 %378, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %379

379:                                              ; preds = %398, %376
  %380 = load i32, i32* %18, align 4
  %381 = load i32, i32* %19, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %395

383:                                              ; preds = %379
  %384 = load i64*, i64** %13, align 8
  %385 = load i32, i32* %18, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %384, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = load i64*, i64** %20, align 8
  %390 = load i32, i32* %18, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i64, i64* %389, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %388, %393
  br label %395

395:                                              ; preds = %383, %379
  %396 = phi i1 [ false, %379 ], [ %394, %383 ]
  br i1 %396, label %397, label %401

397:                                              ; preds = %395
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %18, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %18, align 4
  br label %379

401:                                              ; preds = %395
  %402 = load i32, i32* %18, align 4
  %403 = load i32, i32* %19, align 4
  %404 = icmp sge i32 %402, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %401
  store i32 1, i32* %3, align 4
  br label %420

406:                                              ; preds = %401
  br label %407

407:                                              ; preds = %406, %375
  %408 = load i32, i32* %12, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %12, align 4
  br label %341

410:                                              ; preds = %341
  %411 = load i32, i32* %8, align 4
  %412 = load i32, i32* @LZMA_NUM_REPS, align 4
  %413 = add nsw i32 %411, %412
  %414 = load i32*, i32** %5, align 8
  store i32 %413, i32* %414, align 4
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %416 = load i32, i32* %7, align 4
  %417 = sub nsw i32 %416, 2
  %418 = call i32 @MovePos(%struct.TYPE_7__* %415, i32 %417)
  %419 = load i32, i32* %7, align 4
  store i32 %419, i32* %3, align 4
  br label %420

420:                                              ; preds = %410, %405, %329, %264, %250, %152, %124, %43
  %421 = load i32, i32* %3, align 4
  ret i32 %421
}

declare dso_local i8* @ReadMatchDistances(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @MovePos(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ChangePair(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
