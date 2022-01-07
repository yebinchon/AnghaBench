; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_find_normal_vectors.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_find_normal_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLT_TINY = common dso_local global float 0.000000e+00, align 4
@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float, float, float, float*, float*)* @find_normal_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_normal_vectors(float %0, float %1, float %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %14 = load float, float* %7, align 4
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %16, label %39

16:                                               ; preds = %5
  %17 = load float, float* %8, align 4
  %18 = load float, float* @FLT_TINY, align 4
  %19 = fcmp olt float %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load float, float* %8, align 4
  %22 = load float, float* @FLT_TINY, align 4
  %23 = fneg float %22
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %93

26:                                               ; preds = %20, %16
  %27 = load float, float* %8, align 4
  %28 = fcmp ogt float %27, 0.000000e+00
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load float, float* %9, align 4
  %31 = load float*, float** %10, align 8
  store float %30, float* %31, align 4
  br label %36

32:                                               ; preds = %26
  %33 = load float, float* %9, align 4
  %34 = fneg float %33
  %35 = load float*, float** %10, align 8
  store float %34, float* %35, align 4
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36
  %38 = load float*, float** %11, align 8
  store float 0.000000e+00, float* %38, align 4
  br label %92

39:                                               ; preds = %5
  %40 = load float, float* %8, align 4
  %41 = fcmp oeq float %40, 0.000000e+00
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load float, float* %7, align 4
  %44 = load float, float* @FLT_TINY, align 4
  %45 = fcmp olt float %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load float, float* %7, align 4
  %48 = load float, float* @FLT_TINY, align 4
  %49 = fneg float %48
  %50 = fcmp ogt float %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %93

52:                                               ; preds = %46, %42
  %53 = load float, float* %7, align 4
  %54 = fcmp ogt float %53, 0.000000e+00
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load float, float* %9, align 4
  %57 = fneg float %56
  %58 = load float*, float** %11, align 8
  store float %57, float* %58, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load float, float* %9, align 4
  %61 = load float*, float** %11, align 8
  store float %60, float* %61, align 4
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62
  %64 = load float*, float** %10, align 8
  store float 0.000000e+00, float* %64, align 4
  br label %91

65:                                               ; preds = %39
  %66 = load float, float* %7, align 4
  %67 = load float, float* %7, align 4
  %68 = fmul float %66, %67
  %69 = load float, float* %8, align 4
  %70 = load float, float* %8, align 4
  %71 = fmul float %69, %70
  %72 = fadd float %68, %71
  store float %72, float* %12, align 4
  %73 = load float, float* %12, align 4
  %74 = load float, float* @FLT_EPSILON, align 4
  %75 = fcmp olt float %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %93

77:                                               ; preds = %65
  %78 = load float, float* %9, align 4
  %79 = load float, float* %12, align 4
  %80 = call float @sqrtf(float %79) #2
  %81 = fdiv float %78, %80
  store float %81, float* %13, align 4
  %82 = load float, float* %8, align 4
  %83 = load float, float* %13, align 4
  %84 = fmul float %82, %83
  %85 = load float*, float** %10, align 8
  store float %84, float* %85, align 4
  %86 = load float, float* %7, align 4
  %87 = fneg float %86
  %88 = load float, float* %13, align 4
  %89 = fmul float %87, %88
  %90 = load float*, float** %11, align 8
  store float %89, float* %90, align 4
  br label %91

91:                                               ; preds = %77, %63
  br label %92

92:                                               ; preds = %91, %37
  store i32 0, i32* %6, align 4
  br label %96

93:                                               ; preds = %76, %51, %25
  %94 = load float*, float** %10, align 8
  store float 0.000000e+00, float* %94, align 4
  %95 = load float*, float** %11, align 8
  store float 0.000000e+00, float* %95, align 4
  store i32 1, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %92
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
