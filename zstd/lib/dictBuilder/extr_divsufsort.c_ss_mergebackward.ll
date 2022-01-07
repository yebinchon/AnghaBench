; ModuleID = '/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_ss_mergebackward.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_ss_mergebackward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32*, i32*, i32)* @ss_mergebackward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ss_mergebackward(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 -1
  store i32* %32, i32** %20, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @ss_blockswap(i32* %33, i32* %34, i32 %41)
  store i32 0, i32* %23, align 4
  %43 = load i32*, i32** %20, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %7
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, -1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %15, align 8
  %53 = load i32, i32* %23, align 4
  %54 = or i32 %53, 1
  store i32 %54, i32* %23, align 4
  br label %61

55:                                               ; preds = %7
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32* %60, i32** %15, align 8
  br label %61

61:                                               ; preds = %55, %46
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 -1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 -1
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, -1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  store i32* %73, i32** %16, align 8
  %74 = load i32, i32* %23, align 4
  %75 = or i32 %74, 2
  store i32 %75, i32* %23, align 4
  br label %83

76:                                               ; preds = %61
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32* %82, i32** %16, align 8
  br label %83

83:                                               ; preds = %76, %66
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 -1
  store i32* %85, i32** %17, align 8
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %21, align 4
  %87 = load i32*, i32** %20, align 8
  store i32* %87, i32** %18, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 -1
  store i32* %89, i32** %19, align 8
  br label %90

90:                                               ; preds = %360, %83
  %91 = load i8*, i8** %8, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @ss_compare(i8* %91, i32* %92, i32* %93, i32 %94)
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %22, align 4
  %97 = icmp slt i32 0, %96
  br i1 %97, label %98, label %154

98:                                               ; preds = %90
  %99 = load i32, i32* %23, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %112, %102
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %17, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 -1
  store i32* %107, i32** %17, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32*, i32** %17, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %18, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 -1
  store i32* %111, i32** %18, align 8
  store i32 %109, i32* %110, align 4
  br label %112

112:                                              ; preds = %103
  %113 = load i32*, i32** %18, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %103, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %23, align 4
  %118 = xor i32 %117, 1
  store i32 %118, i32* %23, align 4
  br label %119

119:                                              ; preds = %116, %98
  %120 = load i32*, i32** %18, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %17, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 -1
  store i32* %123, i32** %17, align 8
  store i32 %121, i32* %122, align 4
  %124 = load i32*, i32** %18, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = icmp ule i32* %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* %21, align 4
  %129 = load i32*, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  br label %361

130:                                              ; preds = %119
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %18, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 -1
  store i32* %134, i32** %18, align 8
  store i32 %132, i32* %133, align 4
  %135 = load i32*, i32** %18, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load i32*, i32** %9, align 8
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %141, -1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  store i32* %144, i32** %15, align 8
  %145 = load i32, i32* %23, align 4
  %146 = or i32 %145, 1
  store i32 %146, i32* %23, align 4
  br label %153

147:                                              ; preds = %130
  %148 = load i32*, i32** %9, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32* %152, i32** %15, align 8
  br label %153

153:                                              ; preds = %147, %138
  br label %360

154:                                              ; preds = %90
  %155 = load i32, i32* %22, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %230

157:                                              ; preds = %154
  %158 = load i32, i32* %23, align 4
  %159 = and i32 %158, 2
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %171, %161
  %163 = load i32*, i32** %19, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %17, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 -1
  store i32* %166, i32** %17, align 8
  store i32 %164, i32* %165, align 4
  %167 = load i32*, i32** %17, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %19, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 -1
  store i32* %170, i32** %19, align 8
  store i32 %168, i32* %169, align 4
  br label %171

171:                                              ; preds = %162
  %172 = load i32*, i32** %19, align 8
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %162, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %23, align 4
  %177 = xor i32 %176, 2
  store i32 %177, i32* %23, align 4
  br label %178

