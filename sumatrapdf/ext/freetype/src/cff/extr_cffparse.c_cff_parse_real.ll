; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/cff/extr_cffparse.c_cff_parse_real.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/cff/extr_cffparse.c_cff_parse_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@power_tens = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"!!!OVERFLOW:!!!\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"!!!UNDERFLOW:!!!\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"!!!END OF DATA:!!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @cff_parse_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cff_parse_real(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 4, i32* %11, align 4
  br label %29

29:                                               ; preds = %79, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp uge i32* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %394

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %43, %44
  %46 = and i32 %45, 15
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 4, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 14
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 1, i32* %15, align 4
  br label %79

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 9
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %80

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp sge i64 %58, 214748364
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  br label %77

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %72, 10
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %69, %66
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %51
  br label %29

80:                                               ; preds = %55
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %133

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %131, %83
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = icmp uge i32* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %394

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = ashr i32 %98, %99
  %101 = and i32 %100, 15
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 4, %102
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sge i32 %104, 10
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %132

107:                                              ; preds = %95
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %18, align 4
  br label %131

116:                                              ; preds = %110, %107
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %118, 214748364
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32, i32* %20, align 4
  %122 = icmp slt i32 %121, 9
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %13, align 4
  %127 = mul nsw i32 %126, 10
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %123, %120, %116
  br label %131

131:                                              ; preds = %130, %113
  br label %84

132:                                              ; preds = %106
  br label %133

133:                                              ; preds = %132, %80
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, 12
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 1, i32* %16, align 4
  store i32 11, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %138, 11
  br i1 %139, label %140, label %181

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %173, %140
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %9, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = icmp uge i32* %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %394

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %141
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %11, align 4
  %157 = ashr i32 %155, %156
  %158 = and i32 %157, 15
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = sub nsw i32 4, %159
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp sge i32 %161, 10
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  br label %174

164:                                              ; preds = %152
  %165 = load i32, i32* %14, align 4
  %166 = icmp sgt i32 %165, 1000
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 1, i32* %17, align 4
  br label %173

168:                                              ; preds = %164
  %169 = load i32, i32* %14, align 4
  %170 = mul nsw i32 %169, 10
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* %14, align 4
  br label %173

173:                                              ; preds = %168, %167
  br label %141

174:                                              ; preds = %163
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %14, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %177, %174
  br label %181

181:                                              ; preds = %180, %137
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  br label %382

185:                                              ; preds = %181
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %392

192:                                              ; preds = %188
  br label %390

193:                                              ; preds = %185
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %14, align 4
  %199 = load i32*, i32** %8, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %305

201:                                              ; preds = %193
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %20, align 4
  %209 = icmp sle i32 %208, 5
  br i1 %209, label %210, label %268

210:                                              ; preds = %201
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = icmp sgt i64 %212, 32767
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @FT_DivFix(i32 %215, i32 10)
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %20, align 4
  %219 = sub nsw i32 %217, %218
  %220 = add nsw i32 %219, 1
  %221 = load i32*, i32** %8, align 8
  store i32 %220, i32* %221, align 4
  br label %267

222:                                              ; preds = %210
  %223 = load i32, i32* %14, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %258

225:                                              ; preds = %222
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @FT_MIN(i32 %226, i32 5)
  store i32 %227, i32* %21, align 4
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* %20, align 4
  %230 = sub nsw i32 %228, %229
  store i32 %230, i32* %22, align 4
  %231 = load i32, i32* %22, align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %253

233:                                              ; preds = %225
  %234 = load i32, i32* %21, align 4
  %235 = load i32, i32* %14, align 4
  %236 = sub nsw i32 %235, %234
  store i32 %236, i32* %14, align 4
  %237 = load i32*, i32** @power_tens, align 8
  %238 = load i32, i32* %22, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %13, align 4
  %243 = mul nsw i32 %242, %241
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = icmp sgt i64 %245, 32767
  br i1 %246, label %247, label %252

247:                                              ; preds = %233
  %248 = load i32, i32* %13, align 4
  %249 = sdiv i32 %248, 10
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %14, align 4
  br label %252

252:                                              ; preds = %247, %233
  br label %257

253:                                              ; preds = %225
  %254 = load i32, i32* %20, align 4
  %255 = load i32, i32* %14, align 4
  %256 = sub nsw i32 %255, %254
  store i32 %256, i32* %14, align 4
  br label %257

257:                                              ; preds = %253, %252
  br label %262

258:                                              ; preds = %222
  %259 = load i32, i32* %20, align 4
  %260 = load i32, i32* %14, align 4
  %261 = sub nsw i32 %260, %259
  store i32 %261, i32* %14, align 4
  br label %262

262:                                              ; preds = %258, %257
  %263 = load i32, i32* %13, align 4
  %264 = shl i32 %263, 16
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %14, align 4
  %266 = load i32*, i32** %8, align 8
  store i32 %265, i32* %266, align 4
  br label %267

267:                                              ; preds = %262, %214
  br label %304

268:                                              ; preds = %201
  %269 = load i32, i32* %13, align 4
  %270 = load i32*, i32** @power_tens, align 8
  %271 = load i32, i32* %20, align 4
  %272 = sub nsw i32 %271, 5
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = sdiv i32 %269, %275
  %277 = sext i32 %276 to i64
  %278 = icmp sgt i64 %277, 32767
  br i1 %278, label %279, label %291

