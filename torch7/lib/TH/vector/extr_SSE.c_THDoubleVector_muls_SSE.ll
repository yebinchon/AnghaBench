; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THDoubleVector_muls_SSE.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THDoubleVector_muls_SSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double, i32)* @THDoubleVector_muls_SSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THDoubleVector_muls_SSE(double* %0, double* %1, double %2, i32 %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load double, double* %7, align 8
  %20 = call i32 @_mm_set1_pd(double %19)
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %97, %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 8
  %25 = icmp sle i32 %22, %24
  br i1 %25, label %26, label %100

26:                                               ; preds = %21
  %27 = load double*, double** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = ptrtoint double* %30 to i64
  %32 = call i32 @_mm_loadu_pd(i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load double*, double** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = getelementptr inbounds double, double* %36, i64 2
  %38 = ptrtoint double* %37 to i64
  %39 = call i32 @_mm_loadu_pd(i64 %38)
  store i32 %39, i32* %12, align 4
  %40 = load double*, double** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  %44 = getelementptr inbounds double, double* %43, i64 4
  %45 = ptrtoint double* %44 to i64
  %46 = call i32 @_mm_loadu_pd(i64 %45)
  store i32 %46, i32* %13, align 4
  %47 = load double*, double** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  %51 = getelementptr inbounds double, double* %50, i64 6
  %52 = ptrtoint double* %51 to i64
  %53 = call i32 @_mm_loadu_pd(i64 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @_mm_mul_pd(i32 %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @_mm_mul_pd(i32 %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @_mm_mul_pd(i32 %60, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @_mm_mul_pd(i32 %63, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load double*, double** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  %70 = ptrtoint double* %69 to i64
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @_mm_storeu_pd(i64 %70, i32 %71)
  %73 = load double*, double** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %73, i64 %75
  %77 = getelementptr inbounds double, double* %76, i64 2
  %78 = ptrtoint double* %77 to i64
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @_mm_storeu_pd(i64 %78, i32 %79)
  %81 = load double*, double** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %81, i64 %83
  %85 = getelementptr inbounds double, double* %84, i64 4
  %86 = ptrtoint double* %85 to i64
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @_mm_storeu_pd(i64 %86, i32 %87)
  %89 = load double*, double** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = getelementptr inbounds double, double* %92, i64 6
  %94 = ptrtoint double* %93 to i64
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @_mm_storeu_pd(i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %26
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 8
  store i32 %99, i32* %9, align 4
  br label %21

100:                                              ; preds = %21
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load double*, double** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8
  %111 = load double, double* %7, align 8
  %112 = fmul double %110, %111
  %113 = load double*, double** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  store double %112, double* %116, align 8
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %101

120:                                              ; preds = %101
  ret void
}

declare dso_local i32 @_mm_set1_pd(double) #1

declare dso_local i32 @_mm_loadu_pd(i64) #1

declare dso_local i32 @_mm_mul_pd(i32, i32) #1

declare dso_local i32 @_mm_storeu_pd(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
