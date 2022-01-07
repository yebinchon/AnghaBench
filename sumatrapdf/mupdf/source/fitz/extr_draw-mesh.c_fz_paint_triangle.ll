; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-mesh.c_fz_paint_triangle.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-mesh.c_fz_paint_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { float, float, i32, i32 }
%struct.TYPE_11__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, float**, i32, <2 x float>, i64)* @fz_paint_triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_paint_triangle(%struct.TYPE_9__* %0, float** %1, i32 %2, <2 x float> %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca float**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = bitcast %struct.TYPE_10__* %6 to { <2 x float>, i64 }*
  %20 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %19, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %20, align 4
  %21 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %19, i32 0, i32 1
  store i64 %4, i64* %21, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store float** %1, float*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %22 = load float**, float*** %8, align 8
  %23 = getelementptr inbounds float*, float** %22, i64 1
  %24 = load float*, float** %23, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = load float**, float*** %8, align 8
  %28 = getelementptr inbounds float*, float** %27, i64 0
  %29 = load float*, float** %28, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  %31 = load float, float* %30, align 4
  %32 = fcmp olt float %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %35

34:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load float**, float*** %8, align 8
  %37 = getelementptr inbounds float*, float** %36, i64 2
  %38 = load float*, float** %37, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = load float**, float*** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float*, float** %41, i64 %43
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = fcmp olt float %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 2, i32* %12, align 4
  br label %66

50:                                               ; preds = %35
  %51 = load float**, float*** %8, align 8
  %52 = getelementptr inbounds float*, float** %51, i64 2
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 1
  %55 = load float, float* %54, align 4
  %56 = load float**, float*** %8, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float*, float** %56, i64 %58
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = fcmp ogt float %55, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 2, i32* %14, align 4
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %49
  %67 = load float**, float*** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float*, float** %67, i64 %69
  %71 = load float*, float** %70, align 8
  %72 = getelementptr inbounds float, float* %71, i64 1
  %73 = load float, float* %72, align 4
  %74 = load float**, float*** %8, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float*, float** %74, i64 %76
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 1
  %80 = load float, float* %79, align 4
  %81 = fcmp oeq float %73, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  br label %288

83:                                               ; preds = %66
  %84 = load float**, float*** %8, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float*, float** %84, i64 %86
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 1
  %90 = load float, float* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %92 = load float, float* %91, align 4
  %93 = fcmp olt float %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %288

95:                                               ; preds = %83
  %96 = load float**, float*** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float*, float** %96, i64 %98
  %100 = load float*, float** %99, align 8
  %101 = getelementptr inbounds float, float* %100, i64 1
  %102 = load float, float* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %104 = load float, float* %103, align 4
  %105 = fcmp ogt float %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %288

107:                                              ; preds = %95
  %108 = load i32, i32* %12, align 4
  %109 = xor i32 3, %108
  %110 = load i32, i32* %14, align 4
  %111 = xor i32 %109, %110
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %120, %121
  br label %123

123:                                              ; preds = %119, %115, %107
  %124 = phi i1 [ false, %115 ], [ false, %107 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @fz_maxi(i32 %128, i64 %131)
  store i32 %132, i32* %17, align 4
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = call i32 @fz_mini(i32 %134, i64 %141)
  store i32 %142, i32* %18, align 4
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %144 = load float, float* %143, align 4
  %145 = load float**, float*** %8, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float*, float** %145, i64 %147
  %149 = load float*, float** %148, align 8
  %150 = getelementptr inbounds float, float* %149, i64 1
  %151 = load float, float* %150, align 4
  %152 = call i32 @fz_max(float %144, float %151)
  %153 = call float @ceilf(i32 %152)
  store float %153, float* %15, align 4
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %155 = load float, float* %154, align 4
  %156 = load float**, float*** %8, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float*, float** %156, i64 %158
  %160 = load float*, float** %159, align 8
  %161 = getelementptr inbounds float, float* %160, i64 1
  %162 = load float, float* %161, align 4
  %163 = call i32 @fz_min(float %155, float %162)
  %164 = call float @ceilf(i32 %163)
  store float %164, float* %16, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 %165, 2
  store i32 %166, i32* %9, align 4
  %167 = load float**, float*** %8, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float*, float** %167, i64 %169
  %171 = load float*, float** %170, align 8
  %172 = load float**, float*** %8, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float*, float** %172, i64 %174
  %176 = load float*, float** %175, align 8
  %177 = load float, float* %15, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @prepare_edge(float* %171, float* %176, %struct.TYPE_11__* %10, float %177, i32 %178)
  %180 = load float, float* %15, align 4
  %181 = load float, float* %16, align 4
  %182 = fcmp olt float %180, %181
  br i1 %182, label %183, label %227

183:                                              ; preds = %123
  %184 = load float**, float*** %8, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float*, float** %184, i64 %186
  %188 = load float*, float** %187, align 8
  %189 = load float**, float*** %8, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float*, float** %189, i64 %191
  %193 = load float*, float** %192, align 8
  %194 = load float, float* %15, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @prepare_edge(float* %188, float* %193, %struct.TYPE_11__* %11, float %194, i32 %195)
  br label %197

197:                                              ; preds = %222, %183
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %199 = load float, float* %15, align 4
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %18, align 4
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @paint_scan(%struct.TYPE_9__* %198, float %199, i32 %202, i32 %205, i32 %206, i32 %207, i32* %210, i32* %213, i32 %214)
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @step_edge(%struct.TYPE_11__* %10, i32 %216)
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @step_edge(%struct.TYPE_11__* %11, i32 %218)
  %220 = load float, float* %15, align 4
  %221 = fadd float %220, 1.000000e+00
  store float %221, float* %15, align 4
  br label %222

222:                                              ; preds = %197
  %223 = load float, float* %15, align 4
  %224 = load float, float* %16, align 4
  %225 = fcmp olt float %223, %224
  br i1 %225, label %197, label %226

226:                                              ; preds = %222
  br label %227

227:                                              ; preds = %226, %123
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %229 = load float, float* %228, align 4
  %230 = load float**, float*** %8, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float*, float** %230, i64 %232
  %234 = load float*, float** %233, align 8
  %235 = getelementptr inbounds float, float* %234, i64 1
  %236 = load float, float* %235, align 4
  %237 = call i32 @fz_min(float %229, float %236)
  %238 = call float @ceilf(i32 %237)
  store float %238, float* %16, align 4
  %239 = load float, float* %15, align 4
  %240 = load float, float* %16, align 4
  %241 = fcmp olt float %239, %240
  br i1 %241, label %242, label %288

242:                                              ; preds = %227
  %243 = load float**, float*** %8, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float*, float** %243, i64 %245
  %247 = load float*, float** %246, align 8
  %248 = load float**, float*** %8, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float*, float** %248, i64 %250
  %252 = load float*, float** %251, align 8
  %253 = load float, float* %15, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @prepare_edge(float* %247, float* %252, %struct.TYPE_11__* %11, float %253, i32 %254)
  br label %256

256:                                              ; preds = %286, %242
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %258 = load float, float* %15, align 4
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* %18, align 4
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @paint_scan(%struct.TYPE_9__* %257, float %258, i32 %261, i32 %264, i32 %265, i32 %266, i32* %269, i32* %272, i32 %273)
  %275 = load float, float* %15, align 4
  %276 = fadd float %275, 1.000000e+00
  store float %276, float* %15, align 4
  %277 = load float, float* %15, align 4
  %278 = load float, float* %16, align 4
  %279 = fcmp oge float %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %256
  br label %287

281:                                              ; preds = %256
  %282 = load i32, i32* %9, align 4
  %283 = call i32 @step_edge(%struct.TYPE_11__* %10, i32 %282)
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @step_edge(%struct.TYPE_11__* %11, i32 %284)
  br label %286

286:                                              ; preds = %281
  br i1 true, label %256, label %287

287:                                              ; preds = %286, %280
  br label %288

288:                                              ; preds = %82, %94, %106, %287, %227
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fz_maxi(i32, i64) #1

declare dso_local i32 @fz_mini(i32, i64) #1

declare dso_local float @ceilf(i32) #1

declare dso_local i32 @fz_max(float, float) #1

declare dso_local i32 @fz_min(float, float) #1

declare dso_local i32 @prepare_edge(float*, float*, %struct.TYPE_11__*, float, i32) #1

declare dso_local i32 @paint_scan(%struct.TYPE_9__*, float, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @step_edge(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
