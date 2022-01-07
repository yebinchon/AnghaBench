; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_measured_extra_space.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_measured_extra_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double }

@test_measured_extra_space.tahomaW = internal constant [7 x i8] c"Tahoma\00", align 1
@test_measured_extra_space.string = internal constant [2 x i8] c"WW", align 1
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FontStyleRegular = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_measured_extra_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_measured_extra_space() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = load i32, i32* @LANG_NEUTRAL, align 4
  %16 = call i32 @GdipCreateStringFormat(i32 0, i32 %15, i32** %1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = call i32 @GdipCreateFontFamilyFromName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_measured_extra_space.tahomaW, i64 0, i64 0), i32* null, i32** %4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @Ok, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @GdipCreateFromHDC(i32 %25, i32** %3)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @Ok, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @GdipGetDpiX(i32* %30, double* %14)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  store i32 3, i32* %8, align 4
  br label %35

35:                                               ; preds = %104, %0
  %36 = load i32, i32* %8, align 4
  %37 = icmp sle i32 %36, 6
  br i1 %37, label %38, label %107

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @FontStyleRegular, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @GdipCreateFont(i32* %39, double 1.234000e+03, i32 %40, i32 %41, i32** %5)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @GdipGetFontSize(i32* %46, double* %13)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @Ok, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = load double, double* %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load double, double* %14, align 8
  %54 = call double @units_to_pixels(double %51, i32 %52, double %53)
  store double %54, double* %13, align 8
  store i32 2, i32* %7, align 4
  br label %55

55:                                               ; preds = %98, %38
  %56 = load i32, i32* %7, align 4
  %57 = icmp sle i32 %56, 6
  br i1 %57, label %58, label %101

58:                                               ; preds = %55
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @GdipSetPageUnit(i32* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @Ok, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @expect(i32 %62, i32 %63)
  %65 = call i32 @set_rect_empty(%struct.TYPE_5__* %11)
  %66 = call i32 @set_rect_empty(%struct.TYPE_5__* %9)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @GdipMeasureString(i32* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_measured_extra_space.string, i64 0, i64 0), i32 1, i32* %68, %struct.TYPE_5__* %11, i32* %69, %struct.TYPE_5__* %9, i32* null, i32* null)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @Ok, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  %74 = call i32 @set_rect_empty(%struct.TYPE_5__* %11)
  %75 = call i32 @set_rect_empty(%struct.TYPE_5__* %10)
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @GdipMeasureString(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_measured_extra_space.string, i64 0, i64 0), i32 2, i32* %77, %struct.TYPE_5__* %11, i32* %78, %struct.TYPE_5__* %10, i32* null, i32* null)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @Ok, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @expect(i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = fdiv double %86, 2.000000e+00
  %88 = fsub double %84, %87
  %89 = load i32, i32* %7, align 4
  %90 = load double, double* %14, align 8
  %91 = call double @units_to_pixels(double %88, i32 %89, double %90)
  store double %91, double* %12, align 8
  %92 = load double, double* %13, align 8
  %93 = fdiv double %92, 6.000000e+00
  %94 = load double, double* %12, align 8
  %95 = load double, double* %13, align 8
  %96 = fdiv double %95, 1.000000e+02
  %97 = call i32 @expectf_(double %93, double %94, double %96)
  br label %98

98:                                               ; preds = %58
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %55

101:                                              ; preds = %55
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @GdipDeleteFont(i32* %102)
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %35

107:                                              ; preds = %35
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @GdipDeleteGraphics(i32* %108)
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @DeleteDC(i32 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @GdipDeleteFontFamily(i32* %112)
  %114 = load i32*, i32** %1, align 8
  %115 = call i32 @GdipDeleteStringFormat(i32* %114)
  ret void
}

declare dso_local i32 @GdipCreateStringFormat(i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateFontFamilyFromName(i8*, i32*, i32**) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @GdipGetDpiX(i32*, double*) #1

declare dso_local i32 @GdipCreateFont(i32*, double, i32, i32, i32**) #1

declare dso_local i32 @GdipGetFontSize(i32*, double*) #1

declare dso_local double @units_to_pixels(double, i32, double) #1

declare dso_local i32 @GdipSetPageUnit(i32*, i32) #1

declare dso_local i32 @set_rect_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @GdipMeasureString(i32*, i8*, i32, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @expectf_(double, double, double) #1

declare dso_local i32 @GdipDeleteFont(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipDeleteFontFamily(i32*) #1

declare dso_local i32 @GdipDeleteStringFormat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
