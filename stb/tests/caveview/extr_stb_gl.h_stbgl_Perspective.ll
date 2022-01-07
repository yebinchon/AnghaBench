; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_Perspective.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_Perspective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_VIEWPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbgl_Perspective(float %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %19 = load i32, i32* @GL_VIEWPORT, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %21 = call i32 @glGetIntegerv(i32 %19, i32* %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %16, align 4
  %27 = sitofp i32 %26 to float
  %28 = load i32, i32* %17, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %27, %29
  store float %30, float* %13, align 4
  %31 = load float, float* %7, align 4
  %32 = fcmp ole float %31, 0.000000e+00
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store float 1.790000e+02, float* %7, align 4
  br label %34

34:                                               ; preds = %33, %5
  %35 = load float, float* %8, align 4
  %36 = fcmp ole float %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store float 1.790000e+02, float* %8, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load float, float* %7, align 4
  %40 = fdiv float %39, 2.000000e+00
  %41 = call i32 @stbgl_deg2rad(float %40)
  %42 = call i64 @tan(i32 %41)
  %43 = sitofp i64 %42 to float
  %44 = fmul float %43, 2.000000e+00
  store float %44, float* %11, align 4
  %45 = load float, float* %8, align 4
  %46 = fdiv float %45, 2.000000e+00
  %47 = call i32 @stbgl_deg2rad(float %46)
  %48 = call i64 @tan(i32 %47)
  %49 = sitofp i64 %48 to float
  %50 = fmul float %49, 2.000000e+00
  store float %50, float* %12, align 4
  %51 = load float, float* %11, align 4
  %52 = load float, float* %13, align 4
  %53 = load float, float* %12, align 4
  %54 = fmul float %52, %53
  %55 = fcmp ole float %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %38
  %57 = load float, float* %11, align 4
  %58 = load float, float* %13, align 4
  %59 = fdiv float %57, %58
  store float %59, float* %18, align 4
  %60 = load float, float* %18, align 4
  %61 = fdiv float %60, 2.000000e+00
  %62 = load float, float* %6, align 4
  %63 = fdiv float %61, %62
  %64 = call i64 @atan(float %63)
  %65 = sitofp i64 %64 to float
  store float %65, float* %14, align 4
  br label %73

66:                                               ; preds = %38
  %67 = load float, float* %12, align 4
  %68 = fdiv float %67, 2.000000e+00
  %69 = load float, float* %6, align 4
  %70 = fdiv float %68, %69
  %71 = call i64 @atan(float %70)
  %72 = sitofp i64 %71 to float
  store float %72, float* %14, align 4
  br label %73

73:                                               ; preds = %66, %56
  %74 = load float, float* %14, align 4
  %75 = fmul float %74, 2.000000e+00
  %76 = call i64 @stbgl_rad2deg(float %75)
  %77 = sitofp i64 %76 to float
  store float %77, float* %14, align 4
  %78 = load float, float* %14, align 4
  %79 = load float, float* %13, align 4
  %80 = load float, float* %9, align 4
  %81 = load float, float* %10, align 4
  %82 = call i32 @gluPerspective(float %78, float %79, float %80, float %81)
  ret void
}

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i64 @tan(i32) #1

declare dso_local i32 @stbgl_deg2rad(float) #1

declare dso_local i64 @atan(float) #1

declare dso_local i64 @stbgl_rad2deg(float) #1

declare dso_local i32 @gluPerspective(float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
