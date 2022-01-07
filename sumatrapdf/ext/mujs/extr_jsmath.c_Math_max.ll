; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_Math_max.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_Math_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Math_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Math_max(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @js_gettop(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load double, double* @INFINITY, align 8
  %10 = fneg double %9
  store double %10, double* %5, align 8
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %48, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call double @js_tonumber(i32* %16, i32 %17)
  store double %18, double* %6, align 8
  %19 = load double, double* %6, align 8
  %20 = call i64 @isnan(double %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load double, double* %6, align 8
  store double %23, double* %5, align 8
  br label %51

24:                                               ; preds = %15
  %25 = load double, double* %5, align 8
  %26 = call i64 @signbit(double %25)
  %27 = load double, double* %6, align 8
  %28 = call i64 @signbit(double %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load double, double* %5, align 8
  %32 = load double, double* %6, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load double, double* %5, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load double, double* %6, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi double [ %35, %34 ], [ %37, %36 ]
  store double %39, double* %5, align 8
  br label %47

40:                                               ; preds = %24
  %41 = load double, double* %5, align 8
  %42 = call i64 @signbit(double %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load double, double* %6, align 8
  store double %45, double* %5, align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %38
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %11

51:                                               ; preds = %22, %11
  %52 = load i32*, i32** %2, align 8
  %53 = load double, double* %5, align 8
  %54 = call i32 @js_pushnumber(i32* %52, double %53)
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @signbit(double) #1

declare dso_local i32 @js_pushnumber(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
