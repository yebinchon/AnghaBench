; ModuleID = '/home/carl/AnghaBench/rufus/src/bled/extr_decompress_gunzip.c_huft_build.c'
source_filename = "/home/carl/AnghaBench/rufus/src/bled/extr_decompress_gunzip.c_huft_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i8, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16, %struct.TYPE_6__* }

@BMAX = common dso_local global i32 0, align 4
@N_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i16*, i8*, %struct.TYPE_6__**, i32*)* @huft_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huft_build(i32* %0, i32 %1, i32 %2, i16* %3, i8* %4, %struct.TYPE_6__** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_6__*, align 8
  %28 = alloca %struct.TYPE_6__, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i16* %3, i16** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_6__** %5, %struct.TYPE_6__*** %14, align 8
  store i32* %6, i32** %15, align 8
  %38 = load i32, i32* @BMAX, align 4
  %39 = add nsw i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %17, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %18, align 8
  %43 = load i32, i32* @BMAX, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca %struct.TYPE_6__*, i64 %44, align 16
  store i64 %44, i64* %29, align 8
  %46 = load i32, i32* @N_MAX, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %30, align 8
  %49 = load i32, i32* @BMAX, align 4
  %50 = add nsw i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %31, align 8
  %53 = load i32, i32* @BMAX, align 4
  %54 = add nsw i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %33, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ugt i32 %57, 256
  br i1 %58, label %59, label %63

59:                                               ; preds = %7
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 256
  %62 = load i32, i32* %61, align 4
  br label %65

63:                                               ; preds = %7
  %64 = load i32, i32* @BMAX, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %62, %59 ], [ %64, %63 ]
  store i32 %66, i32* %19, align 4
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %67, align 8
  %68 = mul nuw i64 4, %40
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(i32* %42, i32 0, i32 %69)
  %71 = load i32*, i32** %9, align 8
  store i32* %71, i32** %26, align 8
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %23, align 4
  br label %73

73:                                               ; preds = %82, %65
  %74 = load i32*, i32** %26, align 8
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %42, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** %26, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %26, align 8
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %23, align 4
  %84 = add i32 %83, -1
  store i32 %84, i32* %23, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %73, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds i32, i32* %42, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32*, i32** %15, align 8
  store i32 0, i32* %92, align 4
  store i32 2, i32* %8, align 4
  store i32 1, i32* %37, align 4
  br label %532

93:                                               ; preds = %86
  store i32 1, i32* %24, align 4
  br label %94

94:                                               ; preds = %107, %93
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* @BMAX, align 4
  %97 = icmp ule i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %24, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %42, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br label %104

104:                                              ; preds = %98, %94
  %105 = phi i1 [ false, %94 ], [ %103, %98 ]
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %24, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %24, align 4
  br label %94

110:                                              ; preds = %104
  %111 = load i32, i32* %24, align 4
  store i32 %111, i32* %25, align 4
  %112 = load i32, i32* @BMAX, align 4
  store i32 %112, i32* %23, align 4
  br label %113

113:                                              ; preds = %125, %110
  %114 = load i32, i32* %23, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %42, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* %23, align 4
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %119, %113
  %123 = phi i1 [ false, %113 ], [ %121, %119 ]
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %23, align 4
  %127 = add i32 %126, -1
  store i32 %127, i32* %23, align 4
  br label %113

128:                                              ; preds = %122
  %129 = load i32, i32* %23, align 4
  store i32 %129, i32* %21, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %24, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %24, align 4
  br label %148

136:                                              ; preds = %128
  %137 = load i32*, i32** %15, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %23, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %23, align 4
  br label %146

143:                                              ; preds = %136
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %144, align 4
  br label %146

146:                                              ; preds = %143, %141
  %147 = phi i32 [ %142, %141 ], [ %145, %143 ]
  br label %148

148:                                              ; preds = %146, %134
  %149 = phi i32 [ %135, %134 ], [ %147, %146 ]
  %150 = load i32*, i32** %15, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %24, align 4
  %152 = shl i32 1, %151
  store i32 %152, i32* %35, align 4
  br label %153

