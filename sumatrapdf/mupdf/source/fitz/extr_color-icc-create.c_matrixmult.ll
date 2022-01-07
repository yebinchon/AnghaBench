; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_matrixmult.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_matrixmult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, i32, i32, float*, i32, i32, float*)* @matrixmult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrixmult(i32* %0, float* %1, i32 %2, i32 %3, float* %4, i32 %5, i32 %6, float* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  store i32* %0, i32** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float* %4, float** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float* %7, float** %16, align 8
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %8
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %85, %29
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %22, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  %35 = load float*, float** %10, align 8
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %35, i64 %39
  store float* %40, float** %17, align 8
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %81, %34
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %21, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  store float 0.000000e+00, float* %23, align 4
  store i32 0, i32* %20, align 4
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load float, float* %23, align 4
  %52 = load float*, float** %17, align 8
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %13, align 8
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %19, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %57, i64 %63
  %65 = load float, float* %64, align 4
  %66 = fmul float %56, %65
  %67 = fadd float %51, %66
  store float %67, float* %23, align 4
  br label %68

68:                                               ; preds = %50
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %20, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load float, float* %23, align 4
  %73 = load float*, float** %16, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %21, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %73, i64 %79
  store float %72, float* %80, align 4
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %19, align 4
  br label %41

84:                                               ; preds = %41
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %18, align 4
  br label %30

88:                                               ; preds = %30
  br label %89

89:                                               ; preds = %88, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
