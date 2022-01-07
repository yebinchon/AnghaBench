; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_viewpoint.c_vlc_viewpoint_to_4x4.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_viewpoint.c_vlc_viewpoint_to_4x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float }

@M_PI = common dso_local global i64 0, align 8
@M_PI_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_viewpoint_to_4x4(%struct.TYPE_3__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float* %1, float** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = load i64, i64* @M_PI, align 8
  %21 = sitofp i64 %20 to float
  %22 = fmul float %19, %21
  %23 = fdiv float %22, 1.800000e+02
  %24 = load i64, i64* @M_PI_2, align 8
  %25 = sitofp i64 %24 to float
  %26 = fadd float %23, %25
  store float %26, float* %5, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = load i64, i64* @M_PI, align 8
  %31 = sitofp i64 %30 to float
  %32 = fmul float %29, %31
  %33 = fdiv float %32, 1.800000e+02
  store float %33, float* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load float, float* %35, align 4
  %37 = load i64, i64* @M_PI, align 8
  %38 = sitofp i64 %37 to float
  %39 = fmul float %36, %38
  %40 = fdiv float %39, 1.800000e+02
  store float %40, float* %7, align 4
  %41 = load float, float* %6, align 4
  %42 = call float @sinf(float %41) #3
  store float %42, float* %8, align 4
  %43 = load float, float* %6, align 4
  %44 = call float @cosf(float %43) #3
  store float %44, float* %9, align 4
  %45 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %10, i64 0, i64 0
  %46 = getelementptr inbounds [4 x float], [4 x float]* %45, i64 0, i64 0
  store float 1.000000e+00, float* %46, align 4
  %47 = getelementptr inbounds float, float* %46, i64 1
  store float 0.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds float, float* %47, i64 1
  store float 0.000000e+00, float* %48, align 4
  %49 = getelementptr inbounds float, float* %48, i64 1
  store float 0.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds [4 x float], [4 x float]* %45, i64 1
  %51 = getelementptr inbounds [4 x float], [4 x float]* %50, i64 0, i64 0
  store float 0.000000e+00, float* %51, align 4
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %9, align 4
  store float %53, float* %52, align 4
  %54 = getelementptr inbounds float, float* %52, i64 1
  %55 = load float, float* %8, align 4
  %56 = fneg float %55
  store float %56, float* %54, align 4
  %57 = getelementptr inbounds float, float* %54, i64 1
  store float 0.000000e+00, float* %57, align 4
  %58 = getelementptr inbounds [4 x float], [4 x float]* %50, i64 1
  %59 = getelementptr inbounds [4 x float], [4 x float]* %58, i64 0, i64 0
  store float 0.000000e+00, float* %59, align 4
  %60 = getelementptr inbounds float, float* %59, i64 1
  %61 = load float, float* %8, align 4
  store float %61, float* %60, align 4
  %62 = getelementptr inbounds float, float* %60, i64 1
  %63 = load float, float* %9, align 4
  store float %63, float* %62, align 4
  %64 = getelementptr inbounds float, float* %62, i64 1
  store float 0.000000e+00, float* %64, align 4
  %65 = getelementptr inbounds [4 x float], [4 x float]* %58, i64 1
  %66 = getelementptr inbounds [4 x float], [4 x float]* %65, i64 0, i64 0
  store float 0.000000e+00, float* %66, align 4
  %67 = getelementptr inbounds float, float* %66, i64 1
  store float 0.000000e+00, float* %67, align 4
  %68 = getelementptr inbounds float, float* %67, i64 1
  store float 0.000000e+00, float* %68, align 4
  %69 = getelementptr inbounds float, float* %68, i64 1
  store float 1.000000e+00, float* %69, align 4
  %70 = load float, float* %5, align 4
  %71 = call float @sinf(float %70) #3
  store float %71, float* %8, align 4
  %72 = load float, float* %5, align 4
  %73 = call float @cosf(float %72) #3
  store float %73, float* %9, align 4
  %74 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %11, i64 0, i64 0
  %75 = getelementptr inbounds [4 x float], [4 x float]* %74, i64 0, i64 0
  %76 = load float, float* %9, align 4
  store float %76, float* %75, align 4
  %77 = getelementptr inbounds float, float* %75, i64 1
  store float 0.000000e+00, float* %77, align 4
  %78 = getelementptr inbounds float, float* %77, i64 1
  %79 = load float, float* %8, align 4
  store float %79, float* %78, align 4
  %80 = getelementptr inbounds float, float* %78, i64 1
  store float 0.000000e+00, float* %80, align 4
  %81 = getelementptr inbounds [4 x float], [4 x float]* %74, i64 1
  %82 = getelementptr inbounds [4 x float], [4 x float]* %81, i64 0, i64 0
  store float 0.000000e+00, float* %82, align 4
  %83 = getelementptr inbounds float, float* %82, i64 1
  store float 1.000000e+00, float* %83, align 4
  %84 = getelementptr inbounds float, float* %83, i64 1
  store float 0.000000e+00, float* %84, align 4
  %85 = getelementptr inbounds float, float* %84, i64 1
  store float 0.000000e+00, float* %85, align 4
  %86 = getelementptr inbounds [4 x float], [4 x float]* %81, i64 1
  %87 = getelementptr inbounds [4 x float], [4 x float]* %86, i64 0, i64 0
  %88 = load float, float* %8, align 4
  %89 = fneg float %88
  store float %89, float* %87, align 4
  %90 = getelementptr inbounds float, float* %87, i64 1
  store float 0.000000e+00, float* %90, align 4
  %91 = getelementptr inbounds float, float* %90, i64 1
  %92 = load float, float* %9, align 4
  store float %92, float* %91, align 4
  %93 = getelementptr inbounds float, float* %91, i64 1
  store float 0.000000e+00, float* %93, align 4
  %94 = getelementptr inbounds [4 x float], [4 x float]* %86, i64 1
  %95 = getelementptr inbounds [4 x float], [4 x float]* %94, i64 0, i64 0
  store float 0.000000e+00, float* %95, align 4
  %96 = getelementptr inbounds float, float* %95, i64 1
  store float 0.000000e+00, float* %96, align 4
  %97 = getelementptr inbounds float, float* %96, i64 1
  store float 0.000000e+00, float* %97, align 4
  %98 = getelementptr inbounds float, float* %97, i64 1
  store float 1.000000e+00, float* %98, align 4
  %99 = load float, float* %7, align 4
  %100 = call float @sinf(float %99) #3
  store float %100, float* %8, align 4
  %101 = load float, float* %7, align 4
  %102 = call float @cosf(float %101) #3
  store float %102, float* %9, align 4
  %103 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %12, i64 0, i64 0
  %104 = getelementptr inbounds [4 x float], [4 x float]* %103, i64 0, i64 0
  %105 = load float, float* %9, align 4
  store float %105, float* %104, align 4
  %106 = getelementptr inbounds float, float* %104, i64 1
  %107 = load float, float* %8, align 4
  store float %107, float* %106, align 4
  %108 = getelementptr inbounds float, float* %106, i64 1
  store float 0.000000e+00, float* %108, align 4
  %109 = getelementptr inbounds float, float* %108, i64 1
  store float 0.000000e+00, float* %109, align 4
  %110 = getelementptr inbounds [4 x float], [4 x float]* %103, i64 1
  %111 = getelementptr inbounds [4 x float], [4 x float]* %110, i64 0, i64 0
  %112 = load float, float* %8, align 4
  %113 = fneg float %112
  store float %113, float* %111, align 4
  %114 = getelementptr inbounds float, float* %111, i64 1
  %115 = load float, float* %9, align 4
  store float %115, float* %114, align 4
  %116 = getelementptr inbounds float, float* %114, i64 1
  store float 0.000000e+00, float* %116, align 4
  %117 = getelementptr inbounds float, float* %116, i64 1
  store float 0.000000e+00, float* %117, align 4
  %118 = getelementptr inbounds [4 x float], [4 x float]* %110, i64 1
  %119 = getelementptr inbounds [4 x float], [4 x float]* %118, i64 0, i64 0
  store float 0.000000e+00, float* %119, align 4
  %120 = getelementptr inbounds float, float* %119, i64 1
  store float 0.000000e+00, float* %120, align 4
  %121 = getelementptr inbounds float, float* %120, i64 1
  store float 1.000000e+00, float* %121, align 4
  %122 = getelementptr inbounds float, float* %121, i64 1
  store float 0.000000e+00, float* %122, align 4
  %123 = getelementptr inbounds [4 x float], [4 x float]* %118, i64 1
  %124 = getelementptr inbounds [4 x float], [4 x float]* %123, i64 0, i64 0
  store float 0.000000e+00, float* %124, align 4
  %125 = getelementptr inbounds float, float* %124, i64 1
  store float 0.000000e+00, float* %125, align 4
  %126 = getelementptr inbounds float, float* %125, i64 1
  store float 0.000000e+00, float* %126, align 4
  %127 = getelementptr inbounds float, float* %126, i64 1
  store float 1.000000e+00, float* %127, align 4
  %128 = load float*, float** %4, align 8
  %129 = call i32 @memset(float* %128, i32 0, i32 64)
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %190, %2
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %193

133:                                              ; preds = %130
  store i32 0, i32* %14, align 4
  br label %134

134:                                              ; preds = %186, %133
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %189

137:                                              ; preds = %134
  store i32 0, i32* %15, align 4
  br label %138

138:                                              ; preds = %182, %137
  %139 = load i32, i32* %15, align 4
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %141, label %185

141:                                              ; preds = %138
  store i32 0, i32* %16, align 4
  br label %142

142:                                              ; preds = %178, %141
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %143, 4
  br i1 %144, label %145, label %181

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %11, i64 0, i64 %147
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x float], [4 x float]* %148, i64 0, i64 %150
  %152 = load float, float* %151, align 4
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %10, i64 0, i64 %154
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x float], [4 x float]* %155, i64 0, i64 %157
  %159 = load float, float* %158, align 4
  %160 = fmul float %152, %159
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %12, i64 0, i64 %162
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x float], [4 x float]* %163, i64 0, i64 %165
  %167 = load float, float* %166, align 4
  %168 = fmul float %160, %167
  %169 = load float*, float** %4, align 8
  %170 = load i32, i32* %13, align 4
  %171 = mul nsw i32 4, %170
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %169, i64 %174
  %176 = load float, float* %175, align 4
  %177 = fadd float %176, %168
  store float %177, float* %175, align 4
  br label %178

178:                                              ; preds = %145
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %142

181:                                              ; preds = %142
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %138

185:                                              ; preds = %138
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %134

189:                                              ; preds = %134
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %13, align 4
  br label %130

193:                                              ; preds = %130
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

declare dso_local i32 @memset(float*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