178:                                              ; preds = %175, %157
  %179 = load i32*, i32** %19, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %17, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 -1
  store i32* %182, i32** %17, align 8
  store i32 %180, i32* %181, align 4
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %19, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 -1
  store i32* %186, i32** %19, align 8
  store i32 %184, i32* %185, align 4
  %187 = load i32*, i32** %19, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = icmp ult i32* %187, %188
  br i1 %189, label %190, label %210

190:                                              ; preds = %178
  br label %191

191:                                              ; preds = %195, %190
  %192 = load i32*, i32** %13, align 8
  %193 = load i32*, i32** %18, align 8
  %194 = icmp ult i32* %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %191
  %196 = load i32*, i32** %18, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %17, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 -1
  store i32* %199, i32** %17, align 8
  store i32 %197, i32* %198, align 4
  %200 = load i32*, i32** %17, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %18, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 -1
  store i32* %203, i32** %18, align 8
  store i32 %201, i32* %202, align 4
  br label %191

204:                                              ; preds = %191
  %205 = load i32*, i32** %18, align 8
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %17, align 8
  store i32 %206, i32* %207, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i32*, i32** %18, align 8
  store i32 %208, i32* %209, align 4
  br label %361

210:                                              ; preds = %178
  %211 = load i32*, i32** %19, align 8
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %210
  %215 = load i32*, i32** %9, align 8
  %216 = load i32*, i32** %19, align 8
  %217 = load i32, i32* %216, align 4
  %218 = xor i32 %217, -1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %215, i64 %219
  store i32* %220, i32** %16, align 8
  %221 = load i32, i32* %23, align 4
  %222 = or i32 %221, 2
  store i32 %222, i32* %23, align 4
  br label %229

223:                                              ; preds = %210
  %224 = load i32*, i32** %9, align 8
  %225 = load i32*, i32** %19, align 8
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  store i32* %228, i32** %16, align 8
  br label %229

229:                                              ; preds = %223, %214
  br label %359

230:                                              ; preds = %154
  %231 = load i32, i32* %23, align 4
  %232 = and i32 %231, 1
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %244, %234
  %236 = load i32*, i32** %18, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %17, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 -1
  store i32* %239, i32** %17, align 8
  store i32 %237, i32* %238, align 4
  %240 = load i32*, i32** %17, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %18, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 -1
  store i32* %243, i32** %18, align 8
  store i32 %241, i32* %242, align 4
  br label %244

244:                                              ; preds = %235
  %245 = load i32*, i32** %18, align 8
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %235, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* %23, align 4
  %250 = xor i32 %249, 1
  store i32 %250, i32* %23, align 4
  br label %251

251:                                              ; preds = %248, %230
  %252 = load i32*, i32** %18, align 8
  %253 = load i32, i32* %252, align 4
  %254 = xor i32 %253, -1
  %255 = load i32*, i32** %17, align 8
  %256 = getelementptr inbounds i32, i32* %255, i32 -1
  store i32* %256, i32** %17, align 8
  store i32 %254, i32* %255, align 4
  %257 = load i32*, i32** %18, align 8
  %258 = load i32*, i32** %13, align 8
  %259 = icmp ule i32* %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %251
  %261 = load i32, i32* %21, align 4
  %262 = load i32*, i32** %13, align 8
  store i32 %261, i32* %262, align 4
  br label %361

263:                                              ; preds = %251
  %264 = load i32*, i32** %17, align 8
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %18, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 -1
  store i32* %267, i32** %18, align 8
  store i32 %265, i32* %266, align 4
  %268 = load i32, i32* %23, align 4
  %269 = and i32 %268, 2
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %288

271:                                              ; preds = %263
  br label %272

272:                                              ; preds = %281, %271
  %273 = load i32*, i32** %19, align 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %17, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 -1
  store i32* %276, i32** %17, align 8
  store i32 %274, i32* %275, align 4
  %277 = load i32*, i32** %17, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %19, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 -1
  store i32* %280, i32** %19, align 8
  store i32 %278, i32* %279, align 4
  br label %281

