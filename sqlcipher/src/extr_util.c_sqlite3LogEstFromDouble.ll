; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3LogEstFromDouble.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3LogEstFromDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3LogEstFromDouble(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = call i32 @assert(i32 0)
  %7 = load double, double* %3, align 8
  %8 = fcmp ole double %7, 1.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = fcmp ole double %11, 2.000000e+09
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load double, double* %3, align 8
  %15 = fptosi double %14 to i32
  %16 = call i32 @sqlite3LogEst(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %10
  %18 = call i32 @memcpy(i32* %4, double* %3, i32 8)
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 52
  %21 = sub nsw i32 %20, 1022
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 10
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %13, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3LogEst(i32) #1

declare dso_local i32 @memcpy(i32*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
