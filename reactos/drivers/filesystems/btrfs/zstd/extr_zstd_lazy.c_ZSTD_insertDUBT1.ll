; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_lazy.c_ZSTD_insertDUBT1.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_lazy.c_ZSTD_insertDUBT1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64*, i64*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ZSTD_insertDUBT1(%u) (dictLimit=%u, lowLimit=%u)\00", align 1
@ZSTD_extDict = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"ZSTD_insertDUBT1: comparing %u with %u : found %u common bytes \00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"ZSTD_insertDUBT1: %u (>btLow=%u) is smaller : next => %u\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ZSTD_insertDUBT1: %u (>btLow=%u) is larger => %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i64*, i32, i32, i64)* @ZSTD_insertDUBT1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_insertDUBT1(%struct.TYPE_6__* %0, i32 %1, i64* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %13, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %14, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %19, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  store i64* %54, i64** %20, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %6
  %63 = load i64*, i64** %19, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  br label %72

67:                                               ; preds = %6
  %68 = load i64*, i64** %20, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i64* [ %66, %62 ], [ %71, %67 ]
  store i64* %73, i64** %22, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i64*, i64** %9, align 8
  br label %84

79:                                               ; preds = %72
  %80 = load i64*, i64** %20, align 8
  %81 = load i32, i32* %21, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  br label %84

84:                                               ; preds = %79, %77
  %85 = phi i64* [ %78, %77 ], [ %83, %79 ]
  store i64* %85, i64** %23, align 8
  %86 = load i64*, i64** %20, align 8
  %87 = load i32, i32* %21, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64* %89, i64** %24, align 8
  %90 = load i64*, i64** %19, align 8
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64* %93, i64** %25, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %16, align 4
  %97 = and i32 %95, %96
  %98 = mul nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  store i32* %100, i32** %27, align 8
  %101 = load i32*, i32** %27, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32* %102, i32** %28, align 8
  %103 = load i32*, i32** %27, align 8
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %29, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %31, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %31, align 4
  %112 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp sge i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i64*, i64** %22, align 8
  %119 = load i64*, i64** %23, align 8
  %120 = icmp ult i64* %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  br label %123

123:                                              ; preds = %302, %84
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %10, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* %29, align 4
  %129 = load i32, i32* %31, align 4
  %130 = icmp sgt i32 %128, %129
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i1 [ false, %123 ], [ %130, %127 ]
  br i1 %132, label %133, label %303

133:                                              ; preds = %131
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %29, align 4
  %136 = load i32, i32* %16, align 4
  %137 = and i32 %135, %136
  %138 = mul nsw i32 2, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  store i32* %140, i32** %32, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %18, align 8
  %143 = call i64 @MIN(i64 %141, i64 %142)
  store i64 %143, i64* %33, align 8
  %144 = load i32, i32* %29, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @ZSTD_extDict, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %164, label %152

152:                                              ; preds = %133
  %153 = load i32, i32* %29, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %33, align 8
  %156 = add i64 %154, %155
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp uge i64 %156, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %21, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %211

164:                                              ; preds = %160, %152, %133
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @ZSTD_extDict, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %29, align 4
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %33, align 8
  %172 = add i64 %170, %171
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp uge i64 %172, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %168, %164
  %177 = load i64*, i64** %19, align 8
  br label %180

178:                                              ; preds = %168
  %179 = load i64*, i64** %20, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i64* [ %177, %176 ], [ %179, %178 ]
  store i64* %181, i64** %34, align 8
  %182 = load i32, i32* %29, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %33, align 8
  %185 = add i64 %183, %184
  %186 = load i32, i32* %21, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp uge i64 %185, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %21, align 4
  %192 = icmp slt i32 %190, %191
  br label %193

193:                                              ; preds = %189, %180
  %194 = phi i1 [ true, %180 ], [ %192, %189 ]
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load i64*, i64** %34, align 8
  %198 = load i32, i32* %29, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  store i64* %200, i64** %26, align 8
  %201 = load i64*, i64** %22, align 8
  %202 = load i64, i64* %33, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  %204 = load i64*, i64** %26, align 8
  %205 = load i64, i64* %33, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  %207 = load i64*, i64** %23, align 8
  %208 = call i64 @ZSTD_count(i64* %203, i64* %206, i64* %207)
  %209 = load i64, i64* %33, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %33, align 8
  br label %241

211:                                              ; preds = %160
  %212 = load i64*, i64** %20, align 8
  %213 = load i32, i32* %29, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  store i64* %215, i64** %26, align 8
  %216 = load i64*, i64** %22, align 8
  %217 = load i64, i64* %33, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64*, i64** %26, align 8
  %220 = load i64, i64* %33, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = load i64*, i64** %23, align 8
  %223 = load i64*, i64** %24, align 8
  %224 = load i64*, i64** %25, align 8
  %225 = call i64 @ZSTD_count_2segments(i64* %218, i64* %221, i64* %222, i64* %223, i64* %224)
  %226 = load i64, i64* %33, align 8
  %227 = add i64 %226, %225
  store i64 %227, i64* %33, align 8
  %228 = load i32, i32* %29, align 4
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* %33, align 8
  %231 = add i64 %229, %230
  %232 = load i32, i32* %21, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp uge i64 %231, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %211
  %236 = load i64*, i64** %19, align 8
  %237 = load i32, i32* %29, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  store i64* %239, i64** %26, align 8
  br label %240

240:                                              ; preds = %235, %211
  br label %241

241:                                              ; preds = %240, %193
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %29, align 4
  %244 = load i64, i64* %33, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %242, i32 %243, i32 %245)
  %247 = load i64*, i64** %22, align 8
  %248 = load i64, i64* %33, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = load i64*, i64** %23, align 8
  %251 = icmp eq i64* %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %241
  br label %303