281:                                              ; preds = %272
  %282 = load i32*, i32** %19, align 8
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %272, label %285

285:                                              ; preds = %281
  %286 = load i32, i32* %23, align 4
  %287 = xor i32 %286, 2
  store i32 %287, i32* %23, align 4
  br label %288

288:                                              ; preds = %285, %263
  %289 = load i32*, i32** %19, align 8
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %17, align 8
  %292 = getelementptr inbounds i32, i32* %291, i32 -1
  store i32* %292, i32** %17, align 8
  store i32 %290, i32* %291, align 4
  %293 = load i32*, i32** %17, align 8
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %19, align 8
  %296 = getelementptr inbounds i32, i32* %295, i32 -1
  store i32* %296, i32** %19, align 8
  store i32 %294, i32* %295, align 4
  %297 = load i32*, i32** %19, align 8
  %298 = load i32*, i32** %10, align 8
  %299 = icmp ult i32* %297, %298
  br i1 %299, label %300, label %320

300:                                              ; preds = %288
  br label %301

301:                                              ; preds = %305, %300
  %302 = load i32*, i32** %13, align 8
  %303 = load i32*, i32** %18, align 8
  %304 = icmp ult i32* %302, %303
  br i1 %304, label %305, label %314

305:                                              ; preds = %301
  %306 = load i32*, i32** %18, align 8
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %17, align 8
  %309 = getelementptr inbounds i32, i32* %308, i32 -1
  store i32* %309, i32** %17, align 8
  store i32 %307, i32* %308, align 4
  %310 = load i32*, i32** %17, align 8
  %311 = load i32, i32* %310, align 4
  %312 = load i32*, i32** %18, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 -1
  store i32* %313, i32** %18, align 8
  store i32 %311, i32* %312, align 4
  br label %301

314:                                              ; preds = %301
  %315 = load i32*, i32** %18, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %17, align 8
  store i32 %316, i32* %317, align 4
  %318 = load i32, i32* %21, align 4
  %319 = load i32*, i32** %18, align 8
  store i32 %318, i32* %319, align 4
  br label %361

320:                                              ; preds = %288
  %321 = load i32*, i32** %18, align 8
  %322 = load i32, i32* %321, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %320
  %325 = load i32*, i32** %9, align 8
  %326 = load i32*, i32** %18, align 8
  %327 = load i32, i32* %326, align 4
  %328 = xor i32 %327, -1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %325, i64 %329
  store i32* %330, i32** %15, align 8
  %331 = load i32, i32* %23, align 4
  %332 = or i32 %331, 1
  store i32 %332, i32* %23, align 4
  br label %339

333:                                              ; preds = %320
  %334 = load i32*, i32** %9, align 8
  %335 = load i32*, i32** %18, align 8
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %334, i64 %337
  store i32* %338, i32** %15, align 8
  br label %339

339:                                              ; preds = %333, %324
  %340 = load i32*, i32** %19, align 8
  %341 = load i32, i32* %340, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %339
  %344 = load i32*, i32** %9, align 8
  %345 = load i32*, i32** %19, align 8
  %346 = load i32, i32* %345, align 4
  %347 = xor i32 %346, -1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %344, i64 %348
  store i32* %349, i32** %16, align 8
  %350 = load i32, i32* %23, align 4
  %351 = or i32 %350, 2
  store i32 %351, i32* %23, align 4
  br label %358

352:                                              ; preds = %339
  %353 = load i32*, i32** %9, align 8
  %354 = load i32*, i32** %19, align 8
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  store i32* %357, i32** %16, align 8
  br label %358

358:                                              ; preds = %352, %343
  br label %359

359:                                              ; preds = %358, %229
  br label %360

360:                                              ; preds = %359, %153
  br label %90

361:                                              ; preds = %314, %260, %204, %127
  ret void
}

declare dso_local i32 @ss_blockswap(i32*, i32*, i32) #1

declare dso_local i32 @ss_compare(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
