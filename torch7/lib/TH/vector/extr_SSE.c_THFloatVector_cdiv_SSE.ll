; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THFloatVector_cdiv_SSE.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THFloatVector_cdiv_SSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32)* @THFloatVector_cdiv_SSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THFloatVector_cdiv_SSE(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %61, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 8
  %18 = icmp sle i32 %15, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = load float*, float** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = call i32 @_mm_loadu_ps(float* %23)
  store i32 %24, i32* %10, align 4
  %25 = load float*, float** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = getelementptr inbounds float, float* %28, i64 4
  %30 = call i32 @_mm_loadu_ps(float* %29)
  store i32 %30, i32* %11, align 4
  %31 = load float*, float** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = call i32 @_mm_loadu_ps(float* %34)
  store i32 %35, i32* %12, align 4
  %36 = load float*, float** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = getelementptr inbounds float, float* %39, i64 4
  %41 = call i32 @_mm_loadu_ps(float* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @_mm_div_ps(i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @_mm_div_ps(i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load float*, float** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @_mm_storeu_ps(float* %51, i32 %52)
  %54 = load float*, float** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = getelementptr inbounds float, float* %57, i64 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @_mm_storeu_ps(float* %58, i32 %59)
  br label %61

61:                                               ; preds = %19
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %9, align 4
  br label %14

64:                                               ; preds = %14
  br label %65

65:                                               ; preds = %85, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load float*, float** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = load float*, float** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fdiv float %74, %79
  %81 = load float*, float** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %80, float* %84, align 4
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %65

88:                                               ; preds = %65
  ret void
}

declare dso_local i32 @_mm_loadu_ps(float*) #1

declare dso_local i32 @_mm_div_ps(i32, i32) #1

declare dso_local i32 @_mm_storeu_ps(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
