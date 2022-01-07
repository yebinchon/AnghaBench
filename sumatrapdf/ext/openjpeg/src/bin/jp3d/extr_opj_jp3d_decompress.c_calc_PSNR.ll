; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_decompress.c_calc_PSNR.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_decompress.c_calc_PSNR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"[WARNING] Data out of range during PSNR computing...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_6__*, %struct.TYPE_6__*)* @calc_PSNR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_PSNR(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %9, align 4
  store double 0.000000e+00, double* %12, align 8
  store i32 1, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  br label %36

36:                                               ; preds = %25, %24
  %37 = phi i32 [ 255, %24 ], [ %35, %25 ]
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %191

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = mul nsw i32 %47, %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  %63 = mul nsw i32 %55, %62
  store i32 %63, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %167, %40
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %170

70:                                               ; preds = %64
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %163, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %166

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %75
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %89, %75
  %105 = load i32, i32* @stdout, align 4
  %106 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %162

107:                                              ; preds = %89
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 7
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 7
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %119, %131
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 7
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %144, %156
  %158 = mul nsw i32 %132, %157
  %159 = sitofp i32 %158 to double
  %160 = load double, double* %11, align 8
  %161 = fadd double %160, %159
  store double %161, double* %11, align 8
  br label %162

162:                                              ; preds = %107, %104
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %71

166:                                              ; preds = %71
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %64

170:                                              ; preds = %64
  %171 = load i32, i32* %10, align 4
  %172 = sitofp i32 %171 to double
  %173 = load double, double* %11, align 8
  %174 = fdiv double %173, %172
  store double %174, double* %11, align 8
  %175 = load double, double* %11, align 8
  %176 = fcmp oeq double %175, 0.000000e+00
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %189

178:                                              ; preds = %170
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = mul nsw i32 %179, %180
  %182 = sitofp i32 %181 to double
  %183 = load double, double* %11, align 8
  %184 = fdiv double %182, %183
  %185 = fptosi double %184 to i32
  %186 = call i32 @log10(i32 %185)
  %187 = mul nsw i32 10, %186
  %188 = sitofp i32 %187 to double
  br label %189

189:                                              ; preds = %178, %177
  %190 = phi double [ 0.000000e+00, %177 ], [ %188, %178 ]
  store double %190, double* %12, align 8
  br label %366

191:                                              ; preds = %36
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %194, %197
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  %206 = mul nsw i32 %198, %205
  store i32 %206, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %207

207:                                              ; preds = %362, %191
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %211, %214
  %216 = icmp slt i32 %208, %215
  br i1 %216, label %217, label %365

217:                                              ; preds = %207
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %10, align 4
  %220 = mul nsw i32 %218, %219
  store i32 %220, i32* %14, align 4
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %221

221:                                              ; preds = %336, %217
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %339

227:                                              ; preds = %221
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %332, %227
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %335

232:                                              ; preds = %228
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 7
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %240, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %265, label %248

248:                                              ; preds = %232
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 7
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* %14, align 4
  %259 = add nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %256, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp sgt i32 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %248, %232
  %266 = load i32, i32* @stdout, align 4
  %267 = call i32 @fprintf(i32 %266, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %331

268:                                              ; preds = %248
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 7
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 7
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %284, align 8
  %286 = load i32, i32* %9, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %14, align 4
  %293 = add nsw i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %290, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %282, %296
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 7
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* %14, align 4
  %308 = add nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %305, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 7
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %313, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %7, align 4
  %321 = load i32, i32* %14, align 4
  %322 = add nsw i32 %320, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %319, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = sub nsw i32 %311, %325
  %327 = mul nsw i32 %297, %326
  %328 = sitofp i32 %327 to double
  %329 = load double, double* %11, align 8
  %330 = fadd double %329, %328
  store double %330, double* %11, align 8
  br label %331

331:                                              ; preds = %268, %265
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %7, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %7, align 4
  br label %228

335:                                              ; preds = %228
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %9, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %9, align 4
  br label %221

339:                                              ; preds = %221
  %340 = load i32, i32* %10, align 4
  %341 = sitofp i32 %340 to double
  %342 = load double, double* %11, align 8
  %343 = fdiv double %342, %341
  store double %343, double* %11, align 8
  %344 = load double, double* %12, align 8
  %345 = load double, double* %11, align 8
  %346 = fcmp oeq double %345, 0.000000e+00
  br i1 %346, label %347, label %348

347:                                              ; preds = %339
  br label %359

348:                                              ; preds = %339
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* %6, align 4
  %351 = mul nsw i32 %349, %350
  %352 = sitofp i32 %351 to double
  %353 = load double, double* %11, align 8
  %354 = fdiv double %352, %353
  %355 = fptosi double %354 to i32
  %356 = call i32 @log10(i32 %355)
  %357 = mul nsw i32 10, %356
  %358 = sitofp i32 %357 to double
  br label %359

359:                                              ; preds = %348, %347
  %360 = phi double [ 0.000000e+00, %347 ], [ %358, %348 ]
  %361 = fadd double %344, %360
  store double %361, double* %12, align 8
  br label %362

362:                                              ; preds = %359
  %363 = load i32, i32* %8, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %8, align 4
  br label %207

365:                                              ; preds = %207
  br label %366

366:                                              ; preds = %365, %189
  %367 = load double, double* %12, align 8
  %368 = fcmp oeq double %367, 0.000000e+00
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  store double -1.000000e+00, double* %3, align 8
  br label %372

370:                                              ; preds = %366
  %371 = load double, double* %12, align 8
  store double %371, double* %3, align 8
  br label %372

372:                                              ; preds = %370, %369
  %373 = load double, double* %3, align 8
  ret double %373
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @log10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
