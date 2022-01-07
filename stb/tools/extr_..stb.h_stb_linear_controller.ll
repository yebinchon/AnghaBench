; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_linear_controller.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_linear_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_linear_controller(float* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  %14 = load float*, float** %6, align 8
  %15 = load float, float* %14, align 4
  store float %15, float* %13, align 4
  %16 = load float, float* %13, align 4
  %17 = load float, float* %7, align 4
  %18 = fcmp oeq float %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %69

20:                                               ; preds = %5
  %21 = load float, float* %7, align 4
  %22 = load float, float* %13, align 4
  %23 = fcmp olt float %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load float, float* %7, align 4
  %26 = fneg float %25
  store float %26, float* %7, align 4
  %27 = load float, float* %13, align 4
  %28 = fneg float %27
  store float %28, float* %13, align 4
  store float -1.000000e+00, float* %11, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load float, float* %13, align 4
  %31 = fcmp olt float %30, 0.000000e+00
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load float, float* %13, align 4
  %34 = load float, float* %9, align 4
  %35 = load float, float* %10, align 4
  %36 = fmul float %34, %35
  %37 = fadd float %33, %36
  store float %37, float* %12, align 4
  %38 = load float, float* %12, align 4
  %39 = fcmp ogt float %38, 0.000000e+00
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  store float 0.000000e+00, float* %12, align 4
  %41 = load float, float* %10, align 4
  %42 = load float, float* %13, align 4
  %43 = load float, float* %9, align 4
  %44 = fdiv float %42, %43
  %45 = fsub float %41, %44
  store float %45, float* %10, align 4
  %46 = load float, float* %10, align 4
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store float 0.000000e+00, float* %10, align 4
  br label %49

49:                                               ; preds = %48, %40
  br label %51

50:                                               ; preds = %32
  store float 0.000000e+00, float* %10, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load float, float* %12, align 4
  store float %52, float* %13, align 4
  br label %53

53:                                               ; preds = %51, %29
  %54 = load float, float* %13, align 4
  %55 = load float, float* %8, align 4
  %56 = load float, float* %10, align 4
  %57 = fmul float %55, %56
  %58 = fadd float %54, %57
  store float %58, float* %12, align 4
  %59 = load float, float* %12, align 4
  %60 = load float, float* %7, align 4
  %61 = fcmp ogt float %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load float, float* %7, align 4
  store float %63, float* %12, align 4
  br label %64

64:                                               ; preds = %62, %53
  %65 = load float, float* %12, align 4
  %66 = load float, float* %11, align 4
  %67 = fmul float %65, %66
  %68 = load float*, float** %6, align 8
  store float %67, float* %68, align 4
  br label %69

69:                                               ; preds = %64, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
