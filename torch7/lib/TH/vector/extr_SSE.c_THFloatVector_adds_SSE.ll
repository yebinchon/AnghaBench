; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THFloatVector_adds_SSE.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THFloatVector_adds_SSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float, i32)* @THFloatVector_adds_SSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THFloatVector_adds_SSE(float* %0, float* %1, float %2, i32 %3) #0 {
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

15:                                               ; preds = %55, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, 8
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load float*, float** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = ptrtoint float* %24 to i64
  %26 = call i32 @_mm_loadu_ps(i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load float*, float** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = getelementptr inbounds float, float* %30, i64 4
  %32 = ptrtoint float* %31 to i64
  %33 = call i32 @_mm_loadu_ps(i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @_mm_add_ps(i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @_mm_add_ps(i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load float*, float** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = ptrtoint float* %43 to i64
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @_mm_storeu_ps(i64 %44, i32 %45)
  %47 = load float*, float** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = getelementptr inbounds float, float* %50, i64 4
  %52 = ptrtoint float* %51 to i64
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @_mm_storeu_ps(i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %20
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %9, align 4
  br label %15

58:                                               ; preds = %15
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load float*, float** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float, float* %7, align 4
  %70 = fadd float %68, %69
  %71 = load float*, float** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  store float %70, float* %74, align 4
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %59

78:                                               ; preds = %59
  ret void
}

declare dso_local i32 @_mm_set1_ps(float) #1

declare dso_local i32 @_mm_loadu_ps(i64) #1

declare dso_local i32 @_mm_add_ps(i32, i32) #1

declare dso_local i32 @_mm_storeu_ps(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
