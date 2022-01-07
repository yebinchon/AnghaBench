; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_D_UTC.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_D_UTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @D_UTC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @D_UTC(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call double @js_tonumber(i32* %11, i32 1)
  store double %12, double* %3, align 8
  %13 = load double, double* %3, align 8
  %14 = fcmp olt double %13, 1.000000e+02
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load double, double* %3, align 8
  %17 = fadd double %16, 1.900000e+03
  store double %17, double* %3, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32*, i32** %2, align 8
  %20 = call double @js_tonumber(i32* %19, i32 2)
  store double %20, double* %4, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call double @js_optnumber(i32* %21, i32 3, i32 1)
  store double %22, double* %5, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call double @js_optnumber(i32* %23, i32 4, i32 0)
  store double %24, double* %6, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call double @js_optnumber(i32* %25, i32 5, i32 0)
  store double %26, double* %7, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call double @js_optnumber(i32* %27, i32 6, i32 0)
  store double %28, double* %8, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call double @js_optnumber(i32* %29, i32 7, i32 0)
  store double %30, double* %9, align 8
  %31 = load double, double* %3, align 8
  %32 = load double, double* %4, align 8
  %33 = load double, double* %5, align 8
  %34 = call i32 @MakeDay(double %31, double %32, double %33)
  %35 = load double, double* %6, align 8
  %36 = load double, double* %7, align 8
  %37 = load double, double* %8, align 8
  %38 = load double, double* %9, align 8
  %39 = call i32 @MakeTime(double %35, double %36, double %37, double %38)
  %40 = call double @MakeDate(i32 %34, i32 %39)
  store double %40, double* %10, align 8
  %41 = load double, double* %10, align 8
  %42 = call double @TimeClip(double %41)
  store double %42, double* %10, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = load double, double* %10, align 8
  %45 = call i32 @js_pushnumber(i32* %43, double %44)
  ret void
}

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local double @js_optnumber(i32*, i32, i32) #1

declare dso_local double @MakeDate(i32, i32) #1

declare dso_local i32 @MakeDay(double, double, double) #1

declare dso_local i32 @MakeTime(double, double, double, double) #1

declare dso_local double @TimeClip(double) #1

declare dso_local i32 @js_pushnumber(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
