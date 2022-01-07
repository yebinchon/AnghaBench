; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_effects.c_vuMeter_Run.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_effects.c_vuMeter_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, float*, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32, i32 }

@M_PI_2 = common dso_local global i32 0, align 4
@GRAD_ANGLE_MIN = common dso_local global float 0.000000e+00, align 4
@M_PI_4 = common dso_local global float 0.000000e+00, align 4
@GRAD_INCR = common dso_local global float 0.000000e+00, align 4
@GRAD_ANGLE_MAX = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*)* @vuMeter_Run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vuMeter_Run(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_11__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @VLC_UNUSED(i32* %25)
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %70, %4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to float*
  store float* %37, float** %12, align 8
  %38 = load float*, float** %12, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds float, float* %38, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fmul float %43, 2.560000e+02
  store float %44, float* %13, align 4
  %45 = load float, float* %13, align 4
  %46 = load float, float* %9, align 4
  %47 = fcmp ogt float %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load float, float* %13, align 4
  store float %49, float* %9, align 4
  br label %50

50:                                               ; preds = %48, %33
  %51 = load float*, float** %12, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds float, float* %51, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fmul float %56, 2.560000e+02
  store float %57, float* %13, align 4
  %58 = load float, float* %13, align 4
  %59 = load float, float* %10, align 4
  %60 = fcmp ogt float %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load float, float* %13, align 4
  store float %62, float* %10, align 4
  br label %63

63:                                               ; preds = %61, %50
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load float*, float** %12, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds float, float* %67, i64 %68
  store float* %69, float** %12, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %27

73:                                               ; preds = %27
  %74 = load float, float* %9, align 4
  %75 = call float @llvm.fabs.f32(float %74)
  store float %75, float* %9, align 4
  %76 = load float, float* %10, align 4
  %77 = call float @llvm.fabs.f32(float %76)
  store float %77, float* %10, align 4
  %78 = load float, float* %9, align 4
  %79 = load i32, i32* @M_PI_2, align 4
  %80 = mul nsw i32 200, %79
  %81 = sitofp i32 %80 to float
  %82 = fcmp ogt float %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32, i32* @M_PI_2, align 4
  %85 = mul nsw i32 200, %84
  %86 = sitofp i32 %85 to float
  store float %86, float* %9, align 4
  br label %87

87:                                               ; preds = %83, %73
  %88 = load float, float* %10, align 4
  %89 = load i32, i32* @M_PI_2, align 4
  %90 = mul nsw i32 200, %89
  %91 = sitofp i32 %90 to float
  %92 = fcmp ogt float %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @M_PI_2, align 4
  %95 = mul nsw i32 200, %94
  %96 = sitofp i32 %95 to float
  store float %96, float* %10, align 4
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load float*, float** %99, align 8
  %101 = icmp ne float* %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %97
  %103 = call float* @vlc_alloc(i32 2, i32 4)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  store float* %103, float** %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load float*, float** %107, align 8
  store float* %108, float** %14, align 8
  %109 = load float, float* %9, align 4
  %110 = load float*, float** %14, align 8
  %111 = getelementptr inbounds float, float* %110, i64 0
  store float %109, float* %111, align 4
  %112 = load float, float* %10, align 4
  %113 = load float*, float** %14, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  store float %112, float* %114, align 4
  br label %155

115:                                              ; preds = %97
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load float*, float** %117, align 8
  store float* %118, float** %14, align 8
  %119 = load float, float* %9, align 4
  %120 = load float*, float** %14, align 8
  %121 = getelementptr inbounds float, float* %120, i64 0
  %122 = load float, float* %121, align 4
  %123 = fsub float %122, 6.000000e+00
  %124 = fcmp ogt float %119, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load float, float* %9, align 4
  %127 = load float*, float** %14, align 8
  %128 = getelementptr inbounds float, float* %127, i64 0
  store float %126, float* %128, align 4
  br label %136

129:                                              ; preds = %115
  %130 = load float*, float** %14, align 8
  %131 = getelementptr inbounds float, float* %130, i64 0
  %132 = load float, float* %131, align 4
  %133 = fsub float %132, 6.000000e+00
  %134 = load float*, float** %14, align 8
  %135 = getelementptr inbounds float, float* %134, i64 0
  store float %133, float* %135, align 4
  br label %136

136:                                              ; preds = %129, %125
  %137 = load float, float* %10, align 4
  %138 = load float*, float** %14, align 8
  %139 = getelementptr inbounds float, float* %138, i64 1
  %140 = load float, float* %139, align 4
  %141 = fsub float %140, 6.000000e+00
  %142 = fcmp ogt float %137, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load float, float* %10, align 4
  %145 = load float*, float** %14, align 8
  %146 = getelementptr inbounds float, float* %145, i64 1
  store float %144, float* %146, align 4
  br label %154

147:                                              ; preds = %136
  %148 = load float*, float** %14, align 8
  %149 = getelementptr inbounds float, float* %148, i64 1
  %150 = load float, float* %149, align 4
  %151 = fsub float %150, 6.000000e+00
  %152 = load float*, float** %14, align 8
  %153 = getelementptr inbounds float, float* %152, i64 1
  store float %151, float* %153, align 4
  br label %154

154:                                              ; preds = %147, %143
  br label %155

155:                                              ; preds = %154, %102
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = sdiv i32 %158, 2
  %160 = sub nsw i32 %159, 120
  store i32 %160, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %161

161:                                              ; preds = %543, %155
  %162 = load i32, i32* %20, align 4
  %163 = icmp slt i32 %162, 2
  br i1 %163, label %164, label %546

164:                                              ; preds = %161
  store i32 0, i32* %21, align 4
  %165 = load float, float* @GRAD_ANGLE_MIN, align 4
  store float %165, float* %18, align 4
  %166 = load float, float* @M_PI_4, align 4
  %167 = fneg float %166
  store float %167, float* %17, align 4
  br label %168

168:                                              ; preds = %298, %164
  %169 = load float, float* %17, align 4
  %170 = load float, float* @M_PI_4, align 4
  %171 = fcmp ole float %169, %170
  br i1 %171, label %172, label %303

172:                                              ; preds = %168
  store i32 140, i32* %22, align 4
  br label %173

173:                                              ; preds = %294, %172
  %174 = load i32, i32* %22, align 4
  %175 = icmp ule i32 %174, 150
  br i1 %175, label %176, label %297

176:                                              ; preds = %173
  %177 = load i32, i32* %22, align 4
  %178 = load float, float* %17, align 4
  %179 = call i32 @cos(float %178)
  %180 = mul i32 %177, %179
  %181 = add i32 %180, 20
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* %22, align 4
  %183 = load float, float* %17, align 4
  %184 = call i32 @sin(float %183)
  %185 = mul i32 %182, %184
  %186 = load i32, i32* %19, align 4
  %187 = add i32 %185, %186
  %188 = load i32, i32* %20, align 4
  %189 = mul nsw i32 240, %188
  %190 = add i32 %187, %189
  store i32 %190, i32* %15, align 4
  %191 = load float, float* %17, align 4
  %192 = load float, float* %18, align 4
  %193 = load float, float* @GRAD_INCR, align 4
  %194 = fadd float %192, %193
  %195 = fcmp oge float %191, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %176
  %197 = load float, float* %18, align 4
  %198 = load float, float* @GRAD_ANGLE_MAX, align 4
  %199 = fcmp ole float %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load float, float* %18, align 4
  %202 = load float, float* @GRAD_INCR, align 4
  %203 = fadd float %201, %202
  store float %203, float* %18, align 4
  %204 = load i32, i32* %21, align 4
  %205 = add nsw i32 %204, 5
  store i32 %205, i32* %21, align 4
  br label %206

206:                                              ; preds = %200, %196, %176
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sub nsw i32 %220, 1
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %221, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %212, i64 %229
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 69, i32* %233, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i64 1
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 1
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sdiv i32 %246, 2
  %248 = sub nsw i32 %245, %247
  %249 = sub nsw i32 %248, 1
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 1
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %249, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %239, i64 %257
  %259 = load i32, i32* %15, align 4
  %260 = sdiv i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 0, i32* %262, align 4
  %263 = load i32, i32* %21, align 4
  %264 = add nsw i32 77, %263
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i64 2
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i64 2
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %16, align 4
  %278 = sdiv i32 %277, 2
  %279 = sub nsw i32 %276, %278
  %280 = sub nsw i32 %279, 1
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i64 2
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = mul nsw i32 %280, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %270, i64 %288
  %290 = load i32, i32* %15, align 4
  %291 = sdiv i32 %290, 2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  store i32 %264, i32* %293, align 4
  br label %294

294:                                              ; preds = %206
  %295 = load i32, i32* %22, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %22, align 4
  br label %173

297:                                              ; preds = %173
  br label %298

298:                                              ; preds = %297
  %299 = load float, float* %17, align 4
  %300 = fpext float %299 to double
  %301 = fadd double %300, 3.000000e-03
  %302 = fptrunc double %301 to float
  store float %302, float* %17, align 4
  br label %168

303:                                              ; preds = %168
  %304 = load float*, float** %14, align 8
  %305 = load i32, i32* %20, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %304, i64 %306
  %308 = load float, float* %307, align 4
  %309 = fdiv float %308, 2.000000e+02
  %310 = load float, float* @M_PI_4, align 4
  %311 = fsub float %309, %310
  store float %311, float* %17, align 4
  store i32 0, i32* %23, align 4
  br label %312

312:                                              ; preds = %415, %303
  %313 = load i32, i32* %23, align 4
  %314 = icmp sle i32 %313, 150
  br i1 %314, label %315, label %418

315:                                              ; preds = %312
  %316 = load i32, i32* %23, align 4
  %317 = load float, float* %17, align 4
  %318 = call i32 @cos(float %317)
  %319 = mul nsw i32 %316, %318
  %320 = add nsw i32 %319, 20
  store i32 %320, i32* %16, align 4
  %321 = load i32, i32* %23, align 4
  %322 = load float, float* %17, align 4
  %323 = call i32 @sin(float %322)
  %324 = mul nsw i32 %321, %323
  %325 = load i32, i32* %19, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* %20, align 4
  %328 = mul nsw i32 240, %327
  %329 = add nsw i32 %326, %328
  store i32 %329, i32* %15, align 4
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i64 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i64 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %16, align 4
  %343 = sub nsw i32 %341, %342
  %344 = sub nsw i32 %343, 1
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i64 0
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = mul nsw i32 %344, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %335, i64 %352
  %354 = load i32, i32* %15, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  store i32 173, i32* %356, align 4
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i64 1
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i64 1
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %16, align 4
  %370 = sdiv i32 %369, 2
  %371 = sub nsw i32 %368, %370
  %372 = sub nsw i32 %371, 1
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i64 1
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = mul nsw i32 %372, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %362, i64 %380
  %382 = load i32, i32* %15, align 4
  %383 = sdiv i32 %382, 2
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %381, i64 %384
  store i32 252, i32* %385, align 4
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 0
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i64 2
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i64 2
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %16, align 4
  %399 = sdiv i32 %398, 2
  %400 = sub nsw i32 %397, %399
  %401 = sub nsw i32 %400, 1
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i64 2
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = mul nsw i32 %401, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %391, i64 %409
  %411 = load i32, i32* %15, align 4
  %412 = sdiv i32 %411, 2
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %410, i64 %413
  store i32 172, i32* %414, align 4
  br label %415

415:                                              ; preds = %315
  %416 = load i32, i32* %23, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %23, align 4
  br label %312

418:                                              ; preds = %312
  %419 = load i32, i32* @M_PI_2, align 4
  %420 = sub nsw i32 0, %419
  %421 = sitofp i32 %420 to float
  store float %421, float* %17, align 4
  br label %422

422:                                              ; preds = %537, %418
  %423 = load float, float* %17, align 4
  %424 = fpext float %423 to double
  %425 = load i32, i32* @M_PI_2, align 4
  %426 = sitofp i32 %425 to double
  %427 = fadd double %426, 1.000000e-02
  %428 = fcmp ole double %424, %427
  br i1 %428, label %429, label %542

429:                                              ; preds = %422
  store i32 0, i32* %24, align 4
  br label %430

430:                                              ; preds = %533, %429
  %431 = load i32, i32* %24, align 4
  %432 = icmp slt i32 %431, 10
  br i1 %432, label %433, label %536

433:                                              ; preds = %430
  %434 = load i32, i32* %24, align 4
  %435 = load float, float* %17, align 4
  %436 = call i32 @cos(float %435)
  %437 = mul nsw i32 %434, %436
  %438 = add nsw i32 %437, 20
  store i32 %438, i32* %16, align 4
  %439 = load i32, i32* %24, align 4
  %440 = load float, float* %17, align 4
  %441 = call i32 @sin(float %440)
  %442 = mul nsw i32 %439, %441
  %443 = load i32, i32* %19, align 4
  %444 = add nsw i32 %442, %443
  %445 = load i32, i32* %20, align 4
  %446 = mul nsw i32 240, %445
  %447 = add nsw i32 %444, %446
  store i32 %447, i32* %15, align 4
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_8__*, %struct.TYPE_8__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i64 0
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 0
  %453 = load i32*, i32** %452, align 8
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 0
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i64 0
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* %16, align 4
  %461 = sub nsw i32 %459, %460
  %462 = sub nsw i32 %461, 1
  %463 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %463, i32 0, i32 0
  %465 = load %struct.TYPE_8__*, %struct.TYPE_8__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i64 0
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 4
  %469 = mul nsw i32 %462, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %453, i64 %470
  %472 = load i32, i32* %15, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  store i32 255, i32* %474, align 4
  %475 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_8__*, %struct.TYPE_8__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i64 1
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %482 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_8__*, %struct.TYPE_8__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i64 1
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* %16, align 4
  %488 = sdiv i32 %487, 2
  %489 = sub nsw i32 %486, %488
  %490 = sub nsw i32 %489, 1
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_8__*, %struct.TYPE_8__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %493, i64 1
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 4
  %497 = mul nsw i32 %490, %496
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %480, i64 %498
  %500 = load i32, i32* %15, align 4
  %501 = sdiv i32 %500, 2
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %499, i64 %502
  store i32 128, i32* %503, align 4
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 0
  %506 = load %struct.TYPE_8__*, %struct.TYPE_8__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i64 2
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 0
  %509 = load i32*, i32** %508, align 8
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 0
  %512 = load %struct.TYPE_8__*, %struct.TYPE_8__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i64 2
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* %16, align 4
  %517 = sdiv i32 %516, 2
  %518 = sub nsw i32 %515, %517
  %519 = sub nsw i32 %518, 1
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_8__*, %struct.TYPE_8__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %522, i64 2
  %524 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 4
  %526 = mul nsw i32 %519, %525
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %509, i64 %527
  %529 = load i32, i32* %15, align 4
  %530 = sdiv i32 %529, 2
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %528, i64 %531
  store i32 128, i32* %532, align 4
  br label %533

533:                                              ; preds = %433
  %534 = load i32, i32* %24, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %24, align 4
  br label %430

536:                                              ; preds = %430
  br label %537

537:                                              ; preds = %536
  %538 = load float, float* %17, align 4
  %539 = fpext float %538 to double
  %540 = fadd double %539, 3.000000e-03
  %541 = fptrunc double %540 to float
  store float %541, float* %17, align 4
  br label %422

542:                                              ; preds = %422
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %20, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %20, align 4
  br label %161

546:                                              ; preds = %161
  ret i32 0
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float* @vlc_alloc(i32, i32) #1

declare dso_local i32 @cos(float) #1

declare dso_local i32 @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
