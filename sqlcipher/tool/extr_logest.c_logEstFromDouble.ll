; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_logest.c_logEstFromDouble.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_logest.c_logEstFromDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @logEstFromDouble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logEstFromDouble(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = call i32 @assert(i32 0)
  %7 = load double, double* %3, align 8
  %8 = fcmp ole double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -32768, i32* %2, align 4
  br label %49

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = fcmp olt double %11, 1.000000e-02
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load double, double* %3, align 8
  %15 = fdiv double 1.000000e+00, %14
  %16 = call i32 @logEstFromDouble(double %15)
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %10
  %19 = load double, double* %3, align 8
  %20 = fcmp olt double %19, 1.000000e+00
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load double, double* %3, align 8
  %23 = fmul double 1.000000e+02, %22
  %24 = call i32 @logEstFromDouble(double %23)
  %25 = sub nsw i32 %24, 66
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %18
  %27 = load double, double* %3, align 8
  %28 = fcmp olt double %27, 1.024000e+03
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load double, double* %3, align 8
  %31 = fmul double 1.024000e+03, %30
  %32 = fptosi double %31 to i32
  %33 = call i32 @logEstFromInteger(i32 %32)
  %34 = sub nsw i32 %33, 100
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %26
  %36 = load double, double* %3, align 8
  %37 = fcmp ole double %36, 2.000000e+09
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load double, double* %3, align 8
  %40 = fptosi double %39 to i32
  %41 = call i32 @logEstFromInteger(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %35
  %43 = call i32 @memcpy(i32* %4, double* %3, i32 8)
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 52
  %46 = sub nsw i32 %45, 1022
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 10
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %38, %29, %21, %13, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @logEstFromInteger(i32) #1

declare dso_local i32 @memcpy(i32*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
