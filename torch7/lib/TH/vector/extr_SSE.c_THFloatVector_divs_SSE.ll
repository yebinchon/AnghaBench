; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THFloatVector_divs_SSE.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THFloatVector_divs_SSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float, i32)* @THFloatVector_divs_SSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THFloatVector_divs_SSE(float* %0, float* %1, float %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load float, float* %7, align 4
  %14 = call i32 @_mm_set1_ps(float %13)
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %51, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, 8
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = load float*, float** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = call i32 @_mm_loadu_ps(float* %24)
  store i32 %25, i32* %11, align 4
  %26 = load float*, float** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = getelementptr inbounds float, float* %29, i64 4
  %31 = call i32 @_mm_loadu_ps(float* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @_mm_div_ps(i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @_mm_div_ps(i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load float*, float** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @_mm_storeu_ps(float* %41, i32 %42)
  %44 = load float*, float** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = getelementptr inbounds float, float* %47, i64 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @_mm_storeu_ps(float* %48, i32 %49)
  br label %51

51:                                               ; preds = %20
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 8
  store i32 %53, i32* %9, align 4
  br label %15

54:                                               ; preds = %15
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load float*, float** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = load float, float* %7, align 4
  %66 = fdiv float %64, %65
  %67 = load float*, float** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  store float %66, float* %70, align 4
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %55

74:                                               ; preds = %55
  ret void
}

declare dso_local i32 @_mm_set1_ps(float) #1

declare dso_local i32 @_mm_loadu_ps(float*) #1

declare dso_local i32 @_mm_div_ps(i32, i32) #1

declare dso_local i32 @_mm_storeu_ps(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
