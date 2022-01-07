; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MergePrefixLists.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MergePrefixLists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_20__*)* @fts5MergePrefixLists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5MergePrefixLists(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %362

26:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  %27 = bitcast %struct.TYPE_20__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 32, i1 false)
  %28 = bitcast %struct.TYPE_20__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 32, i1 false)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = add nsw i32 %37, 9
  %39 = call i64 @sqlite3Fts5BufferSize(i64* %30, %struct.TYPE_20__* %10, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %362

42:                                               ; preds = %26
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = call i32 @fts5DoclistIterInit(%struct.TYPE_20__* %43, %struct.TYPE_19__* %8)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = call i32 @fts5DoclistIterInit(%struct.TYPE_20__* %45, %struct.TYPE_19__* %9)
  br label %47

47:                                               ; preds = %42, %293
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @fts5MergeAppendDocid(%struct.TYPE_20__* %10, i64 %54, i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %62, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_20__* %10, i32* %59, i32 %66)
  %68 = call i32 @fts5DoclistIterNext(%struct.TYPE_19__* %8)
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %294

73:                                               ; preds = %53
  br label %293

74:                                               ; preds = %47
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @fts5MergeAppendDocid(%struct.TYPE_20__* %10, i64 %81, i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %89, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_20__* %10, i32* %86, i32 %93)
  %95 = call i32 @fts5DoclistIterNext(%struct.TYPE_19__* %9)
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  br label %294

100:                                              ; preds = %80
  br label %292

101:                                              ; preds = %74
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32* %111, i32** %17, align 8
  store i64 0, i64* %20, align 8
  %112 = call i32 @memset(i32* %21, i32 0, i32 4)
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @fts5MergeAppendDocid(%struct.TYPE_20__* %10, i64 %113, i64 %115)
  %117 = call i32 @fts5BufferZero(%struct.TYPE_20__* %11)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %121, %123
  %125 = call i64 @sqlite3Fts5BufferSize(i64* %119, %struct.TYPE_20__* %11, i32 %124)
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %101
  br label %294

131:                                              ; preds = %101
  %132 = load i32*, i32** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sqlite3Fts5PoslistNext64(i32* %132, i32 %134, i32* %14, i64* %12)
  %136 = load i32*, i32** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @sqlite3Fts5PoslistNext64(i32* %136, i32 %138, i32* %15, i64* %13)
  %140 = load i64, i64* %12, align 8
  %141 = icmp sge i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load i64, i64* %13, align 8
  %144 = icmp sge i64 %143, 0
  br label %145

145:                                              ; preds = %142, %131
  %146 = phi i1 [ false, %131 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %13, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @sqlite3Fts5PoslistSafeAppend(%struct.TYPE_20__* %11, i64* %20, i64 %153)
  %155 = load i32*, i32** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @sqlite3Fts5PoslistNext64(i32* %155, i32 %157, i32* %14, i64* %12)
  br label %166

159:                                              ; preds = %145
  %160 = load i64, i64* %13, align 8
  %161 = call i32 @sqlite3Fts5PoslistSafeAppend(%struct.TYPE_20__* %11, i64* %20, i64 %160)
  %162 = load i32*, i32** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @sqlite3Fts5PoslistNext64(i32* %162, i32 %164, i32* %15, i64* %13)
  br label %166

166:                                              ; preds = %159, %152
  %167 = load i64, i64* %12, align 8
  %168 = icmp sge i64 %167, 0
  br i1 %168, label %169, label %211

169:                                              ; preds = %166
  %170 = load i64, i64* %13, align 8
  %171 = icmp sge i64 %170, 0
  br i1 %171, label %172, label %211

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %172, %209
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %13, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %173
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %20, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i64, i64* %12, align 8
  %183 = call i32 @sqlite3Fts5PoslistSafeAppend(%struct.TYPE_20__* %11, i64* %20, i64 %182)
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i32*, i32** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @sqlite3Fts5PoslistNext64(i32* %185, i32 %187, i32* %14, i64* %12)
  %189 = load i64, i64* %12, align 8
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %210

192:                                              ; preds = %184
  br label %209

193:                                              ; preds = %173
  %194 = load i64, i64* %13, align 8
  %195 = load i64, i64* %20, align 8
  %196 = icmp ne i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert_nc(i32 %197)
  %199 = load i64, i64* %13, align 8
  %200 = call i32 @sqlite3Fts5PoslistSafeAppend(%struct.TYPE_20__* %11, i64* %20, i64 %199)
  %201 = load i32*, i32** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @sqlite3Fts5PoslistNext64(i32* %201, i32 %203, i32* %15, i64* %13)
  %205 = load i64, i64* %13, align 8
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %193
  br label %210

208:                                              ; preds = %193
  br label %209

209:                                              ; preds = %208, %192
  br label %173

210:                                              ; preds = %207, %191
  br label %211

211:                                              ; preds = %210, %169, %166
  %212 = load i64, i64* %12, align 8
  %213 = icmp sge i64 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %211
  %215 = load i64, i64* %12, align 8
  %216 = load i64, i64* %20, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i64, i64* %12, align 8
  %220 = call i32 @sqlite3Fts5PoslistSafeAppend(%struct.TYPE_20__* %11, i64* %20, i64 %219)
  br label %221

221:                                              ; preds = %218, %214
  %222 = load i32*, i32** %16, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32* %225, i32** %19, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sub nsw i32 %227, %228
  store i32 %229, i32* %18, align 4
  br label %251

230:                                              ; preds = %211
  %231 = load i64, i64* %13, align 8
  %232 = icmp sge i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i64, i64* %13, align 8
  %235 = load i64, i64* %20, align 8
  %236 = icmp ne i64 %234, %235
  br label %237

237:                                              ; preds = %233, %230
  %238 = phi i1 [ false, %230 ], [ %236, %233 ]
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = load i64, i64* %13, align 8
  %242 = call i32 @sqlite3Fts5PoslistSafeAppend(%struct.TYPE_20__* %11, i64* %20, i64 %241)
  %243 = load i32*, i32** %17, align 8
  %244 = load i32, i32* %15, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32* %246, i32** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sub nsw i32 %248, %249
  store i32 %250, i32* %18, align 4
  br label %251

251:                                              ; preds = %237, %221
  %252 = load i32, i32* %18, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i32*, i32** %19, align 8
  %256 = load i32, i32* %18, align 4
  %257 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_20__* %11, i32* %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %251
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = mul nsw i32 %260, 2
  %262 = call i32 @fts5BufferSafeAppendVarint(%struct.TYPE_20__* %10, i32 %261)
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_20__* %10, i32* %264, i32 %266)
  %268 = call i32 @fts5DoclistIterNext(%struct.TYPE_19__* %8)
  %269 = call i32 @fts5DoclistIterNext(%struct.TYPE_19__* %9)
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %274, %277
  %279 = add nsw i32 %278, 9
  %280 = icmp sle i32 %271, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @assert(i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  %285 = icmp eq i32* %284, null
  br i1 %285, label %290, label %286

286:                                              ; preds = %258
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %288 = load i32*, i32** %287, align 8
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %291

290:                                              ; preds = %286, %258
  br label %294

291:                                              ; preds = %286
  br label %292

292:                                              ; preds = %291, %100
  br label %293

293:                                              ; preds = %292, %73
  br label %47

294:                                              ; preds = %290, %130, %99, %72
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %315

298:                                              ; preds = %294
  %299 = load i64, i64* %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @fts5MergeAppendDocid(%struct.TYPE_20__* %10, i64 %299, i64 %301)
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = ptrtoint i32* %306 to i64
  %310 = ptrtoint i32* %308 to i64
  %311 = sub i64 %309, %310
  %312 = sdiv exact i64 %311, 4
  %313 = trunc i64 %312 to i32
  %314 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_20__* %10, i32* %304, i32 %313)
  br label %337

315:                                              ; preds = %294
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %336

319:                                              ; preds = %315
  %320 = load i64, i64* %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = call i32 @fts5MergeAppendDocid(%struct.TYPE_20__* %10, i64 %320, i64 %322)
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 4
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = ptrtoint i32* %327 to i64
  %331 = ptrtoint i32* %329 to i64
  %332 = sub i64 %330, %331
  %333 = sdiv exact i64 %332, 4
  %334 = trunc i64 %333 to i32
  %335 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_20__* %10, i32* %325, i32 %334)
  br label %336

