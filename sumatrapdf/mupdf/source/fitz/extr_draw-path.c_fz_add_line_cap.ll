; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_line_cap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_line_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@FZ_PI = common dso_local global float 0.000000e+00, align 4
@FZ_SQRT2 = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid line cap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, float, float, float, float, i32, i32)* @fz_add_line_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_add_line_cap(i32* %0, %struct.TYPE_4__* %1, float %2, float %3, float %4, float %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  store float %37, float* %17, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  store float %40, float* %18, align 4
  %41 = load float, float* %13, align 4
  %42 = load float, float* %11, align 4
  %43 = fsub float %41, %42
  store float %43, float* %19, align 4
  %44 = load float, float* %14, align 4
  %45 = load float, float* %12, align 4
  %46 = fsub float %44, %45
  store float %46, float* %20, align 4
  %47 = load float, float* %18, align 4
  %48 = load float, float* %19, align 4
  %49 = load float, float* %19, align 4
  %50 = fmul float %48, %49
  %51 = load float, float* %20, align 4
  %52 = load float, float* %20, align 4
  %53 = fmul float %51, %52
  %54 = fadd float %50, %53
  %55 = call float @sqrtf(float %54) #3
  %56 = fdiv float %47, %55
  store float %56, float* %21, align 4
  %57 = load float, float* %20, align 4
  %58 = load float, float* %21, align 4
  %59 = fmul float %57, %58
  store float %59, float* %22, align 4
  %60 = load float, float* %19, align 4
  %61 = fneg float %60
  %62 = load float, float* %21, align 4
  %63 = fmul float %61, %62
  store float %63, float* %23, align 4
  %64 = load i32, i32* %15, align 4
  switch i32 %64, label %260 [
    i32 131, label %65
    i32 130, label %82
    i32 129, label %159
    i32 128, label %224
  ]

65:                                               ; preds = %8
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = load float, float* %13, align 4
  %69 = load float, float* %22, align 4
  %70 = fsub float %68, %69
  %71 = load float, float* %14, align 4
  %72 = load float, float* %23, align 4
  %73 = fsub float %71, %72
  %74 = load float, float* %13, align 4
  %75 = load float, float* %22, align 4
  %76 = fadd float %74, %75
  %77 = load float, float* %14, align 4
  %78 = load float, float* %23, align 4
  %79 = fadd float %77, %78
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @fz_add_line(i32* %66, %struct.TYPE_4__* %67, float %70, float %73, float %76, float %79, i32 %80)
  br label %262

82:                                               ; preds = %8
  %83 = load float, float* @FZ_PI, align 4
  %84 = load float, float* @FZ_SQRT2, align 4
  %85 = fmul float 2.000000e+00, %84
  %86 = load float, float* %17, align 4
  %87 = load float, float* %18, align 4
  %88 = fdiv float %86, %87
  %89 = call float @sqrtf(float %88) #3
  %90 = fmul float %85, %89
  %91 = fdiv float %83, %90
  %92 = call i32 @ceilf(float %91)
  store i32 %92, i32* %25, align 4
  %93 = load float, float* %13, align 4
  %94 = load float, float* %22, align 4
  %95 = fsub float %93, %94
  store float %95, float* %26, align 4
  %96 = load float, float* %14, align 4
  %97 = load float, float* %23, align 4
  %98 = fsub float %96, %97
  store float %98, float* %27, align 4
  store i32 1, i32* %24, align 4
  br label %99

99:                                               ; preds = %143, %82
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %25, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %146

103:                                              ; preds = %99
  %104 = load float, float* @FZ_PI, align 4
  %105 = load i32, i32* %24, align 4
  %106 = sitofp i32 %105 to float
  %107 = fmul float %104, %106
  %108 = load i32, i32* %25, align 4
  %109 = sitofp i32 %108 to float
  %110 = fdiv float %107, %109
  store float %110, float* %28, align 4
  %111 = load float, float* %28, align 4
  %112 = call float @cosf(float %111) #3
  store float %112, float* %29, align 4
  %113 = load float, float* %28, align 4
  %114 = call float @sinf(float %113) #3
  store float %114, float* %30, align 4
  %115 = load float, float* %13, align 4
  %116 = load float, float* %22, align 4
  %117 = load float, float* %29, align 4
  %118 = fmul float %116, %117
  %119 = fsub float %115, %118
  %120 = load float, float* %23, align 4
  %121 = load float, float* %30, align 4
  %122 = fmul float %120, %121
  %123 = fsub float %119, %122
  store float %123, float* %31, align 4
  %124 = load float, float* %14, align 4
  %125 = load float, float* %23, align 4
  %126 = load float, float* %29, align 4
  %127 = fmul float %125, %126
  %128 = fsub float %124, %127
  %129 = load float, float* %22, align 4
  %130 = load float, float* %30, align 4
  %131 = fmul float %129, %130
  %132 = fadd float %128, %131
  store float %132, float* %32, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %135 = load float, float* %26, align 4
  %136 = load float, float* %27, align 4
  %137 = load float, float* %31, align 4
  %138 = load float, float* %32, align 4
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @fz_add_line(i32* %133, %struct.TYPE_4__* %134, float %135, float %136, float %137, float %138, i32 %139)
  %141 = load float, float* %31, align 4
  store float %141, float* %26, align 4
  %142 = load float, float* %32, align 4
  store float %142, float* %27, align 4
  br label %143

143:                                              ; preds = %103
  %144 = load i32, i32* %24, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %24, align 4
  br label %99

146:                                              ; preds = %99
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %149 = load float, float* %26, align 4
  %150 = load float, float* %27, align 4
  %151 = load float, float* %13, align 4
  %152 = load float, float* %22, align 4
  %153 = fadd float %151, %152
  %154 = load float, float* %14, align 4
  %155 = load float, float* %23, align 4
  %156 = fadd float %154, %155
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @fz_add_line(i32* %147, %struct.TYPE_4__* %148, float %149, float %150, float %153, float %156, i32 %157)
  br label %262

159:                                              ; preds = %8
  %160 = load i32*, i32** %9, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %162 = load float, float* %13, align 4
  %163 = load float, float* %22, align 4
  %164 = fsub float %162, %163
  %165 = load float, float* %14, align 4
  %166 = load float, float* %23, align 4
  %167 = fsub float %165, %166
  %168 = load float, float* %13, align 4
  %169 = load float, float* %22, align 4
  %170 = fsub float %168, %169
  %171 = load float, float* %23, align 4
  %172 = fsub float %170, %171
  %173 = load float, float* %14, align 4
  %174 = load float, float* %23, align 4
  %175 = fsub float %173, %174
  %176 = load float, float* %22, align 4
  %177 = fadd float %175, %176
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @fz_add_line(i32* %160, %struct.TYPE_4__* %161, float %164, float %167, float %172, float %177, i32 %178)
  %180 = load i32*, i32** %9, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %182 = load float, float* %13, align 4
  %183 = load float, float* %22, align 4
  %184 = fsub float %182, %183
  %185 = load float, float* %23, align 4
  %186 = fsub float %184, %185
  %187 = load float, float* %14, align 4
  %188 = load float, float* %23, align 4
  %189 = fsub float %187, %188
  %190 = load float, float* %22, align 4
  %191 = fadd float %189, %190
  %192 = load float, float* %13, align 4
  %193 = load float, float* %22, align 4
  %194 = fadd float %192, %193
  %195 = load float, float* %23, align 4
  %196 = fsub float %194, %195
  %197 = load float, float* %14, align 4
  %198 = load float, float* %23, align 4
  %199 = fadd float %197, %198
  %200 = load float, float* %22, align 4
  %201 = fadd float %199, %200
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @fz_add_line(i32* %180, %struct.TYPE_4__* %181, float %186, float %191, float %196, float %201, i32 %202)
  %204 = load i32*, i32** %9, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %206 = load float, float* %13, align 4
  %207 = load float, float* %22, align 4
  %208 = fadd float %206, %207
  %209 = load float, float* %23, align 4
  %210 = fsub float %208, %209
  %211 = load float, float* %14, align 4
  %212 = load float, float* %23, align 4
  %213 = fadd float %211, %212
  %214 = load float, float* %22, align 4
  %215 = fadd float %213, %214
  %216 = load float, float* %13, align 4
  %217 = load float, float* %22, align 4
  %218 = fadd float %216, %217
  %219 = load float, float* %14, align 4
  %220 = load float, float* %23, align 4
  %221 = fadd float %219, %220
  %222 = load i32, i32* %16, align 4
  %223 = call i32 @fz_add_line(i32* %204, %struct.TYPE_4__* %205, float %210, float %215, float %218, float %221, i32 %222)
  br label %262

224:                                              ; preds = %8
  %225 = load float, float* %23, align 4
  %226 = fneg float %225
  store float %226, float* %33, align 4
  %227 = load float, float* %22, align 4
  store float %227, float* %34, align 4
  %228 = load i32*, i32** %9, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %230 = load float, float* %13, align 4
  %231 = load float, float* %22, align 4
  %232 = fsub float %230, %231
  %233 = load float, float* %14, align 4
  %234 = load float, float* %23, align 4
  %235 = fsub float %233, %234
  %236 = load float, float* %13, align 4
  %237 = load float, float* %33, align 4
  %238 = fadd float %236, %237
  %239 = load float, float* %14, align 4
  %240 = load float, float* %34, align 4
  %241 = fadd float %239, %240
  %242 = load i32, i32* %16, align 4
  %243 = call i32 @fz_add_line(i32* %228, %struct.TYPE_4__* %229, float %232, float %235, float %238, float %241, i32 %242)
  %244 = load i32*, i32** %9, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %246 = load float, float* %13, align 4
  %247 = load float, float* %33, align 4
  %248 = fadd float %246, %247
  %249 = load float, float* %14, align 4
  %250 = load float, float* %34, align 4
  %251 = fadd float %249, %250
  %252 = load float, float* %13, align 4
  %253 = load float, float* %22, align 4
  %254 = fadd float %252, %253
  %255 = load float, float* %14, align 4
  %256 = load float, float* %23, align 4
  %257 = fadd float %255, %256
  %258 = load i32, i32* %16, align 4
  %259 = call i32 @fz_add_line(i32* %244, %struct.TYPE_4__* %245, float %248, float %251, float %254, float %257, i32 %258)
  br label %262

260:                                              ; preds = %8
  %261 = call i32 @assert(i32 0)
  br label %262

262:                                              ; preds = %260, %224, %159, %146, %65
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

declare dso_local i32 @fz_add_line(i32*, %struct.TYPE_4__*, float, float, float, float, i32) #2

declare dso_local i32 @ceilf(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