253:                                              ; preds = %241
  %254 = load i64*, i64** %26, align 8
  %255 = load i64, i64* %33, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load i64*, i64** %22, align 8
  %259 = load i64, i64* %33, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = icmp slt i64 %257, %261
  br i1 %262, label %263, label %283

263:                                              ; preds = %253
  %264 = load i32, i32* %29, align 4
  %265 = load i32*, i32** %27, align 8
  store i32 %264, i32* %265, align 4
  %266 = load i64, i64* %33, align 8
  store i64 %266, i64* %17, align 8
  %267 = load i32, i32* %29, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp sle i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  store i32* %30, i32** %27, align 8
  br label %303

271:                                              ; preds = %263
  %272 = load i32, i32* %29, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i32*, i32** %32, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %272, i32 %273, i32 %276)
  %278 = load i32*, i32** %32, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  store i32* %279, i32** %27, align 8
  %280 = load i32*, i32** %32, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %29, align 4
  br label %302

283:                                              ; preds = %253
  %284 = load i32, i32* %29, align 4
  %285 = load i32*, i32** %28, align 8
  store i32 %284, i32* %285, align 4
  %286 = load i64, i64* %33, align 8
  store i64 %286, i64* %18, align 8
  %287 = load i32, i32* %29, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  store i32* %30, i32** %28, align 8
  br label %303

291:                                              ; preds = %283
  %292 = load i32, i32* %29, align 4
  %293 = load i32, i32* %11, align 4
  %294 = load i32*, i32** %32, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %292, i32 %293, i32 %296)
  %298 = load i32*, i32** %32, align 8
  store i32* %298, i32** %28, align 8
  %299 = load i32*, i32** %32, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %29, align 4
  br label %302

302:                                              ; preds = %291, %271
  br label %123

303:                                              ; preds = %290, %270, %252, %131
  %304 = load i32*, i32** %28, align 8
  store i32 0, i32* %304, align 4
  %305 = load i32*, i32** %27, align 8
  store i32 0, i32* %305, align 4
  ret void
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @ZSTD_count(i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
