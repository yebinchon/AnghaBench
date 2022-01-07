; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_compare.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JS_HNUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @js_compare(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @JS_HNUMBER, align 4
  %10 = call i32 @js_toprimitive(i32* %8, i32 -2, i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @JS_HNUMBER, align 4
  %13 = call i32 @js_toprimitive(i32* %11, i32 -1, i32 %12)
  %14 = load i32*, i32** %5, align 8
  store i32 1, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @js_isstring(i32* %15, i32 -2)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @js_isstring(i32* %19, i32 -1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @js_tostring(i32* %23, i32 -2)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @js_tostring(i32* %25, i32 -1)
  %27 = call i32 @strcmp(i32 %24, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %18, %2
  %29 = load i32*, i32** %4, align 8
  %30 = call double @js_tonumber(i32* %29, i32 -2)
  store double %30, double* %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call double @js_tonumber(i32* %31, i32 -1)
  store double %32, double* %7, align 8
  %33 = load double, double* %6, align 8
  %34 = call i64 @isnan(double %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load double, double* %7, align 8
  %38 = call i64 @isnan(double %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %28
  %41 = load i32*, i32** %5, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load double, double* %6, align 8
  %44 = load double, double* %7, align 8
  %45 = fcmp olt double %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %53

47:                                               ; preds = %42
  %48 = load double, double* %6, align 8
  %49 = load double, double* %7, align 8
  %50 = fcmp ogt double %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  br label %53

53:                                               ; preds = %47, %46
  %54 = phi i32 [ -1, %46 ], [ %52, %47 ]
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @js_toprimitive(i32*, i32, i32) #1

declare dso_local i64 @js_isstring(i32*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @js_tostring(i32*, i32) #1

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
