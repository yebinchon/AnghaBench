; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLabInputGray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLabInputGray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_GRAY_8 = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckLabInputGray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckLabInputGray() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32* (...) @Create_GrayLab()
  store i32* %5, i32** %2, align 8
  %6 = call i32 (...) @DbgThread()
  %7 = call i32* @cmsCreateLab4Profile(i32 %6, i32* null)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %0
  store i32 0, i32* %1, align 4
  br label %51

14:                                               ; preds = %10
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @TYPE_GRAY_8, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @TYPE_Lab_DBL, align 4
  %20 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %21 = call i32 @cmsCreateTransform(i32 %15, i32* %16, i32 %17, i32* %18, i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @DbgThread()
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @cmsCloseProfile(i32 %22, i32* %23)
  %25 = call i32 (...) @DbgThread()
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @cmsCloseProfile(i32 %25, i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @CheckGray(i32 %28, i32 0, double 0.000000e+00)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %51

32:                                               ; preds = %14
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CheckGray(i32 %33, i32 125, double 4.901900e+01)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %51

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CheckGray(i32 %38, i32 200, double 0x40539B95810624DD)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @CheckGray(i32 %43, i32 255, double 1.000000e+02)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %51

47:                                               ; preds = %42
  %48 = call i32 (...) @DbgThread()
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @cmsDeleteTransform(i32 %48, i32 %49)
  store i32 1, i32* %1, align 4
  br label %51

51:                                               ; preds = %47, %46, %41, %36, %31, %13
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32* @Create_GrayLab(...) #1

declare dso_local i32* @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32 @CheckGray(i32, i32, double) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
