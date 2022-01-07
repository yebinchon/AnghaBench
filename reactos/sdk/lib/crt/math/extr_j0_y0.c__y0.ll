; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_j0_y0.c__y0.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_j0_y0.c__y0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_FPCLASS_NN = common dso_local global i32 0, align 4
@_FPCLASS_ND = common dso_local global i32 0, align 4
@_FPCLASS_NZ = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@_FPCLASS_NINF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @_y0(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = call i64 @_fpclass(double %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = load double, double* %2, align 8
  %9 = call i32 @_finite(double %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @_FPCLASS_NN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @_FPCLASS_ND, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @_FPCLASS_NZ, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %15, %11, %1
  %24 = load i32, i32* @EDOM, align 4
  %25 = call i32* (...) @_errno()
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load double, double* %2, align 8
  %28 = call double @__ieee754_y0(double %27)
  store double %28, double* %3, align 8
  %29 = load double, double* %3, align 8
  %30 = call i64 @_fpclass(double %29)
  %31 = load i64, i64* @_FPCLASS_NINF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @EDOM, align 4
  %35 = call i32* (...) @_errno()
  store i32 %34, i32* %35, align 4
  %36 = call double @sqrt(i32 -1)
  store double %36, double* %3, align 8
  br label %37

37:                                               ; preds = %33, %26
  %38 = load double, double* %3, align 8
  ret double %38
}

declare dso_local i64 @_fpclass(double) #1

declare dso_local i32 @_finite(double) #1

declare dso_local i32* @_errno(...) #1

declare dso_local double @__ieee754_y0(double) #1

declare dso_local double @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