153:                                              ; preds = %168, %148
  %154 = load i32, i32* %24, align 4
  %155 = load i32, i32* %23, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load i32, i32* %24, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %42, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %35, align 4
  %163 = sub i32 %162, %161
  store i32 %163, i32* %35, align 4
  %164 = load i32, i32* %35, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  store i32 2, i32* %8, align 4
  store i32 1, i32* %37, align 4
  br label %532

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %24, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %24, align 4
  %171 = load i32, i32* %35, align 4
  %172 = shl i32 %171, 1
  store i32 %172, i32* %35, align 4
  br label %153

173:                                              ; preds = %153
  %174 = load i32, i32* %23, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %42, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %35, align 4
  %179 = sub i32 %178, %177
  store i32 %179, i32* %35, align 4
  %180 = load i32, i32* %35, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  store i32 2, i32* %8, align 4
  store i32 1, i32* %37, align 4
  br label %532

183:                                              ; preds = %173
  %184 = load i32, i32* %35, align 4
  %185 = load i32, i32* %23, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %42, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, %184
  store i32 %189, i32* %187, align 4
  store i32 0, i32* %24, align 4
  %190 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 0, i32* %190, align 4
  %191 = getelementptr inbounds i32, i32* %42, i64 1
  store i32* %191, i32** %26, align 8
  %192 = getelementptr inbounds i32, i32* %56, i64 2
  store i32* %192, i32** %34, align 8
  br label %193

193:                                              ; preds = %197, %183
  %194 = load i32, i32* %23, align 4
  %195 = add i32 %194, -1
  store i32 %195, i32* %23, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %193
  %198 = load i32*, i32** %26, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %26, align 8
  %200 = load i32, i32* %198, align 4
  %201 = load i32, i32* %24, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %24, align 4
  %203 = load i32, i32* %24, align 4
  %204 = load i32*, i32** %34, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %34, align 8
  store i32 %203, i32* %204, align 4
  br label %193

206:                                              ; preds = %193
  %207 = load i32*, i32** %9, align 8
  store i32* %207, i32** %26, align 8
  store i32 0, i32* %23, align 4
  br label %208

208:                                              ; preds = %224, %206
  %209 = load i32*, i32** %26, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %26, align 8
  %211 = load i32, i32* %209, align 4
  store i32 %211, i32* %24, align 4
  %212 = load i32, i32* %24, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %208
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* %24, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %56, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %218, align 4
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %48, i64 %221
  store i32 %215, i32* %222, align 4
  br label %223

223:                                              ; preds = %214, %208
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %23, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %208, label %229

229:                                              ; preds = %224
  store i32 0, i32* %23, align 4
  %230 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 0, i32* %230, align 16
  store i32* %48, i32** %26, align 8
  store i32 -1, i32* %22, align 4
  %231 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 0, i32* %231, align 16
  store i32 0, i32* %32, align 4
  %232 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %232, align 16
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %27, align 8
  store i32 0, i32* %36, align 4
  br label %233

233:                                              ; preds = %517, %229
  %234 = load i32, i32* %25, align 4
  %235 = load i32, i32* %21, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %520

237:                                              ; preds = %233
  %238 = load i32, i32* %25, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %42, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %16, align 4
  br label %242

242:                                              ; preds = %515, %237
  %243 = load i32, i32* %16, align 4
  %244 = add i32 %243, -1
  store i32 %244, i32* %16, align 4
  %245 = icmp ne i32 %243, 0
  br i1 %245, label %246, label %516

246:                                              ; preds = %242
  br label %247

247:                                              ; preds = %400, %246
  %248 = load i32, i32* %25, align 4
  %249 = load i32, i32* %22, align 4
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %52, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp sgt i32 %248, %253
  br i1 %254, label %255, label %401

