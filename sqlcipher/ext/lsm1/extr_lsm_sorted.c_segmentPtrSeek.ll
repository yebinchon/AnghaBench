; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentPtrSeek.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentPtrSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (i8*, i32, i8*, i32)*, i32* }
%struct.TYPE_24__ = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_SEGMENTPTR_FREE_THRESHOLD = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@LSM_END_DELETE = common dso_local global i32 0, align 4
@LSM_POINT_DELETE = common dso_local global i32 0, align 4
@LSM_INSERT = common dso_local global i32 0, align 4
@CURSOR_SEEK_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i8*, i32, i32, i32*, i32*)* @segmentPtrSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segmentPtrSeek(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32 (i8*, i32, i8*, i32)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %32, align 8
  store i32 (i8*, i32, i8*, i32)* %33, i32 (i8*, i32, i8*, i32)** %17, align 8
  store i32 0, i32* %18, align 4
  %34 = load i32, i32* @LSM_OK, align 4
  store i32 %34, i32* %19, align 4
  store i64 0, i64* %22, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @segmentPtrSearchOversized(%struct.TYPE_25__* %35, %struct.TYPE_24__* %36, i32 %37, i8* %38, i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %22, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %64, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 9
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @lsmFsDbPageIsLast(%struct.TYPE_22__* %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %55, %48, %8
  %65 = phi i1 [ true, %48 ], [ true, %8 ], [ %63, %55 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %74 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %75 = call i32 @segmentPtrReset(%struct.TYPE_24__* %73, i32 %74)
  br label %370

76:                                               ; preds = %64
  store i32 0, i32* %20, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %21, align 4
  br label %81

81:                                               ; preds = %76, %149
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %21, align 4
  %84 = add nsw i32 %82, %83
  %85 = sdiv i32 %84, 2
  store i32 %85, i32* %23, align 4
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %21, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp eq i32 %90, %91
  br label %93

93:                                               ; preds = %89, %81
  %94 = phi i1 [ true, %81 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %98 = load i32, i32* %23, align 4
  %99 = call i32 @segmentPtrLoadCell(%struct.TYPE_24__* %97, i32 %98)
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @LSM_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %150

104:                                              ; preds = %93
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %106 = call i32 @segmentPtrKey(%struct.TYPE_24__* %105, i8** %24, i32* %25)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @rtTopic(i32 %109)
  store i32 %110, i32* %26, align 4
  %111 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %17, align 8
  %112 = load i32, i32* %26, align 4
  %113 = load i8*, i8** %24, align 8
  %114 = load i32, i32* %25, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @sortedKeyCompare(i32 (i8*, i32, i8*, i32)* %111, i32 %112, i8* %113, i32 %114, i32 %115, i8* %116, i32 %117)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %104
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  store i64 %128, i64* %22, align 8
  br label %129

129:                                              ; preds = %121, %104
  %130 = load i32, i32* %18, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %21, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %129
  br label %150

137:                                              ; preds = %132
  %138 = load i32, i32* %18, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* %23, align 4
  %142 = sub nsw i32 %141, 1
  %143 = load i32, i32* %20, align 4
  %144 = call i32 @LSM_MAX(i32 %142, i32 %143)
  store i32 %144, i32* %21, align 4
  br label %148

145:                                              ; preds = %137
  %146 = load i32, i32* %23, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %20, align 4
  br label %148

148:                                              ; preds = %145, %140
  br label %149

149:                                              ; preds = %148
  br label %81

150:                                              ; preds = %136, %103
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* @LSM_OK, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %338

154:                                              ; preds = %150
  %155 = load i32, i32* %18, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i32, i32* %20, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* %20, align 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br label %170

170:                                              ; preds = %164, %161, %157
  %171 = phi i1 [ false, %161 ], [ false, %157 ], [ %169, %164 ]
  br label %172

172:                                              ; preds = %170, %154
  %173 = phi i1 [ true, %154 ], [ %171, %170 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32, i32* %18, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %180 = load i32, i32* %20, align 4
  %181 = call i32 @segmentPtrLoadCell(%struct.TYPE_24__* %179, i32 %180)
  store i32 %181, i32* %19, align 4
  br label %182

182:                                              ; preds = %178, %172
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* @LSM_OK, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %199, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %18, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %186
  %190 = load i64, i64* %22, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %193, %196
  %198 = icmp eq i64 %190, %197
  br label %199

199:                                              ; preds = %189, %186, %182
  %200 = phi i1 [ true, %186 ], [ true, %182 ], [ %198, %189 ]
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* @LSM_OK, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %337

206:                                              ; preds = %199
  %207 = load i32, i32* %14, align 4
  switch i32 %207, label %336 [
    i32 130, label %208
    i32 128, label %292
    i32 129, label %300
  ]

208:                                              ; preds = %206
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %27, align 4
  %212 = load i32, i32* %18, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load i32, i32* %27, align 4
  %216 = load i32, i32* @LSM_START_DELETE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %235, label %219

219:                                              ; preds = %214, %208
  %220 = load i32, i32* %18, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i32, i32* %27, align 4
  %224 = load i32, i32* @LSM_END_DELETE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %235, label %227

227:                                              ; preds = %222, %219
  %228 = load i32, i32* %18, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %227
  %231 = load i32, i32* %27, align 4
  %232 = load i32, i32* @LSM_POINT_DELETE, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %230, %222, %214
  %236 = load i32*, i32** %16, align 8
  store i32 1, i32* %236, align 4
  br label %288

237:                                              ; preds = %230, %227
  %238 = load i32, i32* %18, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %287

240:                                              ; preds = %237
  %241 = load i32, i32* %27, align 4
  %242 = load i32, i32* @LSM_INSERT, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %287

245:                                              ; preds = %240
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  store i32* %250, i32** %28, align 8
  %251 = load i32*, i32** %16, align 8
  store i32 1, i32* %251, align 4
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load i32*, i32** %28, align 8
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @sortedBlobSet(i32* %257, i32* %259, i32 %262, i32 %265)
  store i32 %266, i32* %19, align 4
  %267 = load i32, i32* %19, align 4
  %268 = load i32, i32* @LSM_OK, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %245
  %271 = load i32*, i32** %28, align 8
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @sortedBlobSet(i32* %271, i32* %273, i32 %276, i32 %279)
  store i32 %280, i32* %19, align 4
  br label %281

281:                                              ; preds = %270, %245
  %282 = load i32, i32* @CURSOR_SEEK_EQ, align 4
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %281, %240, %237
  br label %288

288:                                              ; preds = %287, %235
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %290 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %291 = call i32 @segmentPtrReset(%struct.TYPE_24__* %289, i32 %290)
  br label %336

292:                                              ; preds = %206
  %293 = load i32, i32* %18, align 4
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %298 = call i32 @segmentPtrAdvance(%struct.TYPE_25__* %296, %struct.TYPE_24__* %297, i32 1)
  store i32 %298, i32* %19, align 4
  br label %299

299:                                              ; preds = %295, %292
  br label %336

300:                                              ; preds = %206
  %301 = load i32, i32* %18, align 4
  %302 = icmp sle i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %300
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @LSM_START_DELETE, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %320, label %310

310:                                              ; preds = %303, %300
  %311 = load i32, i32* %18, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %324

313:                                              ; preds = %310
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @LSM_END_DELETE, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %313, %303
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %323 = call i32 @segmentPtrFwdPointer(%struct.TYPE_25__* %321, %struct.TYPE_24__* %322, i64* %22)
  store i32 %323, i32* %19, align 4
  br label %324

324:                                              ; preds = %320, %313, %310
  %325 = load i32, i32* %18, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %324
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* @LSM_OK, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %327
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %334 = call i32 @segmentPtrAdvance(%struct.TYPE_25__* %332, %struct.TYPE_24__* %333, i32 0)
  store i32 %334, i32* %19, align 4
  br label %335

335:                                              ; preds = %331, %327, %324
  br label %336

336:                                              ; preds = %206, %335, %299, %288
  br label %337

337:                                              ; preds = %336, %199
  br label %338

338:                                              ; preds = %337, %150
  %339 = load i32, i32* %19, align 4
  %340 = load i32, i32* @LSM_OK, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %369

342:                                              ; preds = %338
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 4
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %369

347:                                              ; preds = %342
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %350 = call i64 @segmentPtrIgnoreSeparators(%struct.TYPE_25__* %348, %struct.TYPE_24__* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %369

352:                                              ; preds = %347
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = call i64 @rtIsSeparator(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %369

358:                                              ; preds = %352
  %359 = load i32, i32* %14, align 4
  %360 = icmp ne i32 %359, 130
  %361 = zext i1 %360 to i32
  %362 = call i32 @assert(i32 %361)
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %365 = load i32, i32* %14, align 4
  %366 = icmp eq i32 %365, 128
  %367 = zext i1 %366 to i32
  %368 = call i32 @segmentPtrAdvance(%struct.TYPE_25__* %363, %struct.TYPE_24__* %364, i32 %367)
  store i32 %368, i32* %19, align 4
  br label %369

369:                                              ; preds = %358, %352, %347, %342, %338
  br label %370

370:                                              ; preds = %369, %72
  %371 = load i32, i32* %19, align 4
  %372 = load i32, i32* @LSM_OK, align 4
  %373 = icmp ne i32 %371, %372
  br i1 %373, label %383, label %374

374:                                              ; preds = %370
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %377 = load i32, i32* %11, align 4
  %378 = load i8*, i8** %12, align 8
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* %14, align 4
  %381 = call i64 @assertSeekResult(%struct.TYPE_25__* %375, %struct.TYPE_24__* %376, i32 %377, i8* %378, i32 %379, i32 %380)
  %382 = icmp ne i64 %381, 0
  br label %383

383:                                              ; preds = %374, %370
  %384 = phi i1 [ true, %370 ], [ %382, %374 ]
  %385 = zext i1 %384 to i32
  %386 = call i32 @assert(i32 %385)
  %387 = load i64, i64* %22, align 8
  %388 = trunc i64 %387 to i32
  %389 = load i32*, i32** %15, align 8
  store i32 %388, i32* %389, align 4
  %390 = load i32, i32* %19, align 4
  ret i32 %390
}

declare dso_local i32 @segmentPtrSearchOversized(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lsmFsDbPageIsLast(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @segmentPtrReset(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @segmentPtrLoadCell(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @segmentPtrKey(%struct.TYPE_24__*, i8**, i32*) #1

declare dso_local i32 @rtTopic(i32) #1

declare dso_local i32 @sortedKeyCompare(i32 (i8*, i32, i8*, i32)*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @LSM_MAX(i32, i32) #1

declare dso_local i32 @sortedBlobSet(i32*, i32*, i32, i32) #1

declare dso_local i32 @segmentPtrAdvance(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @segmentPtrFwdPointer(%struct.TYPE_25__*, %struct.TYPE_24__*, i64*) #1

declare dso_local i64 @segmentPtrIgnoreSeparators(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i64 @rtIsSeparator(i32) #1

declare dso_local i64 @assertSeekResult(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