336:                                              ; preds = %319, %315
  br label %337

337:                                              ; preds = %336, %298
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %342, %345
  %347 = add nsw i32 %346, 9
  %348 = icmp sle i32 %339, %347
  %349 = zext i1 %348 to i32
  %350 = call i32 @assert(i32 %349)
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = call i32 @fts5BufferSet(i64* %352, %struct.TYPE_20__* %353, i64 %356, i32* %358)
  %360 = call i32 @fts5BufferFree(%struct.TYPE_20__* %11)
  %361 = call i32 @fts5BufferFree(%struct.TYPE_20__* %10)
  br label %362

362:                                              ; preds = %41, %337, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @sqlite3Fts5BufferSize(i64*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @fts5DoclistIterInit(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @fts5MergeAppendDocid(%struct.TYPE_20__*, i64, i64) #2

declare dso_local i32 @fts5BufferSafeAppendBlob(%struct.TYPE_20__*, i32*, i32) #2

declare dso_local i32 @fts5DoclistIterNext(%struct.TYPE_19__*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @fts5BufferZero(%struct.TYPE_20__*) #2

declare dso_local i32 @sqlite3Fts5PoslistNext64(i32*, i32, i32*, i64*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @sqlite3Fts5PoslistSafeAppend(%struct.TYPE_20__*, i64*, i64) #2

declare dso_local i32 @assert_nc(i32) #2

declare dso_local i32 @fts5BufferSafeAppendVarint(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @fts5BufferSet(i64*, %struct.TYPE_20__*, i64, i32*) #2

declare dso_local i32 @fts5BufferFree(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
