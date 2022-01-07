; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_keypress.c_typeStringDelayed.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_keypress.c_typeStringDelayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typeStringDelayed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = uitofp i32 %7 to double
  %9 = fdiv double %8, 6.000000e+01
  store double %9, double* %5, align 8
  %10 = load double, double* %5, align 8
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %16

13:                                               ; preds = %2
  %14 = load double, double* %5, align 8
  %15 = fdiv double 1.000000e+03, %14
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi double [ 0.000000e+00, %12 ], [ %15, %13 ]
  store double %17, double* %6, align 8
  br label %18

18:                                               ; preds = %23, %16
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 @tapUniKey(i32 %27)
  %29 = load double, double* %6, align 8
  %30 = call i64 @DEADBEEF_UNIFORM(double 0.000000e+00, double 6.250000e+01)
  %31 = sitofp i64 %30 to double
  %32 = fadd double %29, %31
  %33 = fptosi double %32 to i64
  %34 = call i32 @microsleep(i64 %33)
  br label %18

35:                                               ; preds = %18
  ret void
}

declare dso_local i32 @tapUniKey(i32) #1

declare dso_local i32 @microsleep(i64) #1

declare dso_local i64 @DEADBEEF_UNIFORM(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
