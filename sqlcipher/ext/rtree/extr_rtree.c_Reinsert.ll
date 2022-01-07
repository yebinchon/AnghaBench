; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_Reinsert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_Reinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i64, i32* }

@RTREE_MAX_DIMENSIONS = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@RTREE_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*, %struct.TYPE_32__*, %struct.TYPE_33__*, i32)* @Reinsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Reinsert(%struct.TYPE_34__* %0, %struct.TYPE_32__* %1, %struct.TYPE_33__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca %struct.TYPE_32__*, align 8
  %25 = alloca %struct.TYPE_33__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %8, align 8
  store i32 %3, i32* %9, align 4
  %27 = load i32, i32* @RTREE_MAX_DIMENSIONS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %31 = load i32, i32* @SQLITE_OK, align 4
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* @RTREE_MAX_DIMENSIONS, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %30, i32 0, i32 %35)
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %38 = call i32 @NCELL(%struct.TYPE_32__* %37)
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  %42 = and i32 %41, -2
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 28
  %46 = trunc i64 %45 to i32
  %47 = call i64 @sqlite3_malloc64(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %48, %struct.TYPE_33__** %12, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %50 = icmp ne %struct.TYPE_33__* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %4
  %52 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %365

53:                                               ; preds = %4
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i64 %56
  %58 = bitcast %struct.TYPE_33__* %57 to i32*
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %13, align 8
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %144, %53
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %147

71:                                               ; preds = %67
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i64 %79
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %82 = call i32 @memcpy(%struct.TYPE_33__* %80, %struct.TYPE_33__* %81, i32 16)
  br label %92

83:                                               ; preds = %71
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i64 %89
  %91 = call i32 @nodeGetCell(%struct.TYPE_34__* %84, %struct.TYPE_32__* %85, i32 %86, %struct.TYPE_33__* %90)
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i32, i32* %18, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  store i32 0, i32* %17, align 4
  br label %98

98:                                               ; preds = %140, %92
  %99 = load i32, i32* %17, align 4
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %98
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = mul nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @DCOORD(i32 %115)
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %30, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = mul nsw i32 %128, 2
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @DCOORD(i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %30, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %134
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %104
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %98

143:                                              ; preds = %98
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %67

147:                                              ; preds = %67
  store i32 0, i32* %17, align 4
  br label %148

148:                                              ; preds = %165, %147
  %149 = load i32, i32* %17, align 4
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %30, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = mul nsw i32 %159, 2
  %161 = sdiv i32 %158, %160
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %30, i64 %163
  store i32 %161, i32* %164, align 4
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %148

168:                                              ; preds = %148
  store i32 0, i32* %18, align 4
  br label %169

169:                                              ; preds = %235, %168
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %238

173:                                              ; preds = %169
  %174 = load i32, i32* @RTREE_ZERO, align 4
  %175 = load i32*, i32** %13, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %174, i32* %178, align 4
  store i32 0, i32* %17, align 4
  br label %179

179:                                              ; preds = %231, %173
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %234

185:                                              ; preds = %179
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %17, align 4
  %193 = mul nsw i32 %192, 2
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @DCOORD(i32 %197)
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = mul nsw i32 %205, 2
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @DCOORD(i32 %209)
  %211 = sub nsw i32 %198, %210
  store i32 %211, i32* %22, align 4
  %212 = load i32, i32* %22, align 4
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %30, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %212, %216
  %218 = load i32, i32* %22, align 4
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %30, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %218, %222
  %224 = mul nsw i32 %217, %223
  %225 = load i32*, i32** %13, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, %224
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %185
  %232 = load i32, i32* %17, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %17, align 4
  br label %179

234:                                              ; preds = %179
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %18, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %18, align 4
  br label %169

238:                                              ; preds = %169
  %239 = load i32*, i32** %10, align 8
  %240 = load i32, i32* %14, align 4
  %241 = load i32*, i32** %13, align 8
  %242 = load i32*, i32** %11, align 8
  %243 = call i32 @SortByDistance(i32* %239, i32 %240, i32* %241, i32* %242)
  %244 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %246 = call i32 @nodeZero(%struct.TYPE_34__* %244, %struct.TYPE_32__* %245)
  store i32 0, i32* %18, align 4
  br label %247

247:                                              ; preds = %304, %238
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* @SQLITE_OK, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %259

251:                                              ; preds = %247
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %14, align 4
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %255 = call i32 @RTREE_MINCELLS(%struct.TYPE_34__* %254)
  %256 = add nsw i32 %255, 1
  %257 = sub nsw i32 %253, %256
  %258 = icmp slt i32 %252, %257
  br label %259

259:                                              ; preds = %251, %247
  %260 = phi i1 [ false, %247 ], [ %258, %251 ]
  br i1 %260, label %261, label %307

261:                                              ; preds = %259
  %262 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %263 = load i32*, i32** %10, align 8
  %264 = load i32, i32* %18, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i64 %268
  store %struct.TYPE_33__* %269, %struct.TYPE_33__** %23, align 8
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %271 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %273 = call i32 @nodeInsertCell(%struct.TYPE_34__* %270, %struct.TYPE_32__* %271, %struct.TYPE_33__* %272)
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %276, %279
  br i1 %280, label %281, label %303

281:                                              ; preds = %261
  %282 = load i32, i32* %9, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %281
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %287 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @rowidWrite(%struct.TYPE_34__* %285, i64 %288, i32 %291)
  store i32 %292, i32* %19, align 4
  br label %302

293:                                              ; preds = %281
  %294 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %296 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @parentWrite(%struct.TYPE_34__* %294, i64 %297, i32 %300)
  store i32 %301, i32* %19, align 4
  br label %302

302:                                              ; preds = %293, %284
  br label %303

303:                                              ; preds = %302, %261
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %18, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %18, align 4
  br label %247

307:                                              ; preds = %259
  %308 = load i32, i32* %19, align 4
  %309 = load i32, i32* @SQLITE_OK, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %307
  %312 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %313 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %314 = call i32 @fixBoundingBox(%struct.TYPE_34__* %312, %struct.TYPE_32__* %313)
  store i32 %314, i32* %19, align 4
  br label %315

315:                                              ; preds = %311, %307
  br label %316

316:                                              ; preds = %358, %315
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* @SQLITE_OK, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %316
  %321 = load i32, i32* %18, align 4
  %322 = load i32, i32* %14, align 4
  %323 = icmp slt i32 %321, %322
  br label %324

324:                                              ; preds = %320, %316
  %325 = phi i1 [ false, %316 ], [ %323, %320 ]
  br i1 %325, label %326, label %361

326:                                              ; preds = %324
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %328 = load i32*, i32** %10, align 8
  %329 = load i32, i32* %18, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i64 %333
  store %struct.TYPE_33__* %334, %struct.TYPE_33__** %25, align 8
  %335 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %336 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @ChooseLeaf(%struct.TYPE_34__* %335, %struct.TYPE_33__* %336, i32 %337, %struct.TYPE_32__** %24)
  store i32 %338, i32* %19, align 4
  %339 = load i32, i32* %19, align 4
  %340 = load i32, i32* @SQLITE_OK, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %357

342:                                              ; preds = %326
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %344 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %346 = load i32, i32* %9, align 4
  %347 = call i32 @rtreeInsertCell(%struct.TYPE_34__* %343, %struct.TYPE_32__* %344, %struct.TYPE_33__* %345, i32 %346)
  store i32 %347, i32* %19, align 4
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %349 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %350 = call i32 @nodeRelease(%struct.TYPE_34__* %348, %struct.TYPE_32__* %349)
  store i32 %350, i32* %26, align 4
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* @SQLITE_OK, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %356

354:                                              ; preds = %342
  %355 = load i32, i32* %26, align 4
  store i32 %355, i32* %19, align 4
  br label %356

356:                                              ; preds = %354, %342
  br label %357

357:                                              ; preds = %356, %326
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %18, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %18, align 4
  br label %316

361:                                              ; preds = %324
  %362 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %363 = call i32 @sqlite3_free(%struct.TYPE_33__* %362)
  %364 = load i32, i32* %19, align 4
  store i32 %364, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %365

365:                                              ; preds = %361, %51
  %366 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %366)
  %367 = load i32, i32* %5, align 4
  ret i32 %367
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @NCELL(%struct.TYPE_32__*) #2

declare dso_local i64 @sqlite3_malloc64(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_33__*, %struct.TYPE_33__*, i32) #2

declare dso_local i32 @nodeGetCell(%struct.TYPE_34__*, %struct.TYPE_32__*, i32, %struct.TYPE_33__*) #2

declare dso_local i32 @DCOORD(i32) #2

declare dso_local i32 @SortByDistance(i32*, i32, i32*, i32*) #2

declare dso_local i32 @nodeZero(%struct.TYPE_34__*, %struct.TYPE_32__*) #2

declare dso_local i32 @RTREE_MINCELLS(%struct.TYPE_34__*) #2

declare dso_local i32 @nodeInsertCell(%struct.TYPE_34__*, %struct.TYPE_32__*, %struct.TYPE_33__*) #2

declare dso_local i32 @rowidWrite(%struct.TYPE_34__*, i64, i32) #2

declare dso_local i32 @parentWrite(%struct.TYPE_34__*, i64, i32) #2

declare dso_local i32 @fixBoundingBox(%struct.TYPE_34__*, %struct.TYPE_32__*) #2

declare dso_local i32 @ChooseLeaf(%struct.TYPE_34__*, %struct.TYPE_33__*, i32, %struct.TYPE_32__**) #2

declare dso_local i32 @rtreeInsertCell(%struct.TYPE_34__*, %struct.TYPE_32__*, %struct.TYPE_33__*, i32) #2

declare dso_local i32 @nodeRelease(%struct.TYPE_34__*, %struct.TYPE_32__*) #2

declare dso_local i32 @sqlite3_free(%struct.TYPE_33__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
