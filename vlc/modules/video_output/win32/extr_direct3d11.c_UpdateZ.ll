; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_UpdateZ.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_UpdateZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPHERE_RADIUS = common dso_local global float 0.000000e+00, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@FIELD_OF_VIEW_DEGREES_MAX = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float)* @UpdateZ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @UpdateZ(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %11 = load float, float* %3, align 4
  %12 = fdiv float %11, 2.000000e+00
  %13 = call float @tanf(float %12) #3
  store float %13, float* %5, align 4
  %14 = load float, float* %4, align 4
  %15 = fdiv float %14, 2.000000e+00
  %16 = call float @tanf(float %15) #3
  store float %16, float* %6, align 4
  %17 = load float, float* @SPHERE_RADIUS, align 4
  %18 = fneg float %17
  %19 = load float, float* %5, align 4
  %20 = load float, float* %5, align 4
  %21 = fmul float %19, %20
  %22 = load float, float* %6, align 4
  %23 = load float, float* %6, align 4
  %24 = fmul float %22, %23
  %25 = fadd float %21, %24
  %26 = call i32 @sqrtf(float %25)
  %27 = call i32 @atanf(i32 %26)
  %28 = call float @sinf(i32 %27)
  %29 = fdiv float %18, %28
  store float %29, float* %7, align 4
  store float 9.000000e+01, float* %8, align 4
  %30 = load float, float* %3, align 4
  %31 = load float, float* @M_PI, align 4
  %32 = fmul float 9.000000e+01, %31
  %33 = fdiv float %32, 1.800000e+02
  %34 = fcmp ole float %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store float 0.000000e+00, float* %9, align 4
  br label %59

36:                                               ; preds = %2
  %37 = load float, float* %7, align 4
  %38 = load float, float* @FIELD_OF_VIEW_DEGREES_MAX, align 4
  %39 = fsub float %38, 9.000000e+01
  %40 = load float, float* @M_PI, align 4
  %41 = fmul float %39, %40
  %42 = fdiv float %41, 1.800000e+02
  %43 = fdiv float %37, %42
  store float %43, float* %10, align 4
  %44 = load float, float* %10, align 4
  %45 = load float, float* %3, align 4
  %46 = fmul float %44, %45
  %47 = load float, float* %10, align 4
  %48 = fmul float %47, 9.000000e+01
  %49 = load float, float* @M_PI, align 4
  %50 = fmul float %48, %49
  %51 = fdiv float %50, 1.800000e+02
  %52 = fsub float %46, %51
  store float %52, float* %9, align 4
  %53 = load float, float* %9, align 4
  %54 = load float, float* %7, align 4
  %55 = fcmp olt float %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = load float, float* %7, align 4
  store float %57, float* %9, align 4
  br label %58

58:                                               ; preds = %56, %36
  br label %59

59:                                               ; preds = %58, %35
  %60 = load float, float* %9, align 4
  ret float %60
}

; Function Attrs: nounwind
declare dso_local float @tanf(float) #1

declare dso_local float @sinf(i32) #2

declare dso_local i32 @atanf(i32) #2

declare dso_local i32 @sqrtf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
