; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_js_strtod.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_js_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@maxExponent = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@powersOf10 = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @js_strtod(i8* %0, i8** %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %11, align 8
  br label %22

22:                                               ; preds = %44, %2
  %23 = load i8*, i8** %11, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 13
  br label %42

42:                                               ; preds = %37, %32, %27, %22
  %43 = phi i1 [ true, %32 ], [ true, %27 ], [ true, %22 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %11, align 8
  br label %22

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %11, align 8
  br label %66

56:                                               ; preds = %47
  %57 = load i8*, i8** %11, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 43
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %52
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp sge i32 %71, 48
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = icmp sle i32 %74, 57
  br i1 %75, label %85, label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 46
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %76
  br label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %83, %73
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %67

91:                                               ; preds = %82
  %92 = load i8*, i8** %11, align 8
  store i8* %92, i8** %17, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = sext i32 %93 to i64
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8* %97, i8** %11, align 8
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %16, align 4
  br label %105

102:                                              ; preds = %91
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %102, %100
  %106 = load i32, i32* %15, align 4
  %107 = icmp sgt i32 %106, 18
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %16, align 4
  %110 = sub nsw i32 %109, 18
  store i32 %110, i32* %14, align 4
  store i32 18, i32* %15, align 4
  br label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  store double 0.000000e+00, double* %8, align 8
  %119 = load i8*, i8** %4, align 8
  store i8* %119, i8** %11, align 8
  br label %308

120:                                              ; preds = %115
  store i32 0, i32* %18, align 4
  br label %121

121:                                              ; preds = %144, %120
  %122 = load i32, i32* %15, align 4
  %123 = icmp sgt i32 %122, 9
  br i1 %123, label %124, label %147

124:                                              ; preds = %121
  %125 = load i8*, i8** %11, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  store i32 %127, i32* %12, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8* %129, i8** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 46
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i8*, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  store i32 %135, i32* %12, align 4
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %11, align 8
  br label %138

138:                                              ; preds = %132, %124
  %139 = load i32, i32* %18, align 4
  %140 = mul nsw i32 10, %139
  %141 = load i32, i32* %12, align 4
  %142 = sub nsw i32 %141, 48
  %143 = add nsw i32 %140, %142
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %15, align 4
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %121

147:                                              ; preds = %121
  store i32 0, i32* %19, align 4
  br label %148

148:                                              ; preds = %171, %147
  %149 = load i32, i32* %15, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %174

151:                                              ; preds = %148
  %152 = load i8*, i8** %11, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  store i32 %154, i32* %12, align 4
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  store i8* %156, i8** %11, align 8
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %157, 46
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load i8*, i8** %11, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  store i32 %162, i32* %12, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8* %164, i8** %11, align 8
  br label %165

165:                                              ; preds = %159, %151
  %166 = load i32, i32* %19, align 4
  %167 = mul nsw i32 10, %166
  %168 = load i32, i32* %12, align 4
  %169 = sub nsw i32 %168, 48
  %170 = add nsw i32 %167, %169
  store i32 %170, i32* %19, align 4
  br label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %15, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %148

174:                                              ; preds = %148
  %175 = load i32, i32* %18, align 4
  %176 = sitofp i32 %175 to double
  %177 = fmul double 1.000000e+09, %176
  %178 = load i32, i32* %19, align 4
  %179 = sitofp i32 %178 to double
  %180 = fadd double %177, %179
  store double %180, double* %8, align 8
  br label %181

181:                                              ; preds = %174
  %182 = load i8*, i8** %17, align 8
  store i8* %182, i8** %11, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 69
  br i1 %186, label %192, label %187

187:                                              ; preds = %181
  %188 = load i8*, i8** %11, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 101
  br i1 %191, label %192, label %237

192:                                              ; preds = %187, %181
  %193 = load i8*, i8** %11, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %11, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 45
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load i32, i32* @TRUE, align 4
  store i32 %200, i32* %7, align 4
  %201 = load i8*, i8** %11, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  store i8* %202, i8** %11, align 8
  br label %213

203:                                              ; preds = %192
  %204 = load i8*, i8** %11, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 43
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i8*, i8** %11, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  store i8* %210, i8** %11, align 8
  br label %211

211:                                              ; preds = %208, %203
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %211, %199
  br label %214

214:                                              ; preds = %226, %213
  %215 = load i8*, i8** %11, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp sge i32 %217, 48
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load i8*, i8** %11, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp sle i32 %222, 57
  br label %224

224:                                              ; preds = %219, %214
  %225 = phi i1 [ false, %214 ], [ %223, %219 ]
  br i1 %225, label %226, label %236

226:                                              ; preds = %224
  %227 = load i32, i32* %13, align 4
  %228 = mul nsw i32 %227, 10
  %229 = load i8*, i8** %11, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = sub nsw i32 %231, 48
  %233 = add nsw i32 %228, %232
  store i32 %233, i32* %13, align 4
  %234 = load i8*, i8** %11, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  store i8* %235, i8** %11, align 8
  br label %214

236:                                              ; preds = %224
  br label %237

237:                                              ; preds = %236, %187
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %13, align 4
  %243 = sub nsw i32 %241, %242
  store i32 %243, i32* %13, align 4
  br label %248

244:                                              ; preds = %237
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %245, %246
  store i32 %247, i32* %13, align 4
  br label %248

248:                                              ; preds = %244, %240
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* @maxExponent, align 4
  %251 = sub nsw i32 0, %250
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = load i32, i32* @maxExponent, align 4
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* @TRUE, align 4
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* @ERANGE, align 4
  store i32 %256, i32* @errno, align 4
  br label %276

257:                                              ; preds = %248
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* @maxExponent, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load i32, i32* @maxExponent, align 4
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* @FALSE, align 4
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* @ERANGE, align 4
  store i32 %264, i32* @errno, align 4
  br label %275

265:                                              ; preds = %257
  %266 = load i32, i32* %13, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load i32, i32* @TRUE, align 4
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %13, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %13, align 4
  br label %274

272:                                              ; preds = %265
  %273 = load i32, i32* @FALSE, align 4
  store i32 %273, i32* %7, align 4
  br label %274

274:                                              ; preds = %272, %268
  br label %275

275:                                              ; preds = %274, %261
  br label %276

276:                                              ; preds = %275, %253
  store double 1.000000e+00, double* %9, align 8
  %277 = load double*, double** @powersOf10, align 8
  store double* %277, double** %10, align 8
  br label %278

278:                                              ; preds = %291, %276
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %278
  %282 = load i32, i32* %13, align 4
  %283 = and i32 %282, 1
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %281
  %286 = load double*, double** %10, align 8
  %287 = load double, double* %286, align 8
  %288 = load double, double* %9, align 8
  %289 = fmul double %288, %287
  store double %289, double* %9, align 8
  br label %290

290:                                              ; preds = %285, %281
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %13, align 4
  %293 = ashr i32 %292, 1
  store i32 %293, i32* %13, align 4
  %294 = load double*, double** %10, align 8
  %295 = getelementptr inbounds double, double* %294, i64 1
  store double* %295, double** %10, align 8
  br label %278

296:                                              ; preds = %278
  %297 = load i32, i32* %7, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load double, double* %9, align 8
  %301 = load double, double* %8, align 8
  %302 = fdiv double %301, %300
  store double %302, double* %8, align 8
  br label %307

303:                                              ; preds = %296
  %304 = load double, double* %9, align 8
  %305 = load double, double* %8, align 8
  %306 = fmul double %305, %304
  store double %306, double* %8, align 8
  br label %307

307:                                              ; preds = %303, %299
  br label %308

308:                                              ; preds = %307, %118
  %309 = load i8**, i8*** %5, align 8
  %310 = icmp ne i8** %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load i8*, i8** %11, align 8
  %313 = load i8**, i8*** %5, align 8
  store i8* %312, i8** %313, align 8
  br label %314

314:                                              ; preds = %311, %308
  %315 = load i32, i32* %6, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load double, double* %8, align 8
  %319 = fneg double %318
  store double %319, double* %3, align 8
  br label %322

320:                                              ; preds = %314
  %321 = load double, double* %8, align 8
  store double %321, double* %3, align 8
  br label %322

322:                                              ; preds = %320, %317
  %323 = load double, double* %3, align 8
  ret double %323
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
