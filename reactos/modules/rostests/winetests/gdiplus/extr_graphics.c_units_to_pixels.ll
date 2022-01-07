; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_units_to_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_units_to_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@point_per_inch = common dso_local global double 0.000000e+00, align 8
@mm_per_inch = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unsupported unit: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, i32, double)* @units_to_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @units_to_pixels(double %0, i32 %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store double %0, double* %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %32 [
    i32 129, label %9
    i32 133, label %9
    i32 128, label %11
    i32 131, label %17
    i32 132, label %21
    i32 130, label %26
  ]

9:                                                ; preds = %3, %3
  %10 = load double, double* %5, align 8
  store double %10, double* %4, align 8
  br label %35

11:                                               ; preds = %3
  %12 = load double, double* %5, align 8
  %13 = load double, double* %7, align 8
  %14 = fmul double %12, %13
  %15 = load double, double* @point_per_inch, align 8
  %16 = fdiv double %14, %15
  store double %16, double* %4, align 8
  br label %35

17:                                               ; preds = %3
  %18 = load double, double* %5, align 8
  %19 = load double, double* %7, align 8
  %20 = fmul double %18, %19
  store double %20, double* %4, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load double, double* %5, align 8
  %23 = load double, double* %7, align 8
  %24 = fmul double %22, %23
  %25 = fdiv double %24, 3.000000e+02
  store double %25, double* %4, align 8
  br label %35

26:                                               ; preds = %3
  %27 = load double, double* %5, align 8
  %28 = load double, double* %7, align 8
  %29 = fmul double %27, %28
  %30 = load double, double* @mm_per_inch, align 8
  %31 = fdiv double %29, %30
  store double %31, double* %4, align 8
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ok(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  store double 0.000000e+00, double* %4, align 8
  br label %35

35:                                               ; preds = %32, %26, %21, %17, %11, %9
  %36 = load double, double* %4, align 8
  ret double %36
}

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
