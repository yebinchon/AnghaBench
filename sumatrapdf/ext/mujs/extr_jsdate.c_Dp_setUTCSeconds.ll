; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_Dp_setUTCSeconds.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_Dp_setUTCSeconds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Dp_setUTCSeconds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Dp_setUTCSeconds(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call double @js_todate(i32* %8, i32 0)
  store double %9, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = call double @HourFromTime(double %10)
  store double %11, double* %4, align 8
  %12 = load double, double* %3, align 8
  %13 = call double @MinFromTime(double %12)
  store double %13, double* %5, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call double @js_tonumber(i32* %14, i32 1)
  store double %15, double* %6, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load double, double* %3, align 8
  %18 = call i32 @msFromTime(double %17)
  %19 = call double @js_optnumber(i32* %16, i32 2, i32 %18)
  store double %19, double* %7, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load double, double* %3, align 8
  %22 = call i32 @Day(double %21)
  %23 = load double, double* %4, align 8
  %24 = load double, double* %5, align 8
  %25 = load double, double* %6, align 8
  %26 = load double, double* %7, align 8
  %27 = call i32 @MakeTime(double %23, double %24, double %25, double %26)
  %28 = call i32 @MakeDate(i32 %22, i32 %27)
  %29 = call i32 @js_setdate(i32* %20, i32 0, i32 %28)
  ret void
}

declare dso_local double @js_todate(i32*, i32) #1

declare dso_local double @HourFromTime(double) #1

declare dso_local double @MinFromTime(double) #1

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local double @js_optnumber(i32*, i32, i32) #1

declare dso_local i32 @msFromTime(double) #1

declare dso_local i32 @js_setdate(i32*, i32, i32) #1

declare dso_local i32 @MakeDate(i32, i32) #1

declare dso_local i32 @Day(double) #1

declare dso_local i32 @MakeTime(double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
