; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_GetCombineCostFactor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_GetCombineCostFactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32)* @GetCombineCostFactor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @GetCombineCostFactor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store double 1.600000e-01, double* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 90
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 256
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load double, double* %5, align 8
  %13 = fdiv double %12, 2.000000e+00
  store double %13, double* %5, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 512
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load double, double* %5, align 8
  %19 = fdiv double %18, 2.000000e+00
  store double %19, double* %5, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 1024
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load double, double* %5, align 8
  %25 = fdiv double %24, 2.000000e+00
  store double %25, double* %5, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 50
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load double, double* %5, align 8
  %31 = fdiv double %30, 2.000000e+00
  store double %31, double* %5, align 8
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %2
  %34 = load double, double* %5, align 8
  ret double %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
