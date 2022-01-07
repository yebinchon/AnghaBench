; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THLogAdd.c_THLogSub.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THLogAdd.c_THLogSub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"LogSub: log_a (%f) should be greater than log_b (%f)\00", align 1
@THLogZero = common dso_local global double 0.000000e+00, align 8
@MINUS_LOG_THRESHOLD = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @THLogSub(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %4, align 8
  %8 = load double, double* %5, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  %12 = load double, double* %5, align 8
  %13 = call i32 (i8*, double, double, ...) @THError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), double %11, double %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load double, double* %5, align 8
  %16 = load double, double* %4, align 8
  %17 = fsub double %15, %16
  store double %17, double* %6, align 8
  %18 = load double, double* %4, align 8
  %19 = load double, double* %5, align 8
  %20 = fcmp oeq double %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load double, double* @THLogZero, align 8
  store double %22, double* %3, align 8
  br label %36

23:                                               ; preds = %14
  %24 = load double, double* %6, align 8
  %25 = load double, double* @MINUS_LOG_THRESHOLD, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load double, double* %4, align 8
  store double %28, double* %3, align 8
  br label %36

29:                                               ; preds = %23
  %30 = load double, double* %4, align 8
  %31 = load double, double* %6, align 8
  %32 = call i32 @exp(double %31)
  %33 = sub nsw i32 0, %32
  %34 = call double @log1p(i32 %33)
  %35 = fadd double %30, %34
  store double %35, double* %3, align 8
  br label %36

36:                                               ; preds = %29, %27, %21
  %37 = load double, double* %3, align 8
  ret double %37
}

declare dso_local i32 @THError(i8*, double, double, ...) #1

declare dso_local double @log1p(i32) #1

declare dso_local i32 @exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
