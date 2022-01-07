; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_arc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, i32 }

@FZ_SQRT2 = common dso_local global i32 0, align 4
@FZ_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, float, float, float, float, float, float, i32)* @fz_add_arc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_add_arc(i32* %0, %struct.TYPE_4__* %1, float %2, float %3, float %4, float %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %11, align 8
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call float @fabsf(i32 %31)
  store float %32, float* %21, align 4
  %33 = load i32, i32* @FZ_SQRT2, align 4
  %34 = mul nsw i32 2, %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = load float, float* %21, align 4
  %39 = fdiv float %37, %38
  %40 = call i32 @sqrtf(float %39)
  %41 = mul nsw i32 %34, %40
  %42 = sitofp i32 %41 to float
  store float %42, float* %22, align 4
  %43 = load float, float* %15, align 4
  %44 = load float, float* %14, align 4
  %45 = call float @atan2f(float %43, float %44) #3
  store float %45, float* %19, align 4
  %46 = load float, float* %17, align 4
  %47 = load float, float* %16, align 4
  %48 = call float @atan2f(float %46, float %47) #3
  store float %48, float* %20, align 4
  %49 = load float, float* %21, align 4
  %50 = fcmp ogt float %49, 0.000000e+00
  br i1 %50, label %51, label %68

51:                                               ; preds = %9
  %52 = load float, float* %19, align 4
  %53 = load float, float* %20, align 4
  %54 = fcmp olt float %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @FZ_PI, align 4
  %57 = mul nsw i32 %56, 2
  %58 = sitofp i32 %57 to float
  %59 = load float, float* %19, align 4
  %60 = fadd float %59, %58
  store float %60, float* %19, align 4
  br label %61

61:                                               ; preds = %55, %51
  %62 = load float, float* %19, align 4
  %63 = load float, float* %20, align 4
  %64 = fsub float %62, %63
  %65 = load float, float* %22, align 4
  %66 = fdiv float %64, %65
  %67 = call i32 @ceilf(float %66)
  store i32 %67, i32* %27, align 4
  br label %85

68:                                               ; preds = %9
  %69 = load float, float* %20, align 4
  %70 = load float, float* %19, align 4
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @FZ_PI, align 4
  %74 = mul nsw i32 %73, 2
  %75 = sitofp i32 %74 to float
  %76 = load float, float* %20, align 4
  %77 = fadd float %76, %75
  store float %77, float* %20, align 4
  br label %78

78:                                               ; preds = %72, %68
  %79 = load float, float* %20, align 4
  %80 = load float, float* %19, align 4
  %81 = fsub float %79, %80
  %82 = load float, float* %22, align 4
  %83 = fdiv float %81, %82
  %84 = call i32 @ceilf(float %83)
  store i32 %84, i32* %27, align 4
  br label %85

85:                                               ; preds = %78, %61
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %154

88:                                               ; preds = %85
  %89 = load float, float* %16, align 4
  store float %89, float* %23, align 4
  %90 = load float, float* %17, align 4
  store float %90, float* %24, align 4
  %91 = load i32, i32* %27, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %28, align 4
  br label %93

93:                                               ; preds = %134, %88
  %94 = load i32, i32* %28, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %137

96:                                               ; preds = %93
  %97 = load float, float* %19, align 4
  %98 = load float, float* %20, align 4
  %99 = load float, float* %19, align 4
  %100 = fsub float %98, %99
  %101 = load i32, i32* %28, align 4
  %102 = sitofp i32 %101 to float
  %103 = fmul float %100, %102
  %104 = load i32, i32* %27, align 4
  %105 = sitofp i32 %104 to float
  %106 = fdiv float %103, %105
  %107 = fadd float %97, %106
  store float %107, float* %22, align 4
  %108 = load float, float* %22, align 4
  %109 = call float @cosf(float %108) #3
  %110 = load float, float* %21, align 4
  %111 = fmul float %109, %110
  store float %111, float* %25, align 4
  %112 = load float, float* %22, align 4
  %113 = call float @sinf(float %112) #3
  %114 = load float, float* %21, align 4
  %115 = fmul float %113, %114
  store float %115, float* %26, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %118 = load float, float* %12, align 4
  %119 = load float, float* %25, align 4
  %120 = fadd float %118, %119
  %121 = load float, float* %13, align 4
  %122 = load float, float* %26, align 4
  %123 = fadd float %121, %122
  %124 = load float, float* %12, align 4
  %125 = load float, float* %23, align 4
  %126 = fadd float %124, %125
  %127 = load float, float* %13, align 4
  %128 = load float, float* %24, align 4
  %129 = fadd float %127, %128
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @fz_add_line(i32* %116, %struct.TYPE_4__* %117, float %120, float %123, float %126, float %129, i32 %130)
  %132 = load float, float* %25, align 4
  store float %132, float* %23, align 4
  %133 = load float, float* %26, align 4
  store float %133, float* %24, align 4
  br label %134

134:                                              ; preds = %96
  %135 = load i32, i32* %28, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %28, align 4
  br label %93

137:                                              ; preds = %93
  %138 = load i32*, i32** %10, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %140 = load float, float* %12, align 4
  %141 = load float, float* %14, align 4
  %142 = fadd float %140, %141
  %143 = load float, float* %13, align 4
  %144 = load float, float* %15, align 4
  %145 = fadd float %143, %144
  %146 = load float, float* %12, align 4
  %147 = load float, float* %23, align 4
  %148 = fadd float %146, %147
  %149 = load float, float* %13, align 4
  %150 = load float, float* %24, align 4
  %151 = fadd float %149, %150
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @fz_add_line(i32* %138, %struct.TYPE_4__* %139, float %142, float %145, float %148, float %151, i32 %152)
  br label %219

154:                                              ; preds = %85
  %155 = load float, float* %14, align 4
  store float %155, float* %23, align 4
  %156 = load float, float* %15, align 4
  store float %156, float* %24, align 4
  store i32 1, i32* %28, align 4
  br label %157

157:                                              ; preds = %199, %154
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %27, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %202

161:                                              ; preds = %157
  %162 = load float, float* %19, align 4
  %163 = load float, float* %20, align 4
  %164 = load float, float* %19, align 4
  %165 = fsub float %163, %164
  %166 = load i32, i32* %28, align 4
  %167 = sitofp i32 %166 to float
  %168 = fmul float %165, %167
  %169 = load i32, i32* %27, align 4
  %170 = sitofp i32 %169 to float
  %171 = fdiv float %168, %170
  %172 = fadd float %162, %171
  store float %172, float* %22, align 4
  %173 = load float, float* %22, align 4
  %174 = call float @cosf(float %173) #3
  %175 = load float, float* %21, align 4
  %176 = fmul float %174, %175
  store float %176, float* %25, align 4
  %177 = load float, float* %22, align 4
  %178 = call float @sinf(float %177) #3
  %179 = load float, float* %21, align 4
  %180 = fmul float %178, %179
  store float %180, float* %26, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %183 = load float, float* %12, align 4
  %184 = load float, float* %23, align 4
  %185 = fadd float %183, %184
  %186 = load float, float* %13, align 4
  %187 = load float, float* %24, align 4
  %188 = fadd float %186, %187
  %189 = load float, float* %12, align 4
  %190 = load float, float* %25, align 4
  %191 = fadd float %189, %190
  %192 = load float, float* %13, align 4
  %193 = load float, float* %26, align 4
  %194 = fadd float %192, %193
  %195 = load i32, i32* %18, align 4
  %196 = call i32 @fz_add_line(i32* %181, %struct.TYPE_4__* %182, float %185, float %188, float %191, float %194, i32 %195)
  %197 = load float, float* %25, align 4
  store float %197, float* %23, align 4
  %198 = load float, float* %26, align 4
  store float %198, float* %24, align 4
  br label %199

199:                                              ; preds = %161
  %200 = load i32, i32* %28, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %28, align 4
  br label %157

202:                                              ; preds = %157
  %203 = load i32*, i32** %10, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %205 = load float, float* %12, align 4
  %206 = load float, float* %23, align 4
  %207 = fadd float %205, %206
  %208 = load float, float* %13, align 4
  %209 = load float, float* %24, align 4
  %210 = fadd float %208, %209
  %211 = load float, float* %12, align 4
  %212 = load float, float* %16, align 4
  %213 = fadd float %211, %212
  %214 = load float, float* %13, align 4
  %215 = load float, float* %17, align 4
  %216 = fadd float %214, %215
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @fz_add_line(i32* %203, %struct.TYPE_4__* %204, float %207, float %210, float %213, float %216, i32 %217)
  br label %219

219:                                              ; preds = %202, %137
  ret void
}

declare dso_local float @fabsf(i32) #1

declare dso_local i32 @sqrtf(float) #1

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #2

declare dso_local i32 @ceilf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

declare dso_local i32 @fz_add_line(i32*, %struct.TYPE_4__*, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