255:                                              ; preds = %247
  %256 = load i32, i32* %22, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %22, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %52, i64 %258
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %32, align 4
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* %32, align 4
  %263 = sub nsw i32 %261, %262
  store i32 %263, i32* %36, align 4
  %264 = load i32, i32* %36, align 4
  %265 = load i32*, i32** %15, align 8
  %266 = load i32, i32* %265, align 4
  %267 = icmp ugt i32 %264, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %255
  %269 = load i32*, i32** %15, align 8
  %270 = load i32, i32* %269, align 4
  br label %273

271:                                              ; preds = %255
  %272 = load i32, i32* %36, align 4
  br label %273

273:                                              ; preds = %271, %268
  %274 = phi i32 [ %270, %268 ], [ %272, %271 ]
  store i32 %274, i32* %36, align 4
  %275 = load i32, i32* %25, align 4
  %276 = load i32, i32* %32, align 4
  %277 = sub nsw i32 %275, %276
  store i32 %277, i32* %24, align 4
  %278 = load i32, i32* %24, align 4
  %279 = shl i32 1, %278
  store i32 %279, i32* %20, align 4
  %280 = load i32, i32* %20, align 4
  %281 = load i32, i32* %16, align 4
  %282 = add i32 %281, 1
  %283 = icmp ugt i32 %280, %282
  br i1 %283, label %284, label %312

284:                                              ; preds = %273
  %285 = load i32, i32* %16, align 4
  %286 = add i32 %285, 1
  %287 = load i32, i32* %20, align 4
  %288 = sub i32 %287, %286
  store i32 %288, i32* %20, align 4
  %289 = load i32, i32* %25, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %42, i64 %290
  store i32* %291, i32** %34, align 8
  br label %292

292:                                              ; preds = %306, %284
  %293 = load i32, i32* %24, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %24, align 4
  %295 = load i32, i32* %36, align 4
  %296 = icmp ult i32 %294, %295
  br i1 %296, label %297, label %311

297:                                              ; preds = %292
  %298 = load i32, i32* %20, align 4
  %299 = shl i32 %298, 1
  store i32 %299, i32* %20, align 4
  %300 = load i32, i32* %20, align 4
  %301 = load i32*, i32** %34, align 8
  %302 = getelementptr inbounds i32, i32* %301, i32 1
  store i32* %302, i32** %34, align 8
  %303 = load i32, i32* %302, align 4
  %304 = icmp ule i32 %300, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  br label %311

306:                                              ; preds = %297
  %307 = load i32*, i32** %34, align 8
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %20, align 4
  %310 = sub i32 %309, %308
  store i32 %310, i32* %20, align 4
  br label %292

311:                                              ; preds = %305, %292
  br label %312

312:                                              ; preds = %311, %273
  %313 = load i32, i32* %32, align 4
  %314 = load i32, i32* %24, align 4
  %315 = add i32 %313, %314
  %316 = load i32, i32* %19, align 4
  %317 = icmp ugt i32 %315, %316
  br i1 %317, label %318, label %326

318:                                              ; preds = %312
  %319 = load i32, i32* %32, align 4
  %320 = load i32, i32* %19, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %318
  %323 = load i32, i32* %19, align 4
  %324 = load i32, i32* %32, align 4
  %325 = sub i32 %323, %324
  br label %328

326:                                              ; preds = %318, %312
  %327 = load i32, i32* %24, align 4
  br label %328

328:                                              ; preds = %326, %322
  %329 = phi i32 [ %325, %322 ], [ %327, %326 ]
  store i32 %329, i32* %24, align 4
  %330 = load i32, i32* %24, align 4
  %331 = shl i32 1, %330
  store i32 %331, i32* %36, align 4
  %332 = load i32, i32* %32, align 4
  %333 = load i32, i32* %24, align 4
  %334 = add i32 %332, %333
  %335 = load i32, i32* %22, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %52, i64 %337
  store i32 %334, i32* %338, align 4
  %339 = load i32, i32* %36, align 4
  %340 = add i32 %339, 1
  %341 = zext i32 %340 to i64
  %342 = mul i64 %341, 24
  %343 = trunc i64 %342 to i32
  %344 = call %struct.TYPE_6__* @xzalloc(i32 %343)
  store %struct.TYPE_6__* %344, %struct.TYPE_6__** %27, align 8
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i64 1
  %347 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  store %struct.TYPE_6__* %346, %struct.TYPE_6__** %347, align 8
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 1
  store %struct.TYPE_6__** %350, %struct.TYPE_6__*** %14, align 8
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 1
  store %struct.TYPE_6__* %352, %struct.TYPE_6__** %27, align 8
  %353 = load i32, i32* %22, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %354
  store %struct.TYPE_6__* %352, %struct.TYPE_6__** %355, align 8
  %356 = load i32, i32* %22, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %400

