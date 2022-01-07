; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THDoubleVector_cadd_SSE.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THDoubleVector_cadd_SSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double*, double, i32)* @THDoubleVector_cadd_SSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THDoubleVector_cadd_SSE(double* %0, double* %1, double* %2, double %3, i32 %4) #0 {
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double* %0, double** %6, align 8
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load double, double* %9, align 8
  %16 = call i32 @_mm_set1_pd(double %15)
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %48, %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %19, 2
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load double*, double** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = ptrtoint double* %26 to i32
  %28 = call i32 @_mm_loadu_pd(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load double*, double** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = ptrtoint double* %32 to i32
  %34 = call i32 @_mm_loadu_pd(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @_mm_mul_pd(i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @_mm_add_pd(i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load double*, double** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = ptrtoint double* %44 to i32
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @_mm_storeu_pd(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %22
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %11, align 4
  br label %17

51:                                               ; preds = %17
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load double*, double** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = load double, double* %9, align 8
  %63 = load double*, double** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fmul double %62, %67
  %69 = fadd double %61, %68
  %70 = load double*, double** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  store double %69, double* %73, align 8
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %52

77:                                               ; preds = %52
  ret void
}

declare dso_local i32 @_mm_set1_pd(double) #1

declare dso_local i32 @_mm_loadu_pd(i32) #1

declare dso_local i32 @_mm_mul_pd(i32, i32) #1

declare dso_local i32 @_mm_add_pd(i32, i32) #1

declare dso_local i32 @_mm_storeu_pd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
