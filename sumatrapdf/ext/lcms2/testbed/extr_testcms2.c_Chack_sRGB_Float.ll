; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Chack_sRGB_Float.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Chack_sRGB_Float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_RGB_FLT = common dso_local global i32 0, align 4
@TYPE_XYZ_DBL = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@MaxErr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Chack_sRGB_Float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Chack_sRGB_Float() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @DbgThread()
  %8 = call i32 @cmsCreate_sRGBProfile(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = call i32 (...) @DbgThread()
  %10 = call i32 @cmsCreateXYZProfile(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = call i32 (...) @DbgThread()
  %12 = call i32 @cmsCreateLab4Profile(i32 %11, i32* null)
  store i32 %12, i32* %3, align 4
  %13 = call i32 (...) @DbgThread()
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @TYPE_RGB_FLT, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @TYPE_XYZ_DBL, align 4
  %18 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %19 = call i32 @cmsCreateTransform(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = call i32 (...) @DbgThread()
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @TYPE_RGB_FLT, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @TYPE_Lab_DBL, align 4
  %25 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %26 = call i32 @cmsCreateTransform(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = call i32 (...) @DbgThread()
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @cmsCloseProfile(i32 %27, i32 %28)
  %30 = call i32 (...) @DbgThread()
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @cmsCloseProfile(i32 %30, i32 %31)
  %33 = call i32 (...) @DbgThread()
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @cmsCloseProfile(i32 %33, i32 %34)
  store i64 0, i64* @MaxErr, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @CheckOneRGB_f(i32 %36, i32 1, i32 1, i32 1, double 2.927000e-04, double 3.035000e-04, double 2.500000e-04, double 1.000000e-04)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CheckOneRGB_f(i32 %38, i32 127, i32 127, i32 127, double 0x3FCA31692E97C300, double 2.122300e-01, double 1.750690e-01, double 1.000000e-04)
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @CheckOneRGB_f(i32 %42, i32 12, i32 13, i32 15, double 3.836400e-03, double 3.992800e-03, double 3.853000e-03, double 1.000000e-04)
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @CheckOneRGB_f(i32 %46, i32 128, i32 0, i32 0, double 0x3FB81882ADC4C9C9, double 4.802560e-02, double 3.005000e-03, double 1.000000e-04)
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @CheckOneRGB_f(i32 %50, i32 190, i32 25, i32 210, double 0x3FD482674DECF2DD, double 0x3FC48E4C5E7D63D9, double 4.682130e-01, double 1.000000e-04)
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @CheckOneRGB_f(i32 %54, i32 1, i32 1, i32 1, double 0x3FD18C1475D8CA31, double 0.000000e+00, double 0.000000e+00, double 1.000000e-02)
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @CheckOneRGB_f(i32 %58, i32 127, i32 127, i32 127, double 0x404A98ACE24BBA13, double 0.000000e+00, double 0.000000e+00, double 1.000000e-02)
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @CheckOneRGB_f(i32 %62, i32 190, i32 25, i32 210, double 0x404786AC647778DD, double 0x4052A432F4491299, double 0xC04C710F1F57B41C, double 1.000000e-02)
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @CheckOneRGB_f(i32 %66, i32 128, i32 0, i32 0, double 0x403A2A29D8409E56, double 0x40483D34B51372A4, double 0x4043B81FD3DADE08, double 1.000000e-02)
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = call i32 (...) @DbgThread()
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @cmsDeleteTransform(i32 %70, i32 %71)
  %73 = call i32 (...) @DbgThread()
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @cmsDeleteTransform(i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateXYZProfile(i32) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @CheckOneRGB_f(i32, i32, i32, i32, double, double, double, double) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
