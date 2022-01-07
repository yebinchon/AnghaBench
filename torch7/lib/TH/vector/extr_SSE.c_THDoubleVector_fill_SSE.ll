; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THDoubleVector_fill_SSE.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THDoubleVector_fill_SSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double, i32)* @THDoubleVector_fill_SSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THDoubleVector_fill_SSE(double* %0, double %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load double, double* %5, align 8
  %11 = call i32 @_mm_set1_pd(double %10)
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %49, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 8
  %16 = icmp sle i32 %13, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %12
  %18 = load double*, double** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = ptrtoint double* %21 to i64
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @_mm_storeu_pd(i64 %22, i32 %23)
  %25 = load double*, double** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = getelementptr inbounds double, double* %28, i64 2
  %30 = ptrtoint double* %29 to i64
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @_mm_storeu_pd(i64 %30, i32 %31)
  %33 = load double*, double** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = getelementptr inbounds double, double* %36, i64 4
  %38 = ptrtoint double* %37 to i64
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @_mm_storeu_pd(i64 %38, i32 %39)
  %41 = load double*, double** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = getelementptr inbounds double, double* %44, i64 6
  %46 = ptrtoint double* %45 to i64
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @_mm_storeu_pd(i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %17
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 8
  store i32 %51, i32* %7, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = srem i32 %54, 8
  %56 = sub nsw i32 %53, %55
  store i32 %56, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %70, %52
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = srem i32 %59, 8
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load double, double* %5, align 8
  %64 = load double*, double** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %64, i64 %68
  store double %63, double* %69, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %57

73:                                               ; preds = %57
  ret void
}

declare dso_local i32 @_mm_set1_pd(double) #1

declare dso_local i32 @_mm_storeu_pd(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
