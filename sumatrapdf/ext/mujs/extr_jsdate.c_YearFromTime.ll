; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_YearFromTime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_YearFromTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msPerDay = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @YearFromTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @YearFromTime(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = load double, double* @msPerDay, align 8
  %7 = fmul double %6, 0x4076D3E147AE147B
  %8 = fdiv double %5, %7
  %9 = call i32 @floor(double %8)
  %10 = add nsw i32 %9, 1970
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call double @TimeFromYear(i32 %11)
  store double %12, double* %4, align 8
  %13 = load double, double* %4, align 8
  %14 = load double, double* %2, align 8
  %15 = fcmp ogt double %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load double, double* %4, align 8
  %21 = load double, double* @msPerDay, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call double @DaysInYear(i32 %22)
  %24 = fmul double %21, %23
  %25 = fadd double %20, %24
  %26 = load double, double* %2, align 8
  %27 = fcmp ole double %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %19
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @floor(double) #1

declare dso_local double @TimeFromYear(i32) #1

declare dso_local double @DaysInYear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
