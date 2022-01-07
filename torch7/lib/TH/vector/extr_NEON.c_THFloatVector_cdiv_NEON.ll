; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_NEON.c_THFloatVector_cdiv_NEON.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_NEON.c_THFloatVector_cdiv_NEON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32)* @THFloatVector_cdiv_NEON to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THFloatVector_cdiv_NEON(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %74, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sub nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %77

16:                                               ; preds = %10
  %17 = load float*, float** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds float, float* %17, i64 %18
  %20 = load float, float* %19, align 4
  %21 = load float*, float** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds float, float* %21, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fdiv float %20, %24
  %26 = load float*, float** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds float, float* %26, i64 %27
  store float %25, float* %28, align 4
  %29 = load float*, float** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, 1
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load float*, float** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, 1
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = fdiv float %33, %38
  %40 = load float*, float** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %41, 1
  %43 = getelementptr inbounds float, float* %40, i64 %42
  store float %39, float* %43, align 4
  %44 = load float*, float** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 2
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, 2
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fdiv float %48, %53
  %55 = load float*, float** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, 2
  %58 = getelementptr inbounds float, float* %55, i64 %57
  store float %54, float* %58, align 4
  %59 = load float*, float** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 3
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = load float*, float** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, 3
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fdiv float %63, %68
  %70 = load float*, float** %5, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 3
  %73 = getelementptr inbounds float, float* %70, i64 %72
  store float %69, float* %73, align 4
  br label %74

74:                                               ; preds = %16
  %75 = load i64, i64* %9, align 8
  %76 = add nsw i64 %75, 4
  store i64 %76, i64* %9, align 8
  br label %10

77:                                               ; preds = %10
  br label %78

78:                                               ; preds = %96, %77
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = load float*, float** %6, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds float, float* %84, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load float*, float** %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds float, float* %88, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fdiv float %87, %91
  %93 = load float*, float** %5, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds float, float* %93, i64 %94
  store float %92, float* %95, align 4
  br label %96

96:                                               ; preds = %83
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %9, align 8
  br label %78

99:                                               ; preds = %78
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
