; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFixedPoint15_16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFixedPoint15_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckFixedPoint15_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckFixedPoint15_16() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @TestSingleFixed15_16(double 1.000000e+00)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %46

5:                                                ; preds = %0
  %6 = call i32 @TestSingleFixed15_16(double 2.000000e+00)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store i32 0, i32* %1, align 4
  br label %46

9:                                                ; preds = %5
  %10 = call i32 @TestSingleFixed15_16(double 1.234560e+00)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %46

13:                                               ; preds = %9
  %14 = call i32 @TestSingleFixed15_16(double 9.999900e-01)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %46

17:                                               ; preds = %13
  %18 = call i32 @TestSingleFixed15_16(double 0x3FBF9ADD3746F65F)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %46

21:                                               ; preds = %17
  %22 = call i32 @TestSingleFixed15_16(double -1.000000e+00)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %46

25:                                               ; preds = %21
  %26 = call i32 @TestSingleFixed15_16(double -2.000000e+00)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %46

29:                                               ; preds = %25
  %30 = call i32 @TestSingleFixed15_16(double -1.234560e+00)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %46

33:                                               ; preds = %29
  %34 = call i32 @TestSingleFixed15_16(double 0xBFF1F9ADD3746F66)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %46

37:                                               ; preds = %33
  %38 = call i32 @TestSingleFixed15_16(double 0x40DFFFC7E6B74DD2)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %46

41:                                               ; preds = %37
  %42 = call i32 @TestSingleFixed15_16(double 0xC0DFFFC7E6B74DD2)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %46

45:                                               ; preds = %41
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %4
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @TestSingleFixed15_16(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
