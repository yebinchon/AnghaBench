; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_NEON.c_THFloatVector_cadd_NEON.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_NEON.c_THFloatVector_cadd_NEON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float, i32)* @THFloatVector_cadd_NEON to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THFloatVector_cadd_NEON(float* %0, float* %1, float* %2, float %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %84, %5
  %13 = load i64, i64* %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = sub nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %87

18:                                               ; preds = %12
  %19 = load float*, float** %7, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds float, float* %19, i64 %20
  %22 = load float, float* %21, align 4
  %23 = load float, float* %9, align 4
  %24 = load float*, float** %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds float, float* %24, i64 %25
  %27 = load float, float* %26, align 4
  %28 = fmul float %23, %27
  %29 = fadd float %22, %28
  %30 = load float*, float** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds float, float* %30, i64 %31
  store float %29, float* %32, align 4
  %33 = load float*, float** %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add nsw i64 %34, 1
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = load float, float* %9, align 4
  %39 = load float*, float** %8, align 8
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fmul float %38, %43
  %45 = fadd float %37, %44
  %46 = load float*, float** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %47, 1
  %49 = getelementptr inbounds float, float* %46, i64 %48
  store float %45, float* %49, align 4
  %50 = load float*, float** %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, 2
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = load float, float* %9, align 4
  %56 = load float*, float** %8, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, 2
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fmul float %55, %60
  %62 = fadd float %54, %61
  %63 = load float*, float** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, 2
  %66 = getelementptr inbounds float, float* %63, i64 %65
  store float %62, float* %66, align 4
  %67 = load float*, float** %7, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add nsw i64 %68, 3
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  %72 = load float, float* %9, align 4
  %73 = load float*, float** %8, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add nsw i64 %74, 3
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fmul float %72, %77
  %79 = fadd float %71, %78
  %80 = load float*, float** %6, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %81, 3
  %83 = getelementptr inbounds float, float* %80, i64 %82
  store float %79, float* %83, align 4
  br label %84

84:                                               ; preds = %18
  %85 = load i64, i64* %11, align 8
  %86 = add nsw i64 %85, 4
  store i64 %86, i64* %11, align 8
  br label %12

87:                                               ; preds = %12
  br label %88

88:                                               ; preds = %108, %87
  %89 = load i64, i64* %11, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load float*, float** %7, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds float, float* %94, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load float, float* %9, align 4
  %99 = load float*, float** %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds float, float* %99, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fmul float %98, %102
  %104 = fadd float %97, %103
  %105 = load float*, float** %6, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds float, float* %105, i64 %106
  store float %104, float* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = load i64, i64* %11, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %11, align 8
  br label %88

111:                                              ; preds = %88
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