279:                                              ; preds = %268
  %280 = load i32, i32* %13, align 4
  %281 = load i32*, i32** @power_tens, align 8
  %282 = load i32, i32* %20, align 4
  %283 = sub nsw i32 %282, 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @FT_DivFix(i32 %280, i32 %286)
  store i32 %287, i32* %12, align 4
  %288 = load i32, i32* %14, align 4
  %289 = sub nsw i32 %288, 4
  %290 = load i32*, i32** %8, align 8
  store i32 %289, i32* %290, align 4
  br label %303

291:                                              ; preds = %268
  %292 = load i32, i32* %13, align 4
  %293 = load i32*, i32** @power_tens, align 8
  %294 = load i32, i32* %20, align 4
  %295 = sub nsw i32 %294, 5
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @FT_DivFix(i32 %292, i32 %298)
  store i32 %299, i32* %12, align 4
  %300 = load i32, i32* %14, align 4
  %301 = sub nsw i32 %300, 5
  %302 = load i32*, i32** %8, align 8
  store i32 %301, i32* %302, align 4
  br label %303

303:                                              ; preds = %291, %279
  br label %304

304:                                              ; preds = %303, %267
  br label %381

305:                                              ; preds = %193
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %19, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %19, align 4
  %309 = load i32, i32* %14, align 4
  %310 = load i32, i32* %20, align 4
  %311 = sub nsw i32 %310, %309
  store i32 %311, i32* %20, align 4
  %312 = load i32, i32* %19, align 4
  %313 = icmp sgt i32 %312, 5
  br i1 %313, label %314, label %315

314:                                              ; preds = %305
  br label %390

315:                                              ; preds = %305
  %316 = load i32, i32* %19, align 4
  %317 = icmp slt i32 %316, -5
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  br label %392

319:                                              ; preds = %315
  %320 = load i32, i32* %19, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %334

322:                                              ; preds = %319
  %323 = load i32*, i32** @power_tens, align 8
  %324 = load i32, i32* %19, align 4
  %325 = sub nsw i32 0, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %13, align 4
  %330 = sdiv i32 %329, %328
  store i32 %330, i32* %13, align 4
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* %20, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %20, align 4
  br label %334

334:                                              ; preds = %322, %319
  %335 = load i32, i32* %20, align 4
  %336 = icmp eq i32 %335, 10
  br i1 %336, label %337, label %342

337:                                              ; preds = %334
  %338 = load i32, i32* %13, align 4
  %339 = sdiv i32 %338, 10
  store i32 %339, i32* %13, align 4
  %340 = load i32, i32* %20, align 4
  %341 = sub nsw i32 %340, 1
  store i32 %341, i32* %20, align 4
  br label %342

342:                                              ; preds = %337, %334
  %343 = load i32, i32* %20, align 4
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %364

345:                                              ; preds = %342
  %346 = load i32, i32* %13, align 4
  %347 = load i32*, i32** @power_tens, align 8
  %348 = load i32, i32* %20, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = sdiv i32 %346, %351
  %353 = sext i32 %352 to i64
  %354 = icmp sgt i64 %353, 32767
  br i1 %354, label %355, label %356

355:                                              ; preds = %345
  br label %382

356:                                              ; preds = %345
  %357 = load i32, i32* %13, align 4
  %358 = load i32*, i32** @power_tens, align 8
  %359 = load i32, i32* %20, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @FT_DivFix(i32 %357, i32 %362)
  store i32 %363, i32* %12, align 4
  br label %380

364:                                              ; preds = %342
  %365 = load i32*, i32** @power_tens, align 8
  %366 = load i32, i32* %20, align 4
  %367 = sub nsw i32 0, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %13, align 4
  %372 = mul nsw i32 %371, %370
  store i32 %372, i32* %13, align 4
  %373 = load i32, i32* %13, align 4
  %374 = sext i32 %373 to i64
  %375 = icmp sgt i64 %374, 32767
  br i1 %375, label %376, label %377

376:                                              ; preds = %364
  br label %390

377:                                              ; preds = %364
  %378 = load i32, i32* %13, align 4
  %379 = shl i32 %378, 16
  store i32 %379, i32* %12, align 4
  br label %380

380:                                              ; preds = %377, %356
  br label %381

381:                                              ; preds = %380, %304
  br label %382

382:                                              ; preds = %394, %392, %390, %381, %355, %184
  %383 = load i32, i32* %15, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load i32, i32* %12, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %12, align 4
  br label %388

388:                                              ; preds = %385, %382
  %389 = load i32, i32* %12, align 4
  ret i32 %389

390:                                              ; preds = %376, %314, %192
  store i32 2147483647, i32* %12, align 4
  %391 = call i32 @FT_TRACE4(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %382

392:                                              ; preds = %318, %191
  store i32 0, i32* %12, align 4
  %393 = call i32 @FT_TRACE4(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %382

394:                                              ; preds = %150, %93, %38
  store i32 0, i32* %12, align 4
  %395 = call i32 @FT_TRACE4(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %382
}

declare dso_local i32 @FT_DivFix(i32, i32) #1

declare dso_local i32 @FT_MIN(i32, i32) #1

declare dso_local i32 @FT_TRACE4(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
