; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_NEON.c_THFloatVector_divs_NEON.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_NEON.c_THFloatVector_divs_NEON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float, i32)* @THFloatVector_divs_NEON to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THFloatVector_divs_NEON(float* %0, float* %1, float %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %59, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sub nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %10
  %17 = load float*, float** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds float, float* %17, i64 %18
  %20 = load float, float* %19, align 4
  %21 = load float, float* %7, align 4
  %22 = fdiv float %20, %21
  %23 = load float*, float** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds float, float* %23, i64 %24
  store float %22, float* %25, align 4
  %26 = load float*, float** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add nsw i64 %27, 1
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load float, float* %7, align 4
  %32 = fdiv float %30, %31
  %33 = load float*, float** %5, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %34, 1
  %36 = getelementptr inbounds float, float* %33, i64 %35
  store float %32, float* %36, align 4
  %37 = load float*, float** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 2
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float, float* %7, align 4
  %43 = fdiv float %41, %42
  %44 = load float*, float** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 2
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %43, float* %47, align 4
  %48 = load float*, float** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, 3
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float, float* %7, align 4
  %54 = fdiv float %52, %53
  %55 = load float*, float** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, 3
  %58 = getelementptr inbounds float, float* %55, i64 %57
  store float %54, float* %58, align 4
  br label %59

59:                                               ; preds = %16
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 4
  store i64 %61, i64* %9, align 8
  br label %10

62:                                               ; preds = %10
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load float*, float** %6, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds float, float* %69, i64 %70
  %72 = load float, float* %71, align 4
  %73 = load float, float* %7, align 4
  %74 = fdiv float %72, %73
  %75 = load float*, float** %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds float, float* %75, i64 %76
  store float %74, float* %77, align 4
  br label %78

78:                                               ; preds = %68
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %63

81:                                               ; preds = %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