358:                                              ; preds = %328
  %359 = load i32, i32* %23, align 4
  %360 = load i32, i32* %22, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %56, i64 %361
  store i32 %359, i32* %362, align 4
  %363 = load i32, i32* %32, align 4
  %364 = load i32, i32* %22, align 4
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %52, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = sub nsw i32 %363, %368
  %370 = trunc i32 %369 to i8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8 %370, i8* %371, align 8
  %372 = load i32, i32* %24, align 4
  %373 = add i32 16, %372
  %374 = trunc i32 %373 to i8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8 %374, i8* %375, align 1
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 1
  store %struct.TYPE_6__* %376, %struct.TYPE_6__** %378, align 8
  %379 = load i32, i32* %23, align 4
  %380 = load i32, i32* %32, align 4
  %381 = shl i32 1, %380
  %382 = sub nsw i32 %381, 1
  %383 = and i32 %379, %382
  %384 = load i32, i32* %22, align 4
  %385 = sub nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %52, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = lshr i32 %383, %388
  store i32 %389, i32* %24, align 4
  %390 = load i32, i32* %22, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %392
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %393, align 8
  %395 = load i32, i32* %24, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i64 %396
  %398 = bitcast %struct.TYPE_6__* %397 to i8*
  %399 = bitcast %struct.TYPE_6__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %398, i8* align 8 %399, i64 24, i1 false)
  br label %400

400:                                              ; preds = %358, %328
  br label %247

401:                                              ; preds = %247
  %402 = load i32, i32* %25, align 4
  %403 = load i32, i32* %32, align 4
  %404 = sub nsw i32 %402, %403
  %405 = trunc i32 %404 to i8
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8 %405, i8* %406, align 8
  %407 = load i32*, i32** %26, align 8
  %408 = load i32, i32* %10, align 4
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %48, i64 %409
  %411 = icmp uge i32* %407, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %401
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8 99, i8* %413, align 1
  br label %455

414:                                              ; preds = %401
  %415 = load i32*, i32** %26, align 8
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %11, align 4
  %418 = icmp ult i32 %416, %417
  br i1 %418, label %419, label %433

419:                                              ; preds = %414
  %420 = load i32*, i32** %26, align 8
  %421 = load i32, i32* %420, align 4
  %422 = icmp ult i32 %421, 256
  %423 = zext i1 %422 to i64
  %424 = select i1 %422, i32 16, i32 15
  %425 = trunc i32 %424 to i8
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8 %425, i8* %426, align 1
  %427 = load i32*, i32** %26, align 8
  %428 = getelementptr inbounds i32, i32* %427, i32 1
  store i32* %428, i32** %26, align 8
  %429 = load i32, i32* %427, align 4
  %430 = trunc i32 %429 to i16
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 0
  store i16 %430, i16* %432, align 8
  br label %454

433:                                              ; preds = %414
  %434 = load i8*, i8** %13, align 8
  %435 = load i32*, i32** %26, align 8
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %11, align 4
  %438 = sub i32 %436, %437
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %434, i64 %439
  %441 = load i8, i8* %440, align 1
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8 %441, i8* %442, align 1
  %443 = load i16*, i16** %12, align 8
  %444 = load i32*, i32** %26, align 8
  %445 = getelementptr inbounds i32, i32* %444, i32 1
  store i32* %445, i32** %26, align 8
  %446 = load i32, i32* %444, align 4
  %447 = load i32, i32* %11, align 4
  %448 = sub i32 %446, %447
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds i16, i16* %443, i64 %449
  %451 = load i16, i16* %450, align 2
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 0
  store i16 %451, i16* %453, align 8
  br label %454

