; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_customlinecap.c_test_scale.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_customlinecap.c_test_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@LineCapFlat = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_scale() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FillModeAlternate, align 4
  %6 = call i32 @GdipCreatePath(i32 %5, i32** %2)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @Ok, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @GdipAddPathRectangle(i32* %10, double 5.000000e+00, double 5.000000e+00, double 1.000000e+01, double 1.000000e+01)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @LineCapFlat, align 4
  %17 = call i32 @GdipCreateCustomLineCap(i32* null, i32* %15, i32 %16, double 0.000000e+00, i32** %1)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @Ok, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @expect(i32 %18, i32 %19)
  %21 = call i32 @GdipGetCustomLineCapWidthScale(i32* null, i64* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @InvalidParameter, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = call i32 @GdipGetCustomLineCapWidthScale(i32* null, i64* %3)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @InvalidParameter, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @expect(i32 %26, i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @GdipGetCustomLineCapWidthScale(i32* %29, i64* null)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @InvalidParameter, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = call i32 @GdipSetCustomLineCapWidthScale(i32* null, double 2.000000e+00)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @InvalidParameter, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  store i64 3735928559, i64* %3, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @GdipGetCustomLineCapWidthScale(i32* %38, i64* %3)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @Ok, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @expectf(double 1.000000e+00, i64 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @GdipSetCustomLineCapWidthScale(i32* %45, double 2.500000e+00)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @Ok, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  store i64 3735928559, i64* %3, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @GdipGetCustomLineCapWidthScale(i32* %50, i64* %3)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @Ok, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @expect(i32 %52, i32 %53)
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @expectf(double 2.500000e+00, i64 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @GdipSetCustomLineCapWidthScale(i32* %57, double 4.200000e+01)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @Ok, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  store i64 3735928559, i64* %3, align 8
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @GdipGetCustomLineCapWidthScale(i32* %62, i64* %3)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @Ok, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @expectf(double 4.200000e+01, i64 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @GdipSetCustomLineCapWidthScale(i32* %69, double 3.000000e+03)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @Ok, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  store i64 3735928559, i64* %3, align 8
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @GdipGetCustomLineCapWidthScale(i32* %74, i64* %3)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @Ok, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @expect(i32 %76, i32 %77)
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @expectf(double 3.000000e+03, i64 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @GdipSetCustomLineCapWidthScale(i32* %81, double 0.000000e+00)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  store i64 3735928559, i64* %3, align 8
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @GdipGetCustomLineCapWidthScale(i32* %86, i64* %3)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* @Ok, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @expect(i32 %88, i32 %89)
  %91 = load i64, i64* %3, align 8
  %92 = call i32 @expectf(double 0.000000e+00, i64 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @GdipDeleteCustomLineCap(i32* %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @GdipDeletePath(i32* %95)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCreateCustomLineCap(i32*, i32*, i32, double, i32**) #1

declare dso_local i32 @GdipGetCustomLineCapWidthScale(i32*, i64*) #1

declare dso_local i32 @GdipSetCustomLineCapWidthScale(i32*, double) #1

declare dso_local i32 @expectf(double, i64) #1

declare dso_local i32 @GdipDeleteCustomLineCap(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
