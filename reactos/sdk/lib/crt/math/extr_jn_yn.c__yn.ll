; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_jn_yn.c__yn.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_jn_yn.c__yn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDOM = common dso_local global i32 0, align 4
@_FPCLASS_NINF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @_yn(i32 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = call i32 @_finite(double %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EDOM, align 4
  %11 = call i32* (...) @_errno()
  store i32 %10, i32* %11, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %3, align 4
  %14 = load double, double* %4, align 8
  %15 = call double @__ieee754_yn(i32 %13, double %14)
  store double %15, double* %5, align 8
  %16 = load double, double* %5, align 8
  %17 = call i64 @_fpclass(double %16)
  %18 = load i64, i64* @_FPCLASS_NINF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @EDOM, align 4
  %22 = call i32* (...) @_errno()
  store i32 %21, i32* %22, align 4
  %23 = call double @sqrt(i32 -1)
  store double %23, double* %5, align 8
  br label %24

24:                                               ; preds = %20, %12
  %25 = load double, double* %5, align 8
  ret double %25
}

declare dso_local i32 @_finite(double) #1

declare dso_local i32* @_errno(...) #1

declare dso_local double @__ieee754_yn(i32, double) #1

declare dso_local i64 @_fpclass(double) #1

declare dso_local double @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
