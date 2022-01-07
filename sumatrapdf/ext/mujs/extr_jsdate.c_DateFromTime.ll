; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_DateFromTime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_DateFromTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @DateFromTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DateFromTime(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = call i32 @DayWithinYear(double %6)
  store i32 %7, i32* %4, align 4
  %8 = load double, double* %3, align 8
  %9 = call i32 @InLeapYear(double %8)
  store i32 %9, i32* %5, align 4
  %10 = load double, double* %3, align 8
  %11 = call i32 @MonthFromTime(double %10)
  switch i32 %11, label %63 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %18
    i32 3, label %23
    i32 4, label %28
    i32 5, label %33
    i32 6, label %38
    i32 7, label %43
    i32 8, label %48
    i32 9, label %53
    i32 10, label %58
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 30
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 58
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 89
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 119
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 150
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %2, align 4
  br label %68

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 180
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 211
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %1
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 242
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %2, align 4
  br label %68

53:                                               ; preds = %1
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 272
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %2, align 4
  br label %68

58:                                               ; preds = %1
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 303
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %1
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, 333
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %15, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @DayWithinYear(double) #1

declare dso_local i32 @InLeapYear(double) #1

declare dso_local i32 @MonthFromTime(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
