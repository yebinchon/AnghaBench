; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_equalizer.c_EqzCoeffs.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_equalizer.c_EqzCoeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float, float, float, float }

@f_vlc_frequency_table_10b = common dso_local global float* null, align 8
@f_iso_frequency_table_10b = common dso_local global float* null, align 8
@EQZ_BANDS_MAX = common dso_local global i32 0, align 4
@M_PI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float, i32, %struct.TYPE_5__*)* @EqzCoeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EqzCoeffs(i32 %0, float %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load float*, float** @f_vlc_frequency_table_10b, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load float*, float** @f_iso_frequency_table_10b, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi float* [ %26, %25 ], [ %28, %27 ]
  store float* %30, float** %9, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sitofp i32 %31 to float
  store float %32, float* %10, align 4
  %33 = load float, float* %10, align 4
  %34 = fmul float 5.000000e-01, %33
  store float %34, float* %11, align 4
  %35 = load float, float* %6, align 4
  %36 = fmul float 5.000000e-01, %35
  %37 = call float @powf(float 2.000000e+00, float %36) #2
  store float %37, float* %12, align 4
  %38 = load float, float* %12, align 4
  %39 = fadd float %38, 1.000000e+00
  %40 = fmul float 5.000000e-01, %39
  store float %40, float* %13, align 4
  %41 = load float, float* %12, align 4
  %42 = fsub float %41, 1.000000e+00
  %43 = fmul float 5.000000e-01, %42
  store float %43, float* %14, align 4
  %44 = load i32, i32* @EQZ_BANDS_MAX, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %153, %29
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @EQZ_BANDS_MAX, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %156

51:                                               ; preds = %47
  %52 = load float*, float** %9, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  store float %56, float* %16, align 4
  %57 = load float, float* %16, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store float %57, float* %64, align 4
  %65 = load float, float* %16, align 4
  %66 = load float, float* %11, align 4
  %67 = fcmp ole float %65, %66
  br i1 %67, label %68, label %130

68:                                               ; preds = %51
  %69 = load i64, i64* @M_PI, align 8
  %70 = sitofp i64 %69 to float
  %71 = fmul float 2.000000e+00, %70
  %72 = load float, float* %16, align 4
  %73 = fmul float %71, %72
  %74 = load float, float* %10, align 4
  %75 = fdiv float %73, %74
  store float %75, float* %17, align 4
  %76 = load float, float* %17, align 4
  %77 = load float, float* %12, align 4
  %78 = fdiv float %76, %77
  store float %78, float* %18, align 4
  %79 = load float, float* %18, align 4
  %80 = call float @sinf(float %79) #2
  store float %80, float* %19, align 4
  %81 = load float, float* %18, align 4
  %82 = load float, float* %13, align 4
  %83 = fmul float %81, %82
  %84 = call float @sinf(float %83) #2
  %85 = load float, float* %18, align 4
  %86 = load float, float* %14, align 4
  %87 = fmul float %85, %86
  %88 = call float @sinf(float %87) #2
  %89 = fmul float %84, %88
  store float %89, float* %20, align 4
  %90 = load float, float* %19, align 4
  %91 = fmul float %90, 5.000000e-01
  store float %91, float* %21, align 4
  %92 = load float, float* %21, align 4
  %93 = load float, float* %20, align 4
  %94 = fadd float %92, %93
  store float %94, float* %22, align 4
  %95 = load float, float* %20, align 4
  %96 = load float, float* %22, align 4
  %97 = fdiv float %95, %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store float %97, float* %104, align 4
  %105 = load float, float* %21, align 4
  %106 = load float, float* %20, align 4
  %107 = fsub float %105, %106
  %108 = load float, float* %22, align 4
  %109 = fdiv float %107, %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store float %109, float* %116, align 4
  %117 = load float, float* %19, align 4
  %118 = load float, float* %17, align 4
  %119 = call float @cosf(float %118) #2
  %120 = fmul float %117, %119
  %121 = load float, float* %22, align 4
  %122 = fdiv float %120, %121
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  store float %122, float* %129, align 4
  br label %152

130:                                              ; preds = %51
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  store float 0.000000e+00, float* %137, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store float 0.000000e+00, float* %144, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store float 0.000000e+00, float* %151, align 4
  br label %152

152:                                              ; preds = %130, %68
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %47

156:                                              ; preds = %47
  ret void
}

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