454:                                              ; preds = %433, %419
  br label %455

455:                                              ; preds = %454, %412
  %456 = load i32, i32* %25, align 4
  %457 = load i32, i32* %32, align 4
  %458 = sub nsw i32 %456, %457
  %459 = shl i32 1, %458
  store i32 %459, i32* %20, align 4
  %460 = load i32, i32* %23, align 4
  %461 = load i32, i32* %32, align 4
  %462 = lshr i32 %460, %461
  store i32 %462, i32* %24, align 4
  br label %463

463:                                              ; preds = %474, %455
  %464 = load i32, i32* %24, align 4
  %465 = load i32, i32* %36, align 4
  %466 = icmp ult i32 %464, %465
  br i1 %466, label %467, label %478

467:                                              ; preds = %463
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %469 = load i32, i32* %24, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i64 %470
  %472 = bitcast %struct.TYPE_6__* %471 to i8*
  %473 = bitcast %struct.TYPE_6__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %472, i8* align 8 %473, i64 24, i1 false)
  br label %474

474:                                              ; preds = %467
  %475 = load i32, i32* %20, align 4
  %476 = load i32, i32* %24, align 4
  %477 = add i32 %476, %475
  store i32 %477, i32* %24, align 4
  br label %463

478:                                              ; preds = %463
  %479 = load i32, i32* %25, align 4
  %480 = sub nsw i32 %479, 1
  %481 = shl i32 1, %480
  store i32 %481, i32* %24, align 4
  br label %482

482:                                              ; preds = %491, %478
  %483 = load i32, i32* %23, align 4
  %484 = load i32, i32* %24, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %494

487:                                              ; preds = %482
  %488 = load i32, i32* %24, align 4
  %489 = load i32, i32* %23, align 4
  %490 = xor i32 %489, %488
  store i32 %490, i32* %23, align 4
  br label %491

491:                                              ; preds = %487
  %492 = load i32, i32* %24, align 4
  %493 = lshr i32 %492, 1
  store i32 %493, i32* %24, align 4
  br label %482

494:                                              ; preds = %482
  %495 = load i32, i32* %24, align 4
  %496 = load i32, i32* %23, align 4
  %497 = xor i32 %496, %495
  store i32 %497, i32* %23, align 4
  br label %498

498:                                              ; preds = %509, %494
  %499 = load i32, i32* %23, align 4
  %500 = load i32, i32* %32, align 4
  %501 = shl i32 1, %500
  %502 = sub nsw i32 %501, 1
  %503 = and i32 %499, %502
  %504 = load i32, i32* %22, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %56, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %503, %507
  br i1 %508, label %509, label %515

509:                                              ; preds = %498
  %510 = load i32, i32* %22, align 4
  %511 = add nsw i32 %510, -1
  store i32 %511, i32* %22, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %52, i64 %512
  %514 = load i32, i32* %513, align 4
  store i32 %514, i32* %32, align 4
  br label %498

515:                                              ; preds = %498
  br label %242

516:                                              ; preds = %242
  br label %517

517:                                              ; preds = %516
  %518 = load i32, i32* %25, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %25, align 4
  br label %233

520:                                              ; preds = %233
  %521 = getelementptr inbounds i32, i32* %52, i64 1
  %522 = load i32, i32* %521, align 4
  %523 = load i32*, i32** %15, align 8
  store i32 %522, i32* %523, align 4
  %524 = load i32, i32* %35, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %520
  %527 = load i32, i32* %21, align 4
  %528 = icmp ne i32 %527, 1
  br label %529

529:                                              ; preds = %526, %520
  %530 = phi i1 [ false, %520 ], [ %528, %526 ]
  %531 = zext i1 %530 to i32
  store i32 %531, i32* %8, align 4
  store i32 1, i32* %37, align 4
  br label %532

532:                                              ; preds = %529, %182, %166, %91
  %533 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %533)
  %534 = load i32, i32* %8, align 4
  ret i32 %534
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.TYPE_6__* @xzalloc(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
