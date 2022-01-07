; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hmput_key.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hmput_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_10__, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64*, i64* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }

@STBDS_BUCKET_LENGTH = common dso_local global i32 0, align 4
@stbds_hash_grow = common dso_local global i32 0, align 4
@STBDS_HM_STRING = common dso_local global i32 0, align 4
@stbds_hash_probes = common dso_local global i32 0, align 4
@STBDS_BUCKET_SHIFT = common dso_local global i64 0, align 8
@STBDS_BUCKET_MASK = common dso_local global i64 0, align 8
@STBDS_INDEX_DELETED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stbds_hmput_key(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_9__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %5
  %30 = load i64, i64* %8, align 8
  %31 = call i8* @stbds_arrgrowf(i8* null, i64 %30, i32 0, i32 1)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @memset(i8* %32, i32 0, i64 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call %struct.TYPE_11__* @stbds_header(i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i8* @STBDS_ARR_TO_HASH(i8* %40, i64 %41)
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %29, %5
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i8* @STBDS_HASH_TO_ARR(i8* %45, i64 %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call %struct.TYPE_11__* @stbds_header(i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %13, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = icmp eq %struct.TYPE_8__* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %43
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %54, %43
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %64 = icmp eq %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @STBDS_BUCKET_LENGTH, align 4
  br label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %70, 2
  br label %72

72:                                               ; preds = %67, %65
  %73 = phi i32 [ %66, %65 ], [ %71, %67 ]
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = call %struct.TYPE_8__* @stbds_make_hash_index(i64 %75, %struct.TYPE_8__* %76)
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %14, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = call i32 @STBDS_FREE(i32* null, %struct.TYPE_8__* %81)
  br label %83

83:                                               ; preds = %80, %72
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %13, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call %struct.TYPE_11__* @stbds_header(i8* %85)
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %87, align 8
  %88 = load i32, i32* @stbds_hash_grow, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @stbds_hash_grow, align 4
  %90 = call i32 @STBDS_STATS(i32 %89)
  br label %91

91:                                               ; preds = %83, %54
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @STBDS_HM_STRING, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @stbds_hash_string(i8* %96, i32 %99)
  br label %108

101:                                              ; preds = %91
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @stbds_hash_bytes(i8* %102, i64 %103, i32 %106)
  br label %108

108:                                              ; preds = %101, %95
  %109 = phi i64 [ %100, %95 ], [ %107, %101 ]
  store i64 %109, i64* %16, align 8
  %110 = load i32, i32* @STBDS_BUCKET_LENGTH, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %17, align 8
  store i32 -1, i32* %21, align 4
  %112 = load i64, i64* %16, align 8
  %113 = icmp ult i64 %112, 2
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i64, i64* %16, align 8
  %116 = add i64 %115, 2
  store i64 %116, i64* %16, align 8
  br label %117

117:                                              ; preds = %114, %108
  %118 = load i64, i64* %16, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @stbds_probe_position(i64 %118, i32 %121, i32 %124)
  store i64 %125, i64* %20, align 8
  br label %126

126:                                              ; preds = %307, %117
  %127 = load i32, i32* @stbds_hash_probes, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @stbds_hash_probes, align 4
  %129 = call i32 @STBDS_STATS(i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* @STBDS_BUCKET_SHIFT, align 8
  %135 = lshr i64 %133, %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %135
  store %struct.TYPE_9__* %136, %struct.TYPE_9__** %22, align 8
  %137 = load i64, i64* %20, align 8
  %138 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %139 = and i64 %137, %138
  store i64 %139, i64* %19, align 8
  br label %140

140:                                              ; preds = %219, %126
  %141 = load i64, i64* %19, align 8
  %142 = load i32, i32* @STBDS_BUCKET_LENGTH, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %141, %143
  br i1 %144, label %145, label %222

145:                                              ; preds = %140
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* %19, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %16, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %180

154:                                              ; preds = %145
  %155 = load i8*, i8** %12, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %19, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @stbds_is_key_equal(i8* %155, i64 %156, i8* %157, i64 %158, i32 %159, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %154
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* %19, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i8*
  store i8* %175, i8** %23, align 8
  %176 = load i8*, i8** %23, align 8
  %177 = load i64, i64* %8, align 8
  %178 = call i8* @STBDS_ARR_TO_HASH(i8* %176, i64 %177)
  store i8* %178, i8** %6, align 8
  br label %435

179:                                              ; preds = %154
  br label %218

180:                                              ; preds = %145
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* %19, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %180
  %189 = load i64, i64* %20, align 8
  %190 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %191 = xor i64 %190, -1
  %192 = and i64 %189, %191
  %193 = load i64, i64* %19, align 8
  %194 = add i64 %192, %193
  store i64 %194, i64* %20, align 8
  br label %322

195:                                              ; preds = %180
  %196 = load i32, i32* %21, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %195
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i64*, i64** %200, align 8
  %202 = load i64, i64* %19, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @STBDS_INDEX_DELETED, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %198
  %208 = load i64, i64* %20, align 8
  %209 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %210 = xor i64 %209, -1
  %211 = and i64 %208, %210
  %212 = load i64, i64* %19, align 8
  %213 = add i64 %211, %212
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %21, align 4
  br label %215

215:                                              ; preds = %207, %198
  br label %216

216:                                              ; preds = %215, %195
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %179
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %19, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %19, align 8
  br label %140

222:                                              ; preds = %140
  %223 = load i64, i64* %20, align 8
  %224 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %225 = and i64 %223, %224
  store i64 %225, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %226

226:                                              ; preds = %304, %222
  %227 = load i64, i64* %19, align 8
  %228 = load i64, i64* %18, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %307

230:                                              ; preds = %226
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = load i64, i64* %19, align 8
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %16, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %265

239:                                              ; preds = %230
  %240 = load i8*, i8** %12, align 8
  %241 = load i64, i64* %8, align 8
  %242 = load i8*, i8** %9, align 8
  %243 = load i64, i64* %10, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 1
  %247 = load i64*, i64** %246, align 8
  %248 = load i64, i64* %19, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = call i64 @stbds_is_key_equal(i8* %240, i64 %241, i8* %242, i64 %243, i32 %244, i64 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %264

253:                                              ; preds = %239
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load i64*, i64** %255, align 8
  %257 = load i64, i64* %19, align 8
  %258 = getelementptr inbounds i64, i64* %256, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = inttoptr i64 %259 to i8*
  store i8* %260, i8** %24, align 8
  %261 = load i8*, i8** %24, align 8
  %262 = load i64, i64* %8, align 8
  %263 = call i8* @STBDS_ARR_TO_HASH(i8* %261, i64 %262)
  store i8* %263, i8** %6, align 8
  br label %435

264:                                              ; preds = %239
  br label %303

265:                                              ; preds = %230
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = load i64, i64* %19, align 8
  %270 = getelementptr inbounds i64, i64* %268, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %265
  %274 = load i64, i64* %20, align 8
  %275 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %276 = xor i64 %275, -1
  %277 = and i64 %274, %276
  %278 = load i64, i64* %19, align 8
  %279 = add i64 %277, %278
  store i64 %279, i64* %20, align 8
  br label %322

280:                                              ; preds = %265
  %281 = load i32, i32* %21, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %301

283:                                              ; preds = %280
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load i64*, i64** %285, align 8
  %287 = load i64, i64* %19, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @STBDS_INDEX_DELETED, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %300

292:                                              ; preds = %283
  %293 = load i64, i64* %20, align 8
  %294 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %295 = xor i64 %294, -1
  %296 = and i64 %293, %295
  %297 = load i64, i64* %19, align 8
  %298 = add i64 %296, %297
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %21, align 4
  br label %300

300:                                              ; preds = %292, %283
  br label %301

301:                                              ; preds = %300, %280
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302, %264
  br label %304

304:                                              ; preds = %303
  %305 = load i64, i64* %19, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %19, align 8
  br label %226

307:                                              ; preds = %226
  %308 = load i64, i64* %17, align 8
  %309 = load i64, i64* %20, align 8
  %310 = add i64 %309, %308
  store i64 %310, i64* %20, align 8
  %311 = load i32, i32* @STBDS_BUCKET_LENGTH, align 4
  %312 = sext i32 %311 to i64
  %313 = load i64, i64* %17, align 8
  %314 = add i64 %313, %312
  store i64 %314, i64* %17, align 8
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = sub nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = load i64, i64* %20, align 8
  %321 = and i64 %320, %319
  store i64 %321, i64* %20, align 8
  br label %126

322:                                              ; preds = %273, %188
  %323 = load i32, i32* %21, align 4
  %324 = icmp sge i32 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %322
  %326 = load i32, i32* %21, align 4
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %20, align 8
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 8
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %329, align 8
  br label %332

332:                                              ; preds = %325, %322
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = add nsw i64 %335, 1
  store i64 %336, i64* %334, align 8
  %337 = load i8*, i8** %7, align 8
  %338 = call i64 @stbds_arrlen(i8* %337)
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %25, align 4
  %340 = load i32, i32* %25, align 4
  %341 = sext i32 %340 to i64
  %342 = add i64 %341, 1
  %343 = load i8*, i8** %7, align 8
  %344 = call i64 @stbds_arrcap(i8* %343)
  %345 = icmp ugt i64 %342, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %332
  %347 = load i8*, i8** %7, align 8
  %348 = load i64, i64* %8, align 8
  %349 = call i8* @stbds_arrgrowf(i8* %347, i64 %348, i32 1, i32 0)
  store i8* %349, i8** %7, align 8
  br label %350

350:                                              ; preds = %346, %332
  %351 = load i8*, i8** %7, align 8
  %352 = load i64, i64* %8, align 8
  %353 = call i8* @STBDS_ARR_TO_HASH(i8* %351, i64 %352)
  store i8* %353, i8** %12, align 8
  %354 = load i32, i32* %25, align 4
  %355 = sext i32 %354 to i64
  %356 = add i64 %355, 1
  %357 = load i8*, i8** %7, align 8
  %358 = call i64 @stbds_arrcap(i8* %357)
  %359 = icmp ule i64 %356, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 @STBDS_ASSERT(i32 %360)
  %362 = load i32, i32* %25, align 4
  %363 = add nsw i32 %362, 1
  %364 = load i8*, i8** %7, align 8
  %365 = call %struct.TYPE_11__* @stbds_header(i8* %364)
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  store i32 %363, i32* %366, align 8
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %368, align 8
  %370 = load i64, i64* %20, align 8
  %371 = load i64, i64* @STBDS_BUCKET_SHIFT, align 8
  %372 = lshr i64 %370, %371
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i64 %372
  store %struct.TYPE_9__* %373, %struct.TYPE_9__** %22, align 8
  %374 = load i64, i64* %16, align 8
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 0
  %377 = load i64*, i64** %376, align 8
  %378 = load i64, i64* %20, align 8
  %379 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %380 = and i64 %378, %379
  %381 = getelementptr inbounds i64, i64* %377, i64 %380
  store i64 %374, i64* %381, align 8
  %382 = load i32, i32* %25, align 4
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 1
  %387 = load i64*, i64** %386, align 8
  %388 = load i64, i64* %20, align 8
  %389 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %390 = and i64 %388, %389
  %391 = getelementptr inbounds i64, i64* %387, i64 %390
  store i64 %384, i64* %391, align 8
  %392 = load i32, i32* %25, align 4
  %393 = sub nsw i32 %392, 1
  %394 = sext i32 %393 to i64
  %395 = inttoptr i64 %394 to i8*
  store i8* %395, i8** %26, align 8
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  switch i32 %399, label %422 [
    i32 128, label %400
    i32 129, label %410
  ]

400:                                              ; preds = %350
  %401 = load i8*, i8** %9, align 8
  %402 = call i8* @stbds_strdup(i8* %401)
  %403 = load i8*, i8** %26, align 8
  %404 = load i64, i64* %8, align 8
  %405 = load i32, i32* %25, align 4
  %406 = sext i32 %405 to i64
  %407 = mul i64 %404, %406
  %408 = getelementptr inbounds i8, i8* %403, i64 %407
  %409 = bitcast i8* %408 to i8**
  store i8* %402, i8** %409, align 8
  br label %431

410:                                              ; preds = %350
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 3
  %413 = load i8*, i8** %9, align 8
  %414 = call i8* @stbds_stralloc(%struct.TYPE_10__* %412, i8* %413)
  %415 = load i8*, i8** %26, align 8
  %416 = load i64, i64* %8, align 8
  %417 = load i32, i32* %25, align 4
  %418 = sext i32 %417 to i64
  %419 = mul i64 %416, %418
  %420 = getelementptr inbounds i8, i8* %415, i64 %419
  %421 = bitcast i8* %420 to i8**
  store i8* %414, i8** %421, align 8
  br label %431

422:                                              ; preds = %350
  %423 = load i8*, i8** %9, align 8
  %424 = load i8*, i8** %26, align 8
  %425 = load i64, i64* %8, align 8
  %426 = load i32, i32* %25, align 4
  %427 = sext i32 %426 to i64
  %428 = mul i64 %425, %427
  %429 = getelementptr inbounds i8, i8* %424, i64 %428
  %430 = bitcast i8* %429 to i8**
  store i8* %423, i8** %430, align 8
  br label %431

431:                                              ; preds = %422, %410, %400
  %432 = load i8*, i8** %7, align 8
  %433 = load i64, i64* %8, align 8
  %434 = call i8* @STBDS_ARR_TO_HASH(i8* %432, i64 %433)
  store i8* %434, i8** %6, align 8
  br label %435

435:                                              ; preds = %431, %253, %168
  %436 = load i8*, i8** %6, align 8
  ret i8* %436
}

declare dso_local i8* @stbds_arrgrowf(i8*, i64, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.TYPE_11__* @stbds_header(i8*) #1

declare dso_local i8* @STBDS_ARR_TO_HASH(i8*, i64) #1

declare dso_local i8* @STBDS_HASH_TO_ARR(i8*, i64) #1

declare dso_local %struct.TYPE_8__* @stbds_make_hash_index(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @STBDS_FREE(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @STBDS_STATS(i32) #1

declare dso_local i64 @stbds_hash_string(i8*, i32) #1

declare dso_local i64 @stbds_hash_bytes(i8*, i64, i32) #1

declare dso_local i64 @stbds_probe_position(i64, i32, i32) #1

declare dso_local i64 @stbds_is_key_equal(i8*, i64, i8*, i64, i32, i64) #1

declare dso_local i64 @stbds_arrlen(i8*) #1

declare dso_local i64 @stbds_arrcap(i8*) #1

declare dso_local i32 @STBDS_ASSERT(i32) #1

declare dso_local i8* @stbds_strdup(i8*) #1

declare dso_local i8* @stbds_stralloc(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
