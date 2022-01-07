; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_UpdateZ.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_UpdateZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, float }

@SPHERE_RADIUS = common dso_local global float 0.000000e+00, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@FIELD_OF_VIEW_DEGREES_MAX = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @UpdateZ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateZ(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 2
  %12 = call float @tanf(i32 %11)
  store float %12, float* %3, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 2
  %17 = call float @tanf(i32 %16)
  store float %17, float* %4, align 4
  %18 = load float, float* @SPHERE_RADIUS, align 4
  %19 = fneg float %18
  %20 = load float, float* %3, align 4
  %21 = load float, float* %3, align 4
  %22 = fmul float %20, %21
  %23 = load float, float* %4, align 4
  %24 = load float, float* %4, align 4
  %25 = fmul float %23, %24
  %26 = fadd float %22, %25
  %27 = call i32 @sqrtf(float %26)
  %28 = call i32 @atanf(i32 %27)
  %29 = call float @sinf(i32 %28)
  %30 = fdiv float %19, %29
  store float %30, float* %5, align 4
  store float 9.000000e+01, float* %6, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float, float* @M_PI, align 4
  %36 = fmul float 9.000000e+01, %35
  %37 = fdiv float %36, 1.800000e+02
  %38 = fcmp ole float %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store float 0.000000e+00, float* %41, align 4
  br label %74

42:                                               ; preds = %1
  %43 = load float, float* %5, align 4
  %44 = load float, float* @FIELD_OF_VIEW_DEGREES_MAX, align 4
  %45 = fsub float %44, 9.000000e+01
  %46 = load float, float* @M_PI, align 4
  %47 = fmul float %45, %46
  %48 = fdiv float %47, 1.800000e+02
  %49 = fdiv float %43, %48
  store float %49, float* %7, align 4
  %50 = load float, float* %7, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sitofp i32 %53 to float
  %55 = fmul float %50, %54
  %56 = load float, float* %7, align 4
  %57 = fmul float %56, 9.000000e+01
  %58 = load float, float* @M_PI, align 4
  %59 = fmul float %57, %58
  %60 = fdiv float %59, 1.800000e+02
  %61 = fsub float %55, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store float %61, float* %63, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load float, float* %65, align 4
  %67 = load float, float* %5, align 4
  %68 = fcmp olt float %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %42
  %70 = load float, float* %5, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store float %70, float* %72, align 4
  br label %73

73:                                               ; preds = %69, %42
  br label %74

74:                                               ; preds = %73, %39
  ret void
}

declare dso_local float @tanf(i32) #1

declare dso_local float @sinf(i32) #1

declare dso_local i32 @atanf(i32) #1

declare dso_local i32 @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
