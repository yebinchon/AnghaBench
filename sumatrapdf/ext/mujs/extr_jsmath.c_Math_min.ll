; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_Math_min.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_Math_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Math_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Math_min(i32* %0) #0 {
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
  store double %9, double* %5, align 8
  store i32 1, i32* %3, align 4
  br label %10

10:                                               ; preds = %47, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call double @js_tonumber(i32* %15, i32 %16)
  store double %17, double* %6, align 8
  %18 = load double, double* %6, align 8
  %19 = call i64 @isnan(double %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load double, double* %6, align 8
  store double %22, double* %5, align 8
  br label %50

23:                                               ; preds = %14
  %24 = load double, double* %5, align 8
  %25 = call i64 @signbit(double %24)
  %26 = load double, double* %6, align 8
  %27 = call i64 @signbit(double %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load double, double* %5, align 8
  %31 = load double, double* %6, align 8
  %32 = fcmp olt double %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load double, double* %5, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load double, double* %6, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi double [ %34, %33 ], [ %36, %35 ]
  store double %38, double* %5, align 8
  br label %46

39:                                               ; preds = %23
  %40 = load double, double* %6, align 8
  %41 = call i64 @signbit(double %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load double, double* %6, align 8
  store double %44, double* %5, align 8
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45, %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %10

50:                                               ; preds = %21, %10
  %51 = load i32*, i32** %2, align 8
  %52 = load double, double* %5, align 8
  %53 = call i32 @js_pushnumber(i32* %51, double %52)
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
