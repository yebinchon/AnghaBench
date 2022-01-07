; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_getblend.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_getblend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getblend_ptf = common dso_local global i32 0, align 4
@WrapModeClamp = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getblend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getblend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [4 x double], align 16
  %4 = alloca [4 x double], align 16
  %5 = load i32, i32* @getblend_ptf, align 4
  %6 = load i32, i32* @WrapModeClamp, align 4
  %7 = call i32 @GdipCreatePathGradient(i32 %5, i32 2, i32 %6, i32** %2)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @Ok, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @expect(i32 %8, i32 %9)
  %11 = call i32 @GdipGetPathGradientBlend(i32* null, double* null, double* null, i32 -1)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @InvalidParameter, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @GdipGetPathGradientBlend(i32* %15, double* null, double* null, i32 -1)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @InvalidParameter, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  %21 = call i32 @GdipGetPathGradientBlend(i32* null, double* %20, double* null, i32 -1)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @InvalidParameter, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %26 = call i32 @GdipGetPathGradientBlend(i32* null, double* null, double* %25, i32 -1)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @InvalidParameter, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = call i32 @GdipGetPathGradientBlend(i32* null, double* null, double* null, i32 1)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @InvalidParameter, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  store double 0x41EBD5B7DDE00000, double* %34, align 16
  %35 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  store double 0x41EBD5B7DDE00000, double* %35, align 16
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  %38 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %39 = call i32 @GdipGetPathGradientBlend(i32* %36, double* %37, double* %38, i32 1)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @Ok, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  %44 = load double, double* %43, align 16
  %45 = call i32 @expectf(double 1.000000e+00, double %44)
  %46 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %47 = load double, double* %46, align 16
  %48 = call i32 @expectf(double 0x41EBD5B7DDE00000, double %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @GdipDeleteBrush(i32* %49)
  ret void
}

declare dso_local i32 @GdipCreatePathGradient(i32, i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetPathGradientBlend(i32*, double*, double*, i32) #1

declare dso_local i32 @expectf(double, double) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
