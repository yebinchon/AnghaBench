; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_Math_pow.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_Math_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Math_pow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Math_pow(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call double @js_tonumber(i32* %5, i32 1)
  store double %6, double* %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call double @js_tonumber(i32* %7, i32 2)
  store double %8, double* %4, align 8
  %9 = load double, double* %4, align 8
  %10 = call i32 @isfinite(double %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load double, double* %3, align 8
  %14 = call i32 @fabs(double %13)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @NAN, align 4
  %19 = call i32 @js_pushnumber(i32* %17, i32 %18)
  br label %26

20:                                               ; preds = %12, %1
  %21 = load i32*, i32** %2, align 8
  %22 = load double, double* %3, align 8
  %23 = load double, double* %4, align 8
  %24 = call i32 @pow(double %22, double %23)
  %25 = call i32 @js_pushnumber(i32* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %16
  ret void
}

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local i32 @isfinite(double) #1

declare dso_local i32 @fabs(double) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
