; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtnum.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, double)* @fmtnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtnum(i32* %0, i32** %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca double, align 8
  %7 = alloca [40 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* %6, align 8
  %9 = call i64 @isnan(double %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32**, i32*** %5, align 8
  %14 = call i32 @js_puts(i32* %12, i32** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %40

15:                                               ; preds = %3
  %16 = load double, double* %6, align 8
  %17 = call i64 @isinf(double %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32**, i32*** %5, align 8
  %22 = call i32 @js_puts(i32* %20, i32** %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %39

23:                                               ; preds = %15
  %24 = load double, double* %6, align 8
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = load i32**, i32*** %5, align 8
  %29 = call i32 @js_puts(i32* %27, i32** %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %38

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %35 = load double, double* %6, align 8
  %36 = call i8* @jsV_numbertostring(i32* %33, i8* %34, double %35)
  %37 = call i32 @js_puts(i32* %31, i32** %32, i8* %36)
  br label %38

38:                                               ; preds = %30, %26
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39, %11
  ret void
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @js_puts(i32*, i32**, i8*) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i8* @jsV_numbertostring(i32*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
