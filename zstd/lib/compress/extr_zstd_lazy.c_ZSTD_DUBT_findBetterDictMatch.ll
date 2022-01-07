; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_lazy.c_ZSTD_DUBT_findBetterDictMatch.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_lazy.c_ZSTD_DUBT_findBetterDictMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64*, i32, i64*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ZSTD_dictMatchState = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [130 x i8] c"ZSTD_DUBT_findBetterDictMatch(%u) : found better match length %u -> %u and offsetCode %u -> %u (dictMatchIndex %u, matchIndex %u)\00", align 1
@ZSTD_REP_MOVE = common dso_local global i32 0, align 4
@MINMATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [88 x i8] c"ZSTD_DUBT_findBetterDictMatch(%u) : found match of length %u and offsetCode %u (pos %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64*, i64*, i64*, i64, i32, i32, i64)* @ZSTD_DUBT_findBetterDictMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_DUBT_findBetterDictMatch(%struct.TYPE_6__* %0, i64* %1, i64* %2, i64* %3, i64 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %17, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %18, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %19, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %20, align 4
  %53 = load i64*, i64** %10, align 8
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i64 @ZSTD_hashPtr(i64* %53, i32 %54, i32 %55)
  store i64 %56, i64* %21, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = load i64, i64* %21, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %22, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  store i64* %64, i64** %23, align 8
  %65 = load i64*, i64** %23, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %65, i64 %70
  store i64* %71, i64** %24, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = load i64*, i64** %23, align 8
  %74 = ptrtoint i64* %72 to i64
  %75 = ptrtoint i64* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %25, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  store i64* %82, i64** %26, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  store i64* %86, i64** %27, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = ptrtoint i64* %90 to i64
  %96 = ptrtoint i64* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %28, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %29, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %28, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %30, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %31, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %32, align 4
  %117 = load i32, i32* %32, align 4
  %118 = shl i32 1, %117
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %33, align 4
  %120 = load i32, i32* %33, align 4
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %29, align 4
  %123 = sub nsw i32 %121, %122
  %124 = icmp sge i32 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %8
  %126 = load i32, i32* %29, align 4
  br label %131

127:                                              ; preds = %8
  %128 = load i32, i32* %28, align 4
  %129 = load i32, i32* %33, align 4
  %130 = sub nsw i32 %128, %129
  br label %131

131:                                              ; preds = %127, %125
  %132 = phi i32 [ %126, %125 ], [ %130, %127 ]
  store i32 %132, i32* %34, align 4
  store i64 0, i64* %35, align 8
  store i64 0, i64* %36, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* %16, align 8
  %135 = load i64, i64* @ZSTD_dictMatchState, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  br label %139

139:                                              ; preds = %281, %131
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %14, align 4
  %142 = icmp ne i32 %140, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %29, align 4
  %146 = icmp sgt i32 %144, %145
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i1 [ false, %139 ], [ %146, %143 ]
  br i1 %148, label %149, label %282

149:                                              ; preds = %147
  %150 = load i32*, i32** %31, align 8
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %33, align 4
  %153 = and i32 %151, %152
  %154 = mul nsw i32 2, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  store i32* %156, i32** %37, align 8
  %157 = load i64, i64* %35, align 8
  %158 = load i64, i64* %36, align 8
  %159 = call i64 @MIN(i64 %157, i64 %158)
  store i64 %159, i64* %38, align 8
  %160 = load i64*, i64** %26, align 8
  %161 = load i32, i32* %22, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  store i64* %163, i64** %39, align 8
  %164 = load i64*, i64** %10, align 8
  %165 = load i64, i64* %38, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64*, i64** %39, align 8
  %168 = load i64, i64* %38, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64*, i64** %11, align 8
  %171 = load i64*, i64** %27, align 8
  %172 = load i64*, i64** %24, align 8
  %173 = call i64 @ZSTD_count_2segments(i64* %166, i64* %169, i64* %170, i64* %171, i64* %172)
  %174 = load i64, i64* %38, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %38, align 8
  %176 = load i32, i32* %22, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %38, align 8
  %179 = add i64 %177, %178
  %180 = load i32, i32* %28, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp uge i64 %179, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %149
  %184 = load i64*, i64** %23, align 8
  %185 = load i32, i32* %22, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i32, i32* %30, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64* %190, i64** %39, align 8
  br label %191

191:                                              ; preds = %183, %149
  %192 = load i64, i64* %38, align 8
  %193 = load i64, i64* %13, align 8
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %251

