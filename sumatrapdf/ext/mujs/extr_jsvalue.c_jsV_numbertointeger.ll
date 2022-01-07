; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_jsV_numbertointeger.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_jsV_numbertointeger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MIN = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsV_numbertointeger(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp oeq double %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = call i64 @isnan(double %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %41

12:                                               ; preds = %7
  %13 = load double, double* %3, align 8
  %14 = fcmp olt double %13, 0.000000e+00
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load double, double* %3, align 8
  %17 = fneg double %16
  %18 = call double @llvm.floor.f64(double %17)
  %19 = fneg double %18
  br label %23

20:                                               ; preds = %12
  %21 = load double, double* %3, align 8
  %22 = call double @llvm.floor.f64(double %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi double [ %19, %15 ], [ %22, %20 ]
  store double %24, double* %3, align 8
  %25 = load double, double* %3, align 8
  %26 = load double, double* @INT_MIN, align 8
  %27 = fcmp olt double %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load double, double* @INT_MIN, align 8
  %30 = fptosi double %29 to i32
  store i32 %30, i32* %2, align 4
  br label %41

31:                                               ; preds = %23
  %32 = load double, double* %3, align 8
  %33 = load double, double* @INT_MAX, align 8
  %34 = fcmp ogt double %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load double, double* @INT_MAX, align 8
  %37 = fptosi double %36 to i32
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %31
  %39 = load double, double* %3, align 8
  %40 = fptosi double %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %35, %28, %11, %6
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @isnan(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
