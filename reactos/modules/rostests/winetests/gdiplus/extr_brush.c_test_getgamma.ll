; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_getgamma.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_getgamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double }

@WrapModeTile = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getgamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getgamma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store double 0.000000e+00, double* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store double 0.000000e+00, double* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 1.000000e+02, double* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 1.000000e+02, double* %9, align 8
  %10 = load i32, i32* @WrapModeTile, align 4
  %11 = call i32 @GdipCreateLineBrush(%struct.TYPE_4__* %3, %struct.TYPE_4__* %4, i32 -559038737, i32 -559038737, i32 %10, i32** %2)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = call i32 @GdipGetLineGammaCorrection(i32* null, i32* null)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @InvalidParameter, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GdipGetLineGammaCorrection(i32* %19, i32* null)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @InvalidParameter, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = call i32 @GdipGetLineGammaCorrection(i32* null, i32* %5)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @InvalidParameter, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @GdipDeleteBrush(i32* %28)
  ret void
}

declare dso_local i32 @GdipCreateLineBrush(%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetLineGammaCorrection(i32*, i32*) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
