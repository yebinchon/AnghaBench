; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_Dp_setUTCMinutes.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_Dp_setUTCMinutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Dp_setUTCMinutes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Dp_setUTCMinutes(i32* %0) #0 {
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
  %12 = load i32*, i32** %2, align 8
  %13 = call double @js_tonumber(i32* %12, i32 1)
  store double %13, double* %5, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load double, double* %3, align 8
  %16 = call i32 @SecFromTime(double %15)
  %17 = call double @js_optnumber(i32* %14, i32 2, i32 %16)
  store double %17, double* %6, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load double, double* %3, align 8
  %20 = call i32 @msFromTime(double %19)
  %21 = call double @js_optnumber(i32* %18, i32 3, i32 %20)
  store double %21, double* %7, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = load double, double* %3, align 8
  %24 = call i32 @Day(double %23)
  %25 = load double, double* %4, align 8
  %26 = load double, double* %5, align 8
  %27 = load double, double* %6, align 8
  %28 = load double, double* %7, align 8
  %29 = call i32 @MakeTime(double %25, double %26, double %27, double %28)
  %30 = call i32 @MakeDate(i32 %24, i32 %29)
  %31 = call i32 @js_setdate(i32* %22, i32 0, i32 %30)
  ret void
}

declare dso_local double @js_todate(i32*, i32) #1

declare dso_local double @HourFromTime(double) #1

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local double @js_optnumber(i32*, i32, i32) #1

declare dso_local i32 @SecFromTime(double) #1

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
