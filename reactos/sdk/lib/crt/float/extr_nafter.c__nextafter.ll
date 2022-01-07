; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/float/extr_nafter.c__nextafter.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/float/extr_nafter.c__nextafter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"This function is not implemented correctly\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @_nextafter(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %6 = call i32 @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %7 = load double, double* %4, align 8
  %8 = load double, double* %5, align 8
  %9 = fcmp oeq double %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  store double %11, double* %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load double, double* %4, align 8
  %14 = call i64 @_isnan(double %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load double, double* %5, align 8
  %18 = call i64 @_isnan(double %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12
  %21 = load double, double* %4, align 8
  store double %21, double* %3, align 8
  br label %24

22:                                               ; preds = %16
  %23 = load double, double* %4, align 8
  store double %23, double* %3, align 8
  br label %24

24:                                               ; preds = %22, %20, %10
  %25 = load double, double* %3, align 8
  ret double %25
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @_isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
