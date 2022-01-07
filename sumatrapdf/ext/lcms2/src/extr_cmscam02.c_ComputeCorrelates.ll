; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_ComputeCorrelates.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_ComputeCorrelates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double*, i32, i32, double, double, double, double, double, double }
%struct.TYPE_8__ = type { double, double, double, double, double, double, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__*)* @ComputeCorrelates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeCorrelates(%struct.TYPE_9__* noalias sret %0, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %13 = load double*, double** %12, align 8
  %14 = getelementptr inbounds double, double* %13, i64 0
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds double, double* %17, i64 1
  %19 = load double, double* %18, align 8
  %20 = fmul double 1.200000e+01, %19
  %21 = fdiv double %20, 1.100000e+01
  %22 = fsub double %15, %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %24 = load double*, double** %23, align 8
  %25 = getelementptr inbounds double, double* %24, i64 2
  %26 = load double, double* %25, align 8
  %27 = fdiv double %26, 1.100000e+01
  %28 = fadd double %22, %27
  %29 = fptosi double %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %31 = load double*, double** %30, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  %33 = load double, double* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %35 = load double*, double** %34, align 8
  %36 = getelementptr inbounds double, double* %35, i64 1
  %37 = load double, double* %36, align 8
  %38 = fadd double %33, %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %40 = load double*, double** %39, align 8
  %41 = getelementptr inbounds double, double* %40, i64 2
  %42 = load double, double* %41, align 8
  %43 = fmul double 2.000000e+00, %42
  %44 = fsub double %38, %43
  %45 = fdiv double %44, 9.000000e+00
  %46 = fptosi double %45 to i32
  store i32 %46, i32* %6, align 4
  store i32 57, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 90, i32* %58, align 8
  br label %61

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 270, i32* %60, align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %52
  br label %103

63:                                               ; preds = %3
  %64 = load i32, i32* %5, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @atan(i32 %74)
  %76 = mul nsw i32 %73, %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  br label %91

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 0, i32* %82, align 8
  br label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @atan(i32 %85)
  %87 = mul nsw i32 %84, %86
  %88 = add nsw i32 %87, 360
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  br label %90

90:                                               ; preds = %83, %81
  br label %91

91:                                               ; preds = %90, %72
  br label %102

92:                                               ; preds = %63
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @atan(i32 %97)
  %99 = mul nsw i32 %96, %98
  %100 = add nsw i32 %99, 180
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 %100, i32* %101, align 8
  br label %102

102:                                              ; preds = %92, %91
  br label %103

103:                                              ; preds = %102, %62
  store i32 0, i32* %11, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = fmul double 0x408E0C4EC4EC4EC5, %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load double, double* %109, align 8
  %111 = fmul double %107, %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sitofp i32 %115 to double
  %117 = fadd double %116, 2.000000e+00
  %118 = fptosi double %117 to i32
  %119 = call double @cos(i32 %118)
  %120 = fadd double %119, 3.800000e+00
  %121 = fmul double %111, %120
  %122 = fptosi double %121 to i32
  store i32 %122, i32* %8, align 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = sitofp i32 %124 to double
  %126 = fcmp olt double %125, 2.014000e+01
  br i1 %126, label %127, label %152

127:                                              ; preds = %103
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sitofp i32 %129 to double
  %131 = fadd double %130, 1.224700e+02
  %132 = fdiv double %131, 1.200000e+00
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sitofp i32 %134 to double
  %136 = fsub double 2.014000e+01, %135
  %137 = fdiv double %136, 8.000000e-01
  %138 = fadd double %132, %137
  %139 = fptosi double %138 to i32
  store i32 %139, i32* %7, align 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sitofp i32 %141 to double
  %143 = fadd double %142, 1.224700e+02
  %144 = fdiv double %143, 1.200000e+00
  %145 = fmul double 1.000000e+02, %144
  %146 = load i32, i32* %7, align 4
  %147 = sitofp i32 %146 to double
  %148 = fdiv double %145, %147
  %149 = fadd double 3.000000e+02, %148
  %150 = fptosi double %149 to i32
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 %150, i32* %151, align 4
  br label %270

152:                                              ; preds = %103
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sitofp i32 %154 to double
  %156 = fcmp olt double %155, 9.000000e+01
  br i1 %156, label %157, label %181

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sitofp i32 %159 to double
  %161 = fsub double %160, 2.014000e+01
  %162 = fdiv double %161, 8.000000e-01
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sitofp i32 %164 to double
  %166 = fsub double 9.000000e+01, %165
  %167 = fdiv double %166, 0x3FE6666666666666
  %168 = fadd double %162, %167
  %169 = fptosi double %168 to i32
  store i32 %169, i32* %7, align 4
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sitofp i32 %171 to double
  %173 = fsub double %172, 2.014000e+01
  %174 = fdiv double %173, 8.000000e-01
  %175 = fmul double 1.000000e+02, %174
  %176 = load i32, i32* %7, align 4
  %177 = sitofp i32 %176 to double
  %178 = fdiv double %175, %177
  %179 = fptosi double %178 to i32
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 %179, i32* %180, align 4
  br label %269

181:                                              ; preds = %152
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sitofp i32 %183 to double
  %185 = fcmp olt double %184, 1.642500e+02
  br i1 %185, label %186, label %211

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sitofp i32 %188 to double
  %190 = fsub double %189, 9.000000e+01
  %191 = fdiv double %190, 0x3FE6666666666666
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = sitofp i32 %193 to double
  %195 = fsub double 1.642500e+02, %194
  %196 = fdiv double %195, 1.000000e+00
  %197 = fadd double %191, %196
  %198 = fptosi double %197 to i32
  store i32 %198, i32* %7, align 4
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = sitofp i32 %200 to double
  %202 = fsub double %201, 9.000000e+01
  %203 = fdiv double %202, 0x3FE6666666666666
  %204 = fmul double 1.000000e+02, %203
  %205 = load i32, i32* %7, align 4
  %206 = sitofp i32 %205 to double
  %207 = fdiv double %204, %206
  %208 = fadd double 1.000000e+02, %207
  %209 = fptosi double %208 to i32
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 %209, i32* %210, align 4
  br label %268

211:                                              ; preds = %181
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = sitofp i32 %213 to double
  %215 = fcmp olt double %214, 2.375300e+02
  br i1 %215, label %216, label %241

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = sitofp i32 %218 to double
  %220 = fsub double %219, 1.642500e+02
  %221 = fdiv double %220, 1.000000e+00
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = sitofp i32 %223 to double
  %225 = fsub double 2.375300e+02, %224
  %226 = fdiv double %225, 1.200000e+00
  %227 = fadd double %221, %226
  %228 = fptosi double %227 to i32
  store i32 %228, i32* %7, align 4
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = sitofp i32 %230 to double
  %232 = fsub double %231, 1.642500e+02
  %233 = fdiv double %232, 1.000000e+00
  %234 = fmul double 1.000000e+02, %233
  %235 = load i32, i32* %7, align 4
  %236 = sitofp i32 %235 to double
  %237 = fdiv double %234, %236
  %238 = fadd double 2.000000e+02, %237
  %239 = fptosi double %238 to i32
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 %239, i32* %240, align 4
  br label %267

241:                                              ; preds = %211
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = sitofp i32 %243 to double
  %245 = fsub double %244, 2.375300e+02
  %246 = fdiv double %245, 1.200000e+00
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 360, %248
  %250 = sitofp i32 %249 to double
  %251 = fadd double %250, 2.014000e+01
  %252 = fdiv double %251, 8.000000e-01
  %253 = fadd double %246, %252
  %254 = fptosi double %253 to i32
  store i32 %254, i32* %7, align 4
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = sitofp i32 %256 to double
  %258 = fsub double %257, 2.375300e+02
  %259 = fdiv double %258, 1.200000e+00
  %260 = fmul double 1.000000e+02, %259
  %261 = load i32, i32* %7, align 4
  %262 = sitofp i32 %261 to double
  %263 = fdiv double %260, %262
  %264 = fadd double 3.000000e+02, %263
  %265 = fptosi double %264 to i32
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 %265, i32* %266, align 4
  br label %267

267:                                              ; preds = %241, %216
  br label %268

268:                                              ; preds = %267, %186
  br label %269

269:                                              ; preds = %268, %157
  br label %270

270:                                              ; preds = %269, %127
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  %272 = load double, double* %271, align 8
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 6
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load double, double* %275, align 8
  %277 = fdiv double %272, %276
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 2
  %280 = load double, double* %279, align 8
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 3
  %283 = load double, double* %282, align 8
  %284 = fmul double %280, %283
  %285 = call double @pow(double %277, double %284) #4
  %286 = fmul double 1.000000e+02, %285
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  store double %286, double* %287, align 8
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  %290 = load double, double* %289, align 8
  %291 = fdiv double 4.000000e+00, %290
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  %293 = load double, double* %292, align 8
  %294 = fdiv double %293, 1.000000e+02
  %295 = call double @pow(double %294, double 5.000000e-01) #4
  %296 = fmul double %291, %295
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 6
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = load double, double* %299, align 8
  %301 = fadd double %300, 4.000000e+00
  %302 = fmul double %296, %301
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 4
  %305 = load double, double* %304, align 8
  %306 = call double @pow(double %305, double 2.500000e-01) #4
  %307 = fmul double %302, %306
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  store double %307, double* %308, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sitofp i32 %309 to double
  %311 = load i32, i32* %5, align 4
  %312 = load i32, i32* %5, align 4
  %313 = mul nsw i32 %311, %312
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* %6, align 4
  %316 = mul nsw i32 %314, %315
  %317 = add nsw i32 %313, %316
  %318 = sitofp i32 %317 to double
  %319 = call double @pow(double %318, double 5.000000e-01) #4
  %320 = fmul double %310, %319
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %322 = load double*, double** %321, align 8
  %323 = getelementptr inbounds double, double* %322, i64 0
  %324 = load double, double* %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %326 = load double*, double** %325, align 8
  %327 = getelementptr inbounds double, double* %326, i64 1
  %328 = load double, double* %327, align 8
  %329 = fadd double %324, %328
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %331 = load double*, double** %330, align 8
  %332 = getelementptr inbounds double, double* %331, i64 2
  %333 = load double, double* %332, align 8
  %334 = fmul double 1.050000e+00, %333
  %335 = fadd double %329, %334
  %336 = fdiv double %320, %335
  %337 = fptosi double %336 to i32
  store i32 %337, i32* %9, align 4
  %338 = load i32, i32* %9, align 4
  %339 = sitofp i32 %338 to double
  %340 = call double @pow(double %339, double 9.000000e-01) #4
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  %342 = load double, double* %341, align 8
  %343 = fdiv double %342, 1.000000e+02
  %344 = call double @pow(double %343, double 5.000000e-01) #4
  %345 = fmul double %340, %344
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 5
  %348 = load double, double* %347, align 8
  %349 = call double @pow(double 2.900000e-01, double %348) #4
  %350 = fsub double 1.640000e+00, %349
  %351 = call double @pow(double %350, double 7.300000e-01) #4
  %352 = fmul double %345, %351
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 6
  store double %352, double* %353, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 6
  %355 = load double, double* %354, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 4
  %358 = load double, double* %357, align 8
  %359 = call double @pow(double %358, double 2.500000e-01) #4
  %360 = fmul double %355, %359
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 7
  store double %360, double* %361, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 7
  %363 = load double, double* %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  %365 = load double, double* %364, align 8
  %366 = fdiv double %363, %365
  %367 = call double @pow(double %366, double 5.000000e-01) #4
  %368 = fmul double 1.000000e+02, %367
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 8
  store double %368, double* %369, align 8
  %370 = bitcast %struct.TYPE_9__* %0 to i8*
  %371 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %370, i8* align 8 %371, i64 64, i1 false)
  ret void
}

declare dso_local i32 @atan(i32) #1

declare dso_local double @cos(i32) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
