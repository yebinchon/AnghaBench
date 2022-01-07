; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_dash_lineto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_dash_lineto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctx = type { i32, i32, float, float, i32, float*, i64, %struct.TYPE_6__, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { float, float }
%struct.TYPE_4__ = type { float, float, float, float }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctx*, float, float, i32)* @fz_dash_lineto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_dash_lineto(i32* %0, %struct.sctx* %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sctx*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store %struct.sctx* %1, %struct.sctx** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = load %struct.sctx*, %struct.sctx** %7, align 8
  %28 = getelementptr inbounds %struct.sctx, %struct.sctx* %27, i32 0, i32 9
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %25, align 4
  %32 = load %struct.sctx*, %struct.sctx** %7, align 8
  %33 = getelementptr inbounds %struct.sctx, %struct.sctx* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load float, float* %34, align 8
  store float %35, float* %18, align 4
  %36 = load %struct.sctx*, %struct.sctx** %7, align 8
  %37 = getelementptr inbounds %struct.sctx, %struct.sctx* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load float, float* %38, align 4
  store float %39, float* %19, align 4
  %40 = load float, float* %8, align 4
  %41 = load float, float* %18, align 4
  %42 = fsub float %40, %41
  store float %42, float* %11, align 4
  %43 = load float, float* %9, align 4
  %44 = load float, float* %19, align 4
  %45 = fsub float %43, %44
  store float %45, float* %12, align 4
  store float 0.000000e+00, float* %15, align 4
  store float 0.000000e+00, float* %17, align 4
  %46 = load float, float* %11, align 4
  %47 = load float, float* %11, align 4
  %48 = fmul float %46, %47
  %49 = load float, float* %12, align 4
  %50 = load float, float* %12, align 4
  %51 = fmul float %49, %50
  %52 = fadd float %48, %51
  %53 = call float @sqrtf(float %52) #3
  store float %53, float* %14, align 4
  %54 = load %struct.sctx*, %struct.sctx** %7, align 8
  %55 = getelementptr inbounds %struct.sctx, %struct.sctx* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 8
  %58 = load float, float* %18, align 4
  %59 = fsub float %57, %58
  store float %59, float* %13, align 4
  %60 = fcmp ogt float %59, 0.000000e+00
  br i1 %60, label %61, label %77

61:                                               ; preds = %5
  %62 = load float, float* %8, align 4
  %63 = load %struct.sctx*, %struct.sctx** %7, align 8
  %64 = getelementptr inbounds %struct.sctx, %struct.sctx* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load float, float* %65, align 8
  %67 = fcmp olt float %62, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load float, float* %14, align 4
  store float %69, float* %17, align 4
  %70 = load float, float* %8, align 4
  store float %70, float* %22, align 4
  %71 = load float, float* %9, align 4
  store float %71, float* %23, align 4
  br label %613

72:                                               ; preds = %61
  %73 = load %struct.sctx*, %struct.sctx** %7, align 8
  %74 = getelementptr inbounds %struct.sctx, %struct.sctx* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load float, float* %75, align 8
  store float %76, float* %18, align 4
  br label %104

77:                                               ; preds = %5
  %78 = load float, float* %13, align 4
  %79 = fcmp olt float %78, 0.000000e+00
  br i1 %79, label %80, label %126

80:                                               ; preds = %77
  %81 = load %struct.sctx*, %struct.sctx** %7, align 8
  %82 = getelementptr inbounds %struct.sctx, %struct.sctx* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load float, float* %83, align 4
  %85 = load float, float* %18, align 4
  %86 = fsub float %84, %85
  store float %86, float* %13, align 4
  %87 = fcmp olt float %86, 0.000000e+00
  br i1 %87, label %88, label %126

88:                                               ; preds = %80
  %89 = load float, float* %8, align 4
  %90 = load %struct.sctx*, %struct.sctx** %7, align 8
  %91 = getelementptr inbounds %struct.sctx, %struct.sctx* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load float, float* %92, align 4
  %94 = fcmp ogt float %89, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load float, float* %14, align 4
  store float %96, float* %17, align 4
  %97 = load float, float* %8, align 4
  store float %97, float* %22, align 4
  %98 = load float, float* %9, align 4
  store float %98, float* %23, align 4
  br label %613

99:                                               ; preds = %88
  %100 = load %struct.sctx*, %struct.sctx** %7, align 8
  %101 = getelementptr inbounds %struct.sctx, %struct.sctx* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load float, float* %102, align 4
  store float %103, float* %18, align 4
  br label %104

104:                                              ; preds = %99, %72
  %105 = load float, float* %12, align 4
  %106 = load float, float* %13, align 4
  %107 = fmul float %105, %106
  %108 = load float, float* %11, align 4
  %109 = fdiv float %107, %108
  %110 = load float, float* %19, align 4
  %111 = fadd float %110, %109
  store float %111, float* %19, align 4
  %112 = load float, float* %14, align 4
  %113 = load float, float* %13, align 4
  %114 = fmul float %112, %113
  %115 = load float, float* %11, align 4
  %116 = fdiv float %114, %115
  store float %116, float* %15, align 4
  %117 = load float, float* %15, align 4
  %118 = load float, float* %14, align 4
  %119 = fsub float %118, %117
  store float %119, float* %14, align 4
  %120 = load float, float* %8, align 4
  %121 = load float, float* %18, align 4
  %122 = fsub float %120, %121
  store float %122, float* %11, align 4
  %123 = load float, float* %9, align 4
  %124 = load float, float* %19, align 4
  %125 = fsub float %123, %124
  store float %125, float* %12, align 4
  br label %126

126:                                              ; preds = %104, %80, %77
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.sctx*, %struct.sctx** %7, align 8
  %129 = getelementptr inbounds %struct.sctx, %struct.sctx* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load float, float* %130, align 8
  %132 = load float, float* %19, align 4
  %133 = fsub float %131, %132
  store float %133, float* %13, align 4
  %134 = fcmp ogt float %133, 0.000000e+00
  br i1 %134, label %135, label %151

135:                                              ; preds = %127
  %136 = load float, float* %9, align 4
  %137 = load %struct.sctx*, %struct.sctx** %7, align 8
  %138 = getelementptr inbounds %struct.sctx, %struct.sctx* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load float, float* %139, align 8
  %141 = fcmp olt float %136, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load float, float* %14, align 4
  store float %143, float* %17, align 4
  %144 = load float, float* %8, align 4
  store float %144, float* %22, align 4
  %145 = load float, float* %9, align 4
  store float %145, float* %23, align 4
  br label %613

146:                                              ; preds = %135
  %147 = load %struct.sctx*, %struct.sctx** %7, align 8
  %148 = getelementptr inbounds %struct.sctx, %struct.sctx* %147, i32 0, i32 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load float, float* %149, align 8
  store float %150, float* %19, align 4
  br label %178

151:                                              ; preds = %127
  %152 = load float, float* %13, align 4
  %153 = fcmp olt float %152, 0.000000e+00
  br i1 %153, label %154, label %203

154:                                              ; preds = %151
  %155 = load %struct.sctx*, %struct.sctx** %7, align 8
  %156 = getelementptr inbounds %struct.sctx, %struct.sctx* %155, i32 0, i32 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load float, float* %157, align 4
  %159 = load float, float* %19, align 4
  %160 = fsub float %158, %159
  store float %160, float* %13, align 4
  %161 = fcmp olt float %160, 0.000000e+00
  br i1 %161, label %162, label %203

162:                                              ; preds = %154
  %163 = load float, float* %9, align 4
  %164 = load %struct.sctx*, %struct.sctx** %7, align 8
  %165 = getelementptr inbounds %struct.sctx, %struct.sctx* %164, i32 0, i32 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  %167 = load float, float* %166, align 4
  %168 = fcmp ogt float %163, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load float, float* %14, align 4
  store float %170, float* %17, align 4
  %171 = load float, float* %8, align 4
  store float %171, float* %22, align 4
  %172 = load float, float* %9, align 4
  store float %172, float* %23, align 4
  br label %613

173:                                              ; preds = %162
  %174 = load %struct.sctx*, %struct.sctx** %7, align 8
  %175 = getelementptr inbounds %struct.sctx, %struct.sctx* %174, i32 0, i32 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = load float, float* %176, align 4
  store float %177, float* %19, align 4
  br label %178

178:                                              ; preds = %173, %146
  %179 = load float, float* %11, align 4
  %180 = load float, float* %13, align 4
  %181 = fmul float %179, %180
  %182 = load float, float* %12, align 4
  %183 = fdiv float %181, %182
  %184 = load float, float* %18, align 4
  %185 = fadd float %184, %183
  store float %185, float* %18, align 4
  %186 = load float, float* %14, align 4
  %187 = load float, float* %13, align 4
  %188 = fmul float %186, %187
  %189 = load float, float* %12, align 4
  %190 = fdiv float %188, %189
  store float %190, float* %13, align 4
  %191 = load float, float* %13, align 4
  %192 = load float, float* %14, align 4
  %193 = fsub float %192, %191
  store float %193, float* %14, align 4
  %194 = load float, float* %13, align 4
  %195 = load float, float* %15, align 4
  %196 = fadd float %195, %194
  store float %196, float* %15, align 4
  %197 = load float, float* %8, align 4
  %198 = load float, float* %18, align 4
  %199 = fsub float %197, %198
  store float %199, float* %11, align 4
  %200 = load float, float* %9, align 4
  %201 = load float, float* %19, align 4
  %202 = fsub float %200, %201
  store float %202, float* %12, align 4
  br label %203

203:                                              ; preds = %178, %154, %151
  br label %204

204:                                              ; preds = %203
  %205 = load float, float* %15, align 4
  %206 = fcmp une float %205, 0.000000e+00
  br i1 %206, label %207, label %366

207:                                              ; preds = %204
  %208 = load %struct.sctx*, %struct.sctx** %7, align 8
  %209 = getelementptr inbounds %struct.sctx, %struct.sctx* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load i32*, i32** %6, align 8
  %214 = load %struct.sctx*, %struct.sctx** %7, align 8
  %215 = load float, float* %18, align 4
  %216 = load float, float* %19, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @fz_stroke_lineto(i32* %213, %struct.sctx* %214, float %215, float %216, i32 %217)
  br label %243

219:                                              ; preds = %207
  %220 = load i32*, i32** %6, align 8
  %221 = load %struct.sctx*, %struct.sctx** %7, align 8
  %222 = load %struct.sctx*, %struct.sctx** %7, align 8
  %223 = getelementptr inbounds %struct.sctx, %struct.sctx* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.sctx*, %struct.sctx** %7, align 8
  %226 = getelementptr inbounds %struct.sctx, %struct.sctx* %225, i32 0, i32 9
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @fz_stroke_flush(i32* %220, %struct.sctx* %221, i32 %224, i32 %229)
  %231 = load %struct.sctx*, %struct.sctx** %7, align 8
  %232 = getelementptr inbounds %struct.sctx, %struct.sctx* %231, i32 0, i32 9
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.sctx*, %struct.sctx** %7, align 8
  %237 = getelementptr inbounds %struct.sctx, %struct.sctx* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load i32*, i32** %6, align 8
  %239 = load %struct.sctx*, %struct.sctx** %7, align 8
  %240 = load float, float* %18, align 4
  %241 = load float, float* %19, align 4
  %242 = call i32 @fz_stroke_moveto(i32* %238, %struct.sctx* %239, float %240, float %241)
  br label %243

243:                                              ; preds = %219, %212
  %244 = load %struct.sctx*, %struct.sctx** %7, align 8
  %245 = getelementptr inbounds %struct.sctx, %struct.sctx* %244, i32 0, i32 2
  %246 = load float, float* %245, align 8
  %247 = load float, float* %15, align 4
  %248 = fadd float %247, %246
  store float %248, float* %15, align 4
  %249 = load float, float* %15, align 4
  %250 = load %struct.sctx*, %struct.sctx** %7, align 8
  %251 = getelementptr inbounds %struct.sctx, %struct.sctx* %250, i32 0, i32 3
  %252 = load float, float* %251, align 4
  %253 = fdiv float %249, %252
  %254 = fptosi float %253 to i32
  store i32 %254, i32* %24, align 4
  %255 = load i32, i32* %24, align 4
  %256 = sitofp i32 %255 to float
  %257 = load %struct.sctx*, %struct.sctx** %7, align 8
  %258 = getelementptr inbounds %struct.sctx, %struct.sctx* %257, i32 0, i32 3
  %259 = load float, float* %258, align 4
  %260 = fmul float %256, %259
  %261 = load float, float* %15, align 4
  %262 = fsub float %261, %260
  store float %262, float* %15, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load %struct.sctx*, %struct.sctx** %7, align 8
  %265 = getelementptr inbounds %struct.sctx, %struct.sctx* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %263, %266
  %268 = and i32 %267, 1
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %243
  %271 = load %struct.sctx*, %struct.sctx** %7, align 8
  %272 = getelementptr inbounds %struct.sctx, %struct.sctx* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = load %struct.sctx*, %struct.sctx** %7, align 8
  %278 = getelementptr inbounds %struct.sctx, %struct.sctx* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  br label %279

279:                                              ; preds = %270, %243
  br label %280

280:                                              ; preds = %317, %279
  %281 = load float, float* %15, align 4
  %282 = load %struct.sctx*, %struct.sctx** %7, align 8
  %283 = getelementptr inbounds %struct.sctx, %struct.sctx* %282, i32 0, i32 5
  %284 = load float*, float** %283, align 8
  %285 = load %struct.sctx*, %struct.sctx** %7, align 8
  %286 = getelementptr inbounds %struct.sctx, %struct.sctx* %285, i32 0, i32 6
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds float, float* %284, i64 %287
  %289 = load float, float* %288, align 4
  %290 = fcmp oge float %281, %289
  br i1 %290, label %291, label %326

291:                                              ; preds = %280
  %292 = load %struct.sctx*, %struct.sctx** %7, align 8
  %293 = getelementptr inbounds %struct.sctx, %struct.sctx* %292, i32 0, i32 5
  %294 = load float*, float** %293, align 8
  %295 = load %struct.sctx*, %struct.sctx** %7, align 8
  %296 = getelementptr inbounds %struct.sctx, %struct.sctx* %295, i32 0, i32 6
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds float, float* %294, i64 %297
  %299 = load float, float* %298, align 4
  %300 = load float, float* %15, align 4
  %301 = fsub float %300, %299
  store float %301, float* %15, align 4
  %302 = load %struct.sctx*, %struct.sctx** %7, align 8
  %303 = getelementptr inbounds %struct.sctx, %struct.sctx* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %303, align 8
  %306 = load %struct.sctx*, %struct.sctx** %7, align 8
  %307 = getelementptr inbounds %struct.sctx, %struct.sctx* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.sctx*, %struct.sctx** %7, align 8
  %310 = getelementptr inbounds %struct.sctx, %struct.sctx* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = icmp eq i64 %308, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %291
  %315 = load %struct.sctx*, %struct.sctx** %7, align 8
  %316 = getelementptr inbounds %struct.sctx, %struct.sctx* %315, i32 0, i32 6
  store i64 0, i64* %316, align 8
  br label %317

317:                                              ; preds = %314, %291
  %318 = load %struct.sctx*, %struct.sctx** %7, align 8
  %319 = getelementptr inbounds %struct.sctx, %struct.sctx* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = load %struct.sctx*, %struct.sctx** %7, align 8
  %325 = getelementptr inbounds %struct.sctx, %struct.sctx* %324, i32 0, i32 0
  store i32 %323, i32* %325, align 8
  br label %280

326:                                              ; preds = %280
  %327 = load %struct.sctx*, %struct.sctx** %7, align 8
  %328 = getelementptr inbounds %struct.sctx, %struct.sctx* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %326
  %332 = load i32*, i32** %6, align 8
  %333 = load %struct.sctx*, %struct.sctx** %7, align 8
  %334 = load float, float* %18, align 4
  %335 = load float, float* %19, align 4
  %336 = load i32, i32* %10, align 4
  %337 = call i32 @fz_stroke_lineto(i32* %332, %struct.sctx* %333, float %334, float %335, i32 %336)
  br label %362

338:                                              ; preds = %326
  %339 = load i32*, i32** %6, align 8
  %340 = load %struct.sctx*, %struct.sctx** %7, align 8
  %341 = load %struct.sctx*, %struct.sctx** %7, align 8
  %342 = getelementptr inbounds %struct.sctx, %struct.sctx* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.sctx*, %struct.sctx** %7, align 8
  %345 = getelementptr inbounds %struct.sctx, %struct.sctx* %344, i32 0, i32 9
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @fz_stroke_flush(i32* %339, %struct.sctx* %340, i32 %343, i32 %348)
  %350 = load %struct.sctx*, %struct.sctx** %7, align 8
  %351 = getelementptr inbounds %struct.sctx, %struct.sctx* %350, i32 0, i32 9
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.sctx*, %struct.sctx** %7, align 8
  %356 = getelementptr inbounds %struct.sctx, %struct.sctx* %355, i32 0, i32 1
  store i32 %354, i32* %356, align 4
  %357 = load i32*, i32** %6, align 8
  %358 = load %struct.sctx*, %struct.sctx** %7, align 8
  %359 = load float, float* %18, align 4
  %360 = load float, float* %19, align 4
  %361 = call i32 @fz_stroke_moveto(i32* %357, %struct.sctx* %358, float %359, float %360)
  br label %362

362:                                              ; preds = %338, %331
  %363 = load float, float* %15, align 4
  %364 = load %struct.sctx*, %struct.sctx** %7, align 8
  %365 = getelementptr inbounds %struct.sctx, %struct.sctx* %364, i32 0, i32 2
  store float %363, float* %365, align 8
  store float 0.000000e+00, float* %15, align 4
  br label %366

366:                                              ; preds = %362, %204
  %367 = load float, float* %8, align 4
  %368 = load %struct.sctx*, %struct.sctx** %7, align 8
  %369 = getelementptr inbounds %struct.sctx, %struct.sctx* %368, i32 0, i32 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = load float, float* %370, align 8
  %372 = fsub float %367, %371
  store float %372, float* %13, align 4
  %373 = fcmp olt float %372, 0.000000e+00
  br i1 %373, label %374, label %381

374:                                              ; preds = %366
  %375 = load float, float* %8, align 4
  store float %375, float* %22, align 4
  %376 = load float, float* %9, align 4
  store float %376, float* %23, align 4
  %377 = load %struct.sctx*, %struct.sctx** %7, align 8
  %378 = getelementptr inbounds %struct.sctx, %struct.sctx* %377, i32 0, i32 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = load float, float* %379, align 8
  store float %380, float* %8, align 4
  br label %399

381:                                              ; preds = %366
  %382 = load float, float* %13, align 4
  %383 = fcmp ogt float %382, 0.000000e+00
  br i1 %383, label %384, label %421

384:                                              ; preds = %381
  %385 = load float, float* %8, align 4
  %386 = load %struct.sctx*, %struct.sctx** %7, align 8
  %387 = getelementptr inbounds %struct.sctx, %struct.sctx* %386, i32 0, i32 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 1
  %389 = load float, float* %388, align 4
  %390 = fsub float %385, %389
  store float %390, float* %13, align 4
  %391 = fcmp ogt float %390, 0.000000e+00
  br i1 %391, label %392, label %421

392:                                              ; preds = %384
  %393 = load float, float* %8, align 4
  store float %393, float* %22, align 4
  %394 = load float, float* %9, align 4
  store float %394, float* %23, align 4
  %395 = load %struct.sctx*, %struct.sctx** %7, align 8
  %396 = getelementptr inbounds %struct.sctx, %struct.sctx* %395, i32 0, i32 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 1
  %398 = load float, float* %397, align 4
  store float %398, float* %8, align 4
  br label %399

399:                                              ; preds = %392, %374
  %400 = load float, float* %12, align 4
  %401 = load float, float* %13, align 4
  %402 = fmul float %400, %401
  %403 = load float, float* %11, align 4
  %404 = fdiv float %402, %403
  %405 = load float, float* %9, align 4
  %406 = fsub float %405, %404
  store float %406, float* %9, align 4
  %407 = load float, float* %14, align 4
  %408 = load float, float* %13, align 4
  %409 = fmul float %407, %408
  %410 = load float, float* %11, align 4
  %411 = fdiv float %409, %410
  store float %411, float* %17, align 4
  %412 = load float, float* %17, align 4
  %413 = load float, float* %14, align 4
  %414 = fsub float %413, %412
  store float %414, float* %14, align 4
  %415 = load float, float* %8, align 4
  %416 = load float, float* %18, align 4
  %417 = fsub float %415, %416
  store float %417, float* %11, align 4
  %418 = load float, float* %9, align 4
  %419 = load float, float* %19, align 4
  %420 = fsub float %418, %419
  store float %420, float* %12, align 4
  br label %421

421:                                              ; preds = %399, %384, %381
  br label %422

422:                                              ; preds = %421
  %423 = load float, float* %9, align 4
  %424 = load %struct.sctx*, %struct.sctx** %7, align 8
  %425 = getelementptr inbounds %struct.sctx, %struct.sctx* %424, i32 0, i32 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 2
  %427 = load float, float* %426, align 8
  %428 = fsub float %423, %427
  store float %428, float* %13, align 4
  %429 = fcmp olt float %428, 0.000000e+00
  br i1 %429, label %430, label %437

430:                                              ; preds = %422
  %431 = load float, float* %8, align 4
  store float %431, float* %22, align 4
  %432 = load float, float* %9, align 4
  store float %432, float* %23, align 4
  %433 = load %struct.sctx*, %struct.sctx** %7, align 8
  %434 = getelementptr inbounds %struct.sctx, %struct.sctx* %433, i32 0, i32 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 2
  %436 = load float, float* %435, align 8
  store float %436, float* %9, align 4
  br label %455

437:                                              ; preds = %422
  %438 = load float, float* %13, align 4
  %439 = fcmp ogt float %438, 0.000000e+00
  br i1 %439, label %440, label %480

440:                                              ; preds = %437
  %441 = load float, float* %9, align 4
  %442 = load %struct.sctx*, %struct.sctx** %7, align 8
  %443 = getelementptr inbounds %struct.sctx, %struct.sctx* %442, i32 0, i32 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 3
  %445 = load float, float* %444, align 4
  %446 = fsub float %441, %445
  store float %446, float* %13, align 4
  %447 = fcmp ogt float %446, 0.000000e+00
  br i1 %447, label %448, label %480

448:                                              ; preds = %440
  %449 = load float, float* %8, align 4
  store float %449, float* %22, align 4
  %450 = load float, float* %9, align 4
  store float %450, float* %23, align 4
  %451 = load %struct.sctx*, %struct.sctx** %7, align 8
  %452 = getelementptr inbounds %struct.sctx, %struct.sctx* %451, i32 0, i32 8
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 3
  %454 = load float, float* %453, align 4
  store float %454, float* %9, align 4
  br label %455

455:                                              ; preds = %448, %430
  %456 = load float, float* %11, align 4
  %457 = load float, float* %13, align 4
  %458 = fmul float %456, %457
  %459 = load float, float* %12, align 4
  %460 = fdiv float %458, %459
  %461 = load float, float* %8, align 4
  %462 = fsub float %461, %460
  store float %462, float* %8, align 4
  %463 = load float, float* %14, align 4
  %464 = load float, float* %13, align 4
  %465 = fmul float %463, %464
  %466 = load float, float* %12, align 4
  %467 = fdiv float %465, %466
  store float %467, float* %26, align 4
  %468 = load float, float* %26, align 4
  %469 = load float, float* %17, align 4
  %470 = fadd float %469, %468
  store float %470, float* %17, align 4
  %471 = load float, float* %26, align 4
  %472 = load float, float* %14, align 4
  %473 = fsub float %472, %471
  store float %473, float* %14, align 4
  %474 = load float, float* %8, align 4
  %475 = load float, float* %18, align 4
  %476 = fsub float %474, %475
  store float %476, float* %11, align 4
  %477 = load float, float* %9, align 4
  %478 = load float, float* %19, align 4
  %479 = fsub float %477, %478
  store float %479, float* %12, align 4
  br label %480

480:                                              ; preds = %455, %440, %437
  br label %481

481:                                              ; preds = %480
  br label %482

482:                                              ; preds = %580, %481
  %483 = load float, float* %14, align 4
  %484 = load float, float* %15, align 4
  %485 = fsub float %483, %484
  %486 = load %struct.sctx*, %struct.sctx** %7, align 8
  %487 = getelementptr inbounds %struct.sctx, %struct.sctx* %486, i32 0, i32 5
  %488 = load float*, float** %487, align 8
  %489 = load %struct.sctx*, %struct.sctx** %7, align 8
  %490 = getelementptr inbounds %struct.sctx, %struct.sctx* %489, i32 0, i32 6
  %491 = load i64, i64* %490, align 8
  %492 = getelementptr inbounds float, float* %488, i64 %491
  %493 = load float, float* %492, align 4
  %494 = load %struct.sctx*, %struct.sctx** %7, align 8
  %495 = getelementptr inbounds %struct.sctx, %struct.sctx* %494, i32 0, i32 2
  %496 = load float, float* %495, align 8
  %497 = fsub float %493, %496
  %498 = fcmp ogt float %485, %497
  br i1 %498, label %499, label %581

499:                                              ; preds = %482
  %500 = load %struct.sctx*, %struct.sctx** %7, align 8
  %501 = getelementptr inbounds %struct.sctx, %struct.sctx* %500, i32 0, i32 5
  %502 = load float*, float** %501, align 8
  %503 = load %struct.sctx*, %struct.sctx** %7, align 8
  %504 = getelementptr inbounds %struct.sctx, %struct.sctx* %503, i32 0, i32 6
  %505 = load i64, i64* %504, align 8
  %506 = getelementptr inbounds float, float* %502, i64 %505
  %507 = load float, float* %506, align 4
  %508 = load %struct.sctx*, %struct.sctx** %7, align 8
  %509 = getelementptr inbounds %struct.sctx, %struct.sctx* %508, i32 0, i32 2
  %510 = load float, float* %509, align 8
  %511 = fsub float %507, %510
  %512 = load float, float* %15, align 4
  %513 = fadd float %512, %511
  store float %513, float* %15, align 4
  %514 = load float, float* %15, align 4
  %515 = load float, float* %14, align 4
  %516 = fdiv float %514, %515
  store float %516, float* %16, align 4
  %517 = load float, float* %18, align 4
  %518 = load float, float* %16, align 4
  %519 = load float, float* %11, align 4
  %520 = fmul float %518, %519
  %521 = fadd float %517, %520
  store float %521, float* %20, align 4
  %522 = load float, float* %19, align 4
  %523 = load float, float* %16, align 4
  %524 = load float, float* %12, align 4
  %525 = fmul float %523, %524
  %526 = fadd float %522, %525
  store float %526, float* %21, align 4
  %527 = load %struct.sctx*, %struct.sctx** %7, align 8
  %528 = getelementptr inbounds %struct.sctx, %struct.sctx* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %538

531:                                              ; preds = %499
  %532 = load i32*, i32** %6, align 8
  %533 = load %struct.sctx*, %struct.sctx** %7, align 8
  %534 = load float, float* %20, align 4
  %535 = load float, float* %21, align 4
  %536 = load i32, i32* %10, align 4
  %537 = call i32 @fz_stroke_lineto(i32* %532, %struct.sctx* %533, float %534, float %535, i32 %536)
  br label %554

538:                                              ; preds = %499
  %539 = load i32*, i32** %6, align 8
  %540 = load %struct.sctx*, %struct.sctx** %7, align 8
  %541 = load %struct.sctx*, %struct.sctx** %7, align 8
  %542 = getelementptr inbounds %struct.sctx, %struct.sctx* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* %25, align 4
  %545 = call i32 @fz_stroke_flush(i32* %539, %struct.sctx* %540, i32 %543, i32 %544)
  %546 = load i32, i32* %25, align 4
  %547 = load %struct.sctx*, %struct.sctx** %7, align 8
  %548 = getelementptr inbounds %struct.sctx, %struct.sctx* %547, i32 0, i32 1
  store i32 %546, i32* %548, align 4
  %549 = load i32*, i32** %6, align 8
  %550 = load %struct.sctx*, %struct.sctx** %7, align 8
  %551 = load float, float* %20, align 4
  %552 = load float, float* %21, align 4
  %553 = call i32 @fz_stroke_moveto(i32* %549, %struct.sctx* %550, float %551, float %552)
  br label %554

554:                                              ; preds = %538, %531
  %555 = load %struct.sctx*, %struct.sctx** %7, align 8
  %556 = getelementptr inbounds %struct.sctx, %struct.sctx* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = icmp ne i32 %557, 0
  %559 = xor i1 %558, true
  %560 = zext i1 %559 to i32
  %561 = load %struct.sctx*, %struct.sctx** %7, align 8
  %562 = getelementptr inbounds %struct.sctx, %struct.sctx* %561, i32 0, i32 0
  store i32 %560, i32* %562, align 8
  %563 = load %struct.sctx*, %struct.sctx** %7, align 8
  %564 = getelementptr inbounds %struct.sctx, %struct.sctx* %563, i32 0, i32 2
  store float 0.000000e+00, float* %564, align 8
  %565 = load %struct.sctx*, %struct.sctx** %7, align 8
  %566 = getelementptr inbounds %struct.sctx, %struct.sctx* %565, i32 0, i32 6
  %567 = load i64, i64* %566, align 8
  %568 = add i64 %567, 1
  store i64 %568, i64* %566, align 8
  %569 = load %struct.sctx*, %struct.sctx** %7, align 8
  %570 = getelementptr inbounds %struct.sctx, %struct.sctx* %569, i32 0, i32 6
  %571 = load i64, i64* %570, align 8
  %572 = load %struct.sctx*, %struct.sctx** %7, align 8
  %573 = getelementptr inbounds %struct.sctx, %struct.sctx* %572, i32 0, i32 4
  %574 = load i32, i32* %573, align 8
  %575 = sext i32 %574 to i64
  %576 = icmp eq i64 %571, %575
  br i1 %576, label %577, label %580

577:                                              ; preds = %554
  %578 = load %struct.sctx*, %struct.sctx** %7, align 8
  %579 = getelementptr inbounds %struct.sctx, %struct.sctx* %578, i32 0, i32 6
  store i64 0, i64* %579, align 8
  br label %580

580:                                              ; preds = %577, %554
  br label %482

581:                                              ; preds = %482
  %582 = load float, float* %14, align 4
  %583 = load float, float* %15, align 4
  %584 = fsub float %582, %583
  %585 = load %struct.sctx*, %struct.sctx** %7, align 8
  %586 = getelementptr inbounds %struct.sctx, %struct.sctx* %585, i32 0, i32 2
  %587 = load float, float* %586, align 8
  %588 = fadd float %587, %584
  store float %588, float* %586, align 8
  %589 = load float, float* %17, align 4
  %590 = fcmp oeq float %589, 0.000000e+00
  br i1 %590, label %591, label %612

591:                                              ; preds = %581
  %592 = load float, float* %8, align 4
  %593 = load %struct.sctx*, %struct.sctx** %7, align 8
  %594 = getelementptr inbounds %struct.sctx, %struct.sctx* %593, i32 0, i32 7
  %595 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %594, i32 0, i32 0
  store float %592, float* %595, align 8
  %596 = load float, float* %9, align 4
  %597 = load %struct.sctx*, %struct.sctx** %7, align 8
  %598 = getelementptr inbounds %struct.sctx, %struct.sctx* %597, i32 0, i32 7
  %599 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %598, i32 0, i32 1
  store float %596, float* %599, align 4
  %600 = load %struct.sctx*, %struct.sctx** %7, align 8
  %601 = getelementptr inbounds %struct.sctx, %struct.sctx* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %611

604:                                              ; preds = %591
  %605 = load i32*, i32** %6, align 8
  %606 = load %struct.sctx*, %struct.sctx** %7, align 8
  %607 = load float, float* %8, align 4
  %608 = load float, float* %9, align 4
  %609 = load i32, i32* %10, align 4
  %610 = call i32 @fz_stroke_lineto(i32* %605, %struct.sctx* %606, float %607, float %608, i32 %609)
  br label %611

611:                                              ; preds = %604, %591
  br label %764

612:                                              ; preds = %581
  br label %613

613:                                              ; preds = %612, %169, %142, %95, %68
  %614 = load float, float* %22, align 4
  %615 = load %struct.sctx*, %struct.sctx** %7, align 8
  %616 = getelementptr inbounds %struct.sctx, %struct.sctx* %615, i32 0, i32 7
  %617 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %616, i32 0, i32 0
  store float %614, float* %617, align 8
  %618 = load float, float* %23, align 4
  %619 = load %struct.sctx*, %struct.sctx** %7, align 8
  %620 = getelementptr inbounds %struct.sctx, %struct.sctx* %619, i32 0, i32 7
  %621 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %620, i32 0, i32 1
  store float %618, float* %621, align 4
  %622 = load %struct.sctx*, %struct.sctx** %7, align 8
  %623 = getelementptr inbounds %struct.sctx, %struct.sctx* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 8
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %633

626:                                              ; preds = %613
  %627 = load i32*, i32** %6, align 8
  %628 = load %struct.sctx*, %struct.sctx** %7, align 8
  %629 = load float, float* %22, align 4
  %630 = load float, float* %23, align 4
  %631 = load i32, i32* %10, align 4
  %632 = call i32 @fz_stroke_lineto(i32* %627, %struct.sctx* %628, float %629, float %630, i32 %631)
  br label %649

633:                                              ; preds = %613
  %634 = load i32*, i32** %6, align 8
  %635 = load %struct.sctx*, %struct.sctx** %7, align 8
  %636 = load %struct.sctx*, %struct.sctx** %7, align 8
  %637 = getelementptr inbounds %struct.sctx, %struct.sctx* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  %639 = load i32, i32* %25, align 4
  %640 = call i32 @fz_stroke_flush(i32* %634, %struct.sctx* %635, i32 %638, i32 %639)
  %641 = load i32, i32* %25, align 4
  %642 = load %struct.sctx*, %struct.sctx** %7, align 8
  %643 = getelementptr inbounds %struct.sctx, %struct.sctx* %642, i32 0, i32 1
  store i32 %641, i32* %643, align 4
  %644 = load i32*, i32** %6, align 8
  %645 = load %struct.sctx*, %struct.sctx** %7, align 8
  %646 = load float, float* %22, align 4
  %647 = load float, float* %23, align 4
  %648 = call i32 @fz_stroke_moveto(i32* %644, %struct.sctx* %645, float %646, float %647)
  br label %649

649:                                              ; preds = %633, %626
  %650 = load %struct.sctx*, %struct.sctx** %7, align 8
  %651 = getelementptr inbounds %struct.sctx, %struct.sctx* %650, i32 0, i32 2
  %652 = load float, float* %651, align 8
  %653 = load float, float* %17, align 4
  %654 = fadd float %653, %652
  store float %654, float* %17, align 4
  %655 = load float, float* %17, align 4
  %656 = load %struct.sctx*, %struct.sctx** %7, align 8
  %657 = getelementptr inbounds %struct.sctx, %struct.sctx* %656, i32 0, i32 3
  %658 = load float, float* %657, align 4
  %659 = fdiv float %655, %658
  %660 = fptosi float %659 to i32
  store i32 %660, i32* %24, align 4
  %661 = load i32, i32* %24, align 4
  %662 = sitofp i32 %661 to float
  %663 = load %struct.sctx*, %struct.sctx** %7, align 8
  %664 = getelementptr inbounds %struct.sctx, %struct.sctx* %663, i32 0, i32 3
  %665 = load float, float* %664, align 4
  %666 = fmul float %662, %665
  %667 = load float, float* %17, align 4
  %668 = fsub float %667, %666
  store float %668, float* %17, align 4
  %669 = load i32, i32* %24, align 4
  %670 = load %struct.sctx*, %struct.sctx** %7, align 8
  %671 = getelementptr inbounds %struct.sctx, %struct.sctx* %670, i32 0, i32 4
  %672 = load i32, i32* %671, align 8
  %673 = and i32 %669, %672
  %674 = and i32 %673, 1
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %685

676:                                              ; preds = %649
  %677 = load %struct.sctx*, %struct.sctx** %7, align 8
  %678 = getelementptr inbounds %struct.sctx, %struct.sctx* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 8
  %680 = icmp ne i32 %679, 0
  %681 = xor i1 %680, true
  %682 = zext i1 %681 to i32
  %683 = load %struct.sctx*, %struct.sctx** %7, align 8
  %684 = getelementptr inbounds %struct.sctx, %struct.sctx* %683, i32 0, i32 0
  store i32 %682, i32* %684, align 8
  br label %685

685:                                              ; preds = %676, %649
  br label %686

686:                                              ; preds = %723, %685
  %687 = load float, float* %17, align 4
  %688 = load %struct.sctx*, %struct.sctx** %7, align 8
  %689 = getelementptr inbounds %struct.sctx, %struct.sctx* %688, i32 0, i32 5
  %690 = load float*, float** %689, align 8
  %691 = load %struct.sctx*, %struct.sctx** %7, align 8
  %692 = getelementptr inbounds %struct.sctx, %struct.sctx* %691, i32 0, i32 6
  %693 = load i64, i64* %692, align 8
  %694 = getelementptr inbounds float, float* %690, i64 %693
  %695 = load float, float* %694, align 4
  %696 = fcmp ogt float %687, %695
  br i1 %696, label %697, label %732

697:                                              ; preds = %686
  %698 = load %struct.sctx*, %struct.sctx** %7, align 8
  %699 = getelementptr inbounds %struct.sctx, %struct.sctx* %698, i32 0, i32 5
  %700 = load float*, float** %699, align 8
  %701 = load %struct.sctx*, %struct.sctx** %7, align 8
  %702 = getelementptr inbounds %struct.sctx, %struct.sctx* %701, i32 0, i32 6
  %703 = load i64, i64* %702, align 8
  %704 = getelementptr inbounds float, float* %700, i64 %703
  %705 = load float, float* %704, align 4
  %706 = load float, float* %17, align 4
  %707 = fsub float %706, %705
  store float %707, float* %17, align 4
  %708 = load %struct.sctx*, %struct.sctx** %7, align 8
  %709 = getelementptr inbounds %struct.sctx, %struct.sctx* %708, i32 0, i32 6
  %710 = load i64, i64* %709, align 8
  %711 = add i64 %710, 1
  store i64 %711, i64* %709, align 8
  %712 = load %struct.sctx*, %struct.sctx** %7, align 8
  %713 = getelementptr inbounds %struct.sctx, %struct.sctx* %712, i32 0, i32 6
  %714 = load i64, i64* %713, align 8
  %715 = load %struct.sctx*, %struct.sctx** %7, align 8
  %716 = getelementptr inbounds %struct.sctx, %struct.sctx* %715, i32 0, i32 4
  %717 = load i32, i32* %716, align 8
  %718 = sext i32 %717 to i64
  %719 = icmp eq i64 %714, %718
  br i1 %719, label %720, label %723

720:                                              ; preds = %697
  %721 = load %struct.sctx*, %struct.sctx** %7, align 8
  %722 = getelementptr inbounds %struct.sctx, %struct.sctx* %721, i32 0, i32 6
  store i64 0, i64* %722, align 8
  br label %723

723:                                              ; preds = %720, %697
  %724 = load %struct.sctx*, %struct.sctx** %7, align 8
  %725 = getelementptr inbounds %struct.sctx, %struct.sctx* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = icmp ne i32 %726, 0
  %728 = xor i1 %727, true
  %729 = zext i1 %728 to i32
  %730 = load %struct.sctx*, %struct.sctx** %7, align 8
  %731 = getelementptr inbounds %struct.sctx, %struct.sctx* %730, i32 0, i32 0
  store i32 %729, i32* %731, align 8
  br label %686

732:                                              ; preds = %686
  %733 = load %struct.sctx*, %struct.sctx** %7, align 8
  %734 = getelementptr inbounds %struct.sctx, %struct.sctx* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 8
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %744

737:                                              ; preds = %732
  %738 = load i32*, i32** %6, align 8
  %739 = load %struct.sctx*, %struct.sctx** %7, align 8
  %740 = load float, float* %22, align 4
  %741 = load float, float* %23, align 4
  %742 = load i32, i32* %10, align 4
  %743 = call i32 @fz_stroke_lineto(i32* %738, %struct.sctx* %739, float %740, float %741, i32 %742)
  br label %760

744:                                              ; preds = %732
  %745 = load i32*, i32** %6, align 8
  %746 = load %struct.sctx*, %struct.sctx** %7, align 8
  %747 = load %struct.sctx*, %struct.sctx** %7, align 8
  %748 = getelementptr inbounds %struct.sctx, %struct.sctx* %747, i32 0, i32 1
  %749 = load i32, i32* %748, align 4
  %750 = load i32, i32* %25, align 4
  %751 = call i32 @fz_stroke_flush(i32* %745, %struct.sctx* %746, i32 %749, i32 %750)
  %752 = load i32, i32* %25, align 4
  %753 = load %struct.sctx*, %struct.sctx** %7, align 8
  %754 = getelementptr inbounds %struct.sctx, %struct.sctx* %753, i32 0, i32 1
  store i32 %752, i32* %754, align 4
  %755 = load i32*, i32** %6, align 8
  %756 = load %struct.sctx*, %struct.sctx** %7, align 8
  %757 = load float, float* %22, align 4
  %758 = load float, float* %23, align 4
  %759 = call i32 @fz_stroke_moveto(i32* %755, %struct.sctx* %756, float %757, float %758)
  br label %760

760:                                              ; preds = %744, %737
  %761 = load float, float* %17, align 4
  %762 = load %struct.sctx*, %struct.sctx** %7, align 8
  %763 = getelementptr inbounds %struct.sctx, %struct.sctx* %762, i32 0, i32 2
  store float %761, float* %763, align 8
  br label %764

764:                                              ; preds = %760, %611
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

declare dso_local i32 @fz_stroke_lineto(i32*, %struct.sctx*, float, float, i32) #2

declare dso_local i32 @fz_stroke_flush(i32*, %struct.sctx*, i32, i32) #2

declare dso_local i32 @fz_stroke_moveto(i32*, %struct.sctx*, float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