195:                                              ; preds = %191
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %30, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* %40, align 4
  %199 = load i64, i64* %38, align 8
  %200 = load i64, i64* %13, align 8
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = mul nsw i32 4, %202
  %204 = load i32, i32* %25, align 4
  %205 = load i32, i32* %40, align 4
  %206 = sub nsw i32 %204, %205
  %207 = add nsw i32 %206, 1
  %208 = call i64 @ZSTD_highbit32(i32 %207)
  %209 = load i64*, i64** %12, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 0
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = add nsw i32 %212, 1
  %214 = call i64 @ZSTD_highbit32(i32 %213)
  %215 = sub nsw i64 %208, %214
  %216 = trunc i64 %215 to i32
  %217 = icmp sgt i32 %203, %216
  br i1 %217, label %218, label %243

218:                                              ; preds = %195
  %219 = load i32, i32* %25, align 4
  %220 = load i64, i64* %13, align 8
  %221 = trunc i64 %220 to i32
  %222 = load i64, i64* %38, align 8
  %223 = trunc i64 %222 to i32
  %224 = load i64*, i64** %12, align 8
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = load i32, i32* @ZSTD_REP_MOVE, align 4
  %228 = load i32, i32* %25, align 4
  %229 = add nsw i32 %227, %228
  %230 = load i32, i32* %40, align 4
  %231 = sub nsw i32 %229, %230
  %232 = load i32, i32* %22, align 4
  %233 = load i32, i32* %40, align 4
  %234 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @DEBUGLOG(i32 9, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0), i32 %219, i32 %221, i32 %223, i32 %226, i32 %231, i32 %232, i32 %233)
  %235 = load i64, i64* %38, align 8
  store i64 %235, i64* %13, align 8
  %236 = load i32, i32* @ZSTD_REP_MOVE, align 4
  %237 = load i32, i32* %25, align 4
  %238 = add nsw i32 %236, %237
  %239 = load i32, i32* %40, align 4
  %240 = sub nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = load i64*, i64** %12, align 8
  store i64 %241, i64* %242, align 8
  br label %243

243:                                              ; preds = %218, %195
  %244 = load i64*, i64** %10, align 8
  %245 = load i64, i64* %38, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  %247 = load i64*, i64** %11, align 8
  %248 = icmp eq i64* %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %282

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %250, %191
  %252 = load i64*, i64** %39, align 8
  %253 = load i64, i64* %38, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load i64*, i64** %10, align 8
  %257 = load i64, i64* %38, align 8
  %258 = getelementptr inbounds i64, i64* %256, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = icmp slt i64 %255, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %251
  %262 = load i32, i32* %22, align 4
  %263 = load i32, i32* %34, align 4
  %264 = icmp sle i32 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %282

266:                                              ; preds = %261
  %267 = load i64, i64* %38, align 8
  store i64 %267, i64* %35, align 8
  %268 = load i32*, i32** %37, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %22, align 4
  br label %281

271:                                              ; preds = %251
  %272 = load i32, i32* %22, align 4
  %273 = load i32, i32* %34, align 4
  %274 = icmp sle i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  br label %282

276:                                              ; preds = %271
  %277 = load i64, i64* %38, align 8
  store i64 %277, i64* %36, align 8
  %278 = load i32*, i32** %37, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %22, align 4
  br label %281

281:                                              ; preds = %276, %266
  br label %139

282:                                              ; preds = %275, %265, %249, %147
  %283 = load i64, i64* %13, align 8
  %284 = load i64, i64* @MINMATCH, align 8
  %285 = icmp uge i64 %283, %284
  br i1 %285, label %286, label %303

286:                                              ; preds = %282
  %287 = load i32, i32* %25, align 4
  %288 = load i64*, i64** %12, align 8
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = load i32, i32* @ZSTD_REP_MOVE, align 4
  %292 = sub nsw i32 %290, %291
  %293 = sub nsw i32 %287, %292
  store i32 %293, i32* %41, align 4
  %294 = load i32, i32* %41, align 4
  %295 = load i32, i32* %25, align 4
  %296 = load i64, i64* %13, align 8
  %297 = trunc i64 %296 to i32
  %298 = load i64*, i64** %12, align 8
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = load i32, i32* %41, align 4
  %302 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @DEBUGLOG(i32 8, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %295, i32 %297, i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %286, %282
  %304 = load i64, i64* %13, align 8
  ret i64 %304
}

declare dso_local i64 @ZSTD_hashPtr(i64*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_highbit32(i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
