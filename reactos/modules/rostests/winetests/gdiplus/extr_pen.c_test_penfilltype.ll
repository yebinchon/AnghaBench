; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_penfilltype.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_penfilltype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double }

@InvalidParameter = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@PenTypeSolidColor = common dso_local global i32 0, align 4
@WrapModeTile = common dso_local global i32 0, align 4
@PenTypeLinearGradient = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_penfilltype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_penfilltype() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @GdipGetPenFillType(i32* null, i32* null)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @InvalidParameter, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @expect(i32 %9, i32 %10)
  %12 = load i32, i32* @UnitPixel, align 4
  %13 = call i32 @GdipCreatePen1(i32 -65281, float 1.000000e+01, i32 %12, i32** %1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @GdipGetPenFillType(i32* %17, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @InvalidParameter, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @GdipGetPenFillType(i32* %22, i32* %7)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32, i32* @PenTypeSolidColor, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @GdipDeletePen(i32* %30)
  %32 = call i32 @GdipCreateSolidFill(i32 -65281, i32** %2)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @Ok, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @UnitPixel, align 4
  %38 = call i32 @GdipCreatePen2(i32* %36, float 1.000000e+01, i32 %37, i32** %1)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @Ok, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @GdipGetPenFillType(i32* %42, i32* %7)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @Ok, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32, i32* @PenTypeSolidColor, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @GdipDeletePen(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @GdipDeleteBrush(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store double 1.000000e+01, double* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store double 1.000000e+01, double* %57, align 8
  %58 = load i32, i32* @WrapModeTile, align 4
  %59 = call i32 @GdipCreateLineBrush(%struct.TYPE_4__* %4, %struct.TYPE_4__* %5, i32 -65281, i32 -65536, i32 %58, i32** %3)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @Ok, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @expect(i32 %60, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @UnitPixel, align 4
  %65 = call i32 @GdipCreatePen2(i32* %63, float 1.000000e+01, i32 %64, i32** %1)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @GdipGetPenFillType(i32* %69, i32* %7)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @Ok, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  %74 = load i32, i32* @PenTypeLinearGradient, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @expect(i32 %74, i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @GdipDeletePen(i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @GdipDeleteBrush(i32* %79)
  ret void
}

declare dso_local i32 @GdipGetPenFillType(i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreatePen1(i32, float, i32, i32**) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipCreatePen2(i32*, float, i32, i32**) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipCreateLineBrush(%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
