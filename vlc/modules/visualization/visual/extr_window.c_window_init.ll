; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_window.c_window_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_window.c_window_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, float }
%struct.TYPE_6__ = type { float*, i32 }

@M_PI = common dso_local global i64 0, align 8
@FT_A0 = common dso_local global float 0.000000e+00, align 4
@FT_A1 = common dso_local global float 0.000000e+00, align 4
@FT_A2 = common dso_local global float 0.000000e+00, align 4
@FT_A3 = common dso_local global float 0.000000e+00, align 4
@FT_A4 = common dso_local global float 0.000000e+00, align 4
@BH_A0 = common dso_local global float 0.000000e+00, align 4
@BH_A1 = common dso_local global float 0.000000e+00, align 4
@BH_A2 = common dso_local global float 0.000000e+00, align 4
@BH_A3 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @window_init(i32 %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store float* null, float** %8, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 129
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 130
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 131
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 128
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %224

39:                                               ; preds = %35, %32, %29, %3
  %40 = load i32, i32* %5, align 4
  %41 = call float* @vlc_alloc(i32 %40, i32 4)
  store float* %41, float** %8, align 8
  %42 = load float*, float** %8, align 8
  %43 = icmp ne float* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %231

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %221 [
    i32 129, label %49
    i32 130, label %76
    i32 131, label %132
    i32 128, label %179
  ]

49:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %72, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = sitofp i32 %55 to float
  %57 = load i32, i32* %10, align 4
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %56, %58
  store float %59, float* %12, align 4
  %60 = load i64, i64* @M_PI, align 8
  %61 = sitofp i64 %60 to float
  %62 = fmul float 2.000000e+00, %61
  %63 = load float, float* %12, align 4
  %64 = fmul float %62, %63
  %65 = call float @cosf(float %64) #3
  %66 = fmul float 5.000000e-01, %65
  %67 = fsub float 5.000000e-01, %66
  %68 = load float*, float** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float %67, float* %71, align 4
  br label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %50

75:                                               ; preds = %50
  br label %223

76:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %128, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %131

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = sitofp i32 %82 to float
  %84 = load i32, i32* %10, align 4
  %85 = sitofp i32 %84 to float
  %86 = fdiv float %83, %85
  store float %86, float* %14, align 4
  %87 = load float, float* @FT_A0, align 4
  %88 = load float, float* @FT_A1, align 4
  %89 = load i64, i64* @M_PI, align 8
  %90 = sitofp i64 %89 to float
  %91 = fmul float 2.000000e+00, %90
  %92 = load float, float* %14, align 4
  %93 = fmul float %91, %92
  %94 = call float @cosf(float %93) #3
  %95 = fmul float %88, %94
  %96 = fsub float %87, %95
  %97 = load float, float* @FT_A2, align 4
  %98 = load i64, i64* @M_PI, align 8
  %99 = sitofp i64 %98 to float
  %100 = fmul float 4.000000e+00, %99
  %101 = load float, float* %14, align 4
  %102 = fmul float %100, %101
  %103 = call float @cosf(float %102) #3
  %104 = fmul float %97, %103
  %105 = fadd float %96, %104
  %106 = load float, float* @FT_A3, align 4
  %107 = load i64, i64* @M_PI, align 8
  %108 = sitofp i64 %107 to float
  %109 = fmul float 6.000000e+00, %108
  %110 = load float, float* %14, align 4
  %111 = fmul float %109, %110
  %112 = call float @cosf(float %111) #3
  %113 = fmul float %106, %112
  %114 = fsub float %105, %113
  %115 = load float, float* @FT_A4, align 4
  %116 = load i64, i64* @M_PI, align 8
  %117 = sitofp i64 %116 to float
  %118 = fmul float 8.000000e+00, %117
  %119 = load float, float* %14, align 4
  %120 = fmul float %118, %119
  %121 = call float @cosf(float %120) #3
  %122 = fmul float %115, %121
  %123 = fadd float %114, %122
  %124 = load float*, float** %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  store float %123, float* %127, align 4
  br label %128

128:                                              ; preds = %81
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %77

131:                                              ; preds = %77
  br label %223

132:                                              ; preds = %45
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %175, %132
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %133
  %138 = load i32, i32* %15, align 4
  %139 = sitofp i32 %138 to float
  %140 = load i32, i32* %10, align 4
  %141 = sitofp i32 %140 to float
  %142 = fdiv float %139, %141
  store float %142, float* %16, align 4
  %143 = load float, float* @BH_A0, align 4
  %144 = load float, float* @BH_A1, align 4
  %145 = load i64, i64* @M_PI, align 8
  %146 = sitofp i64 %145 to float
  %147 = fmul float 2.000000e+00, %146
  %148 = load float, float* %16, align 4
  %149 = fmul float %147, %148
  %150 = call float @cosf(float %149) #3
  %151 = fmul float %144, %150
  %152 = fsub float %143, %151
  %153 = load float, float* @BH_A2, align 4
  %154 = load i64, i64* @M_PI, align 8
  %155 = sitofp i64 %154 to float
  %156 = fmul float 4.000000e+00, %155
  %157 = load float, float* %16, align 4
  %158 = fmul float %156, %157
  %159 = call float @cosf(float %158) #3
  %160 = fmul float %153, %159
  %161 = fadd float %152, %160
  %162 = load float, float* @BH_A3, align 4
  %163 = load i64, i64* @M_PI, align 8
  %164 = sitofp i64 %163 to float
  %165 = fmul float 6.000000e+00, %164
  %166 = load float, float* %16, align 4
  %167 = fmul float %165, %166
  %168 = call float @cosf(float %167) #3
  %169 = fmul float %162, %168
  %170 = fsub float %161, %169
  %171 = load float*, float** %8, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  store float %170, float* %174, align 4
  br label %175

175:                                              ; preds = %137
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %133

178:                                              ; preds = %133
  br label %223

179:                                              ; preds = %45
  %180 = load i64, i64* @M_PI, align 8
  %181 = sitofp i64 %180 to float
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load float, float* %183, align 4
  %185 = fmul float %181, %184
  store float %185, float* %17, align 4
  %186 = load float, float* %17, align 4
  %187 = call float @bessi0(float %186)
  store float %187, float* %18, align 4
  store i32 0, i32* %19, align 4
  br label %188

188:                                              ; preds = %217, %179
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %220

192:                                              ; preds = %188
  %193 = load i32, i32* %19, align 4
  %194 = sitofp i32 %193 to float
  %195 = load i32, i32* %10, align 4
  %196 = sitofp i32 %195 to float
  %197 = fdiv float %194, %196
  store float %197, float* %20, align 4
  %198 = load float, float* %20, align 4
  %199 = fmul float 2.000000e+00, %198
  %200 = fsub float %199, 1.000000e+00
  store float %200, float* %21, align 4
  %201 = load float, float* %21, align 4
  %202 = load float, float* %21, align 4
  %203 = fmul float %201, %202
  store float %203, float* %22, align 4
  %204 = load float, float* %22, align 4
  %205 = fsub float 1.000000e+00, %204
  %206 = call float @sqrtf(float %205) #3
  store float %206, float* %23, align 4
  %207 = load float, float* %17, align 4
  %208 = load float, float* %23, align 4
  %209 = fmul float %207, %208
  %210 = call float @bessi0(float %209)
  %211 = load float, float* %18, align 4
  %212 = fdiv float %210, %211
  %213 = load float*, float** %8, align 8
  %214 = load i32, i32* %19, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %213, i64 %215
  store float %212, float* %216, align 4
  br label %217

217:                                              ; preds = %192
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %19, align 4
  br label %188

220:                                              ; preds = %188
  br label %223

221:                                              ; preds = %45
  %222 = call i32 (...) @vlc_assert_unreachable()
  br label %223

223:                                              ; preds = %221, %220, %178, %131, %75
  br label %224

224:                                              ; preds = %223, %38
  %225 = load float*, float** %8, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store float* %225, float** %227, align 8
  %228 = load i32, i32* %5, align 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  store i32 1, i32* %4, align 4
  br label %231

231:                                              ; preds = %224, %44
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local float* @vlc_alloc(i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

declare dso_local float @bessi0(float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
