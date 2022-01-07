; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_excludeinfinite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_excludeinfinite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double, double, double }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@test_excludeinfinite.rect_exclude = internal constant %struct.TYPE_5__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00 }, align 8
@Ok = common dso_local global i32 0, align 4
@CombineModeExclude = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_excludeinfinite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_excludeinfinite() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x %struct.TYPE_6__], align 16
  %5 = alloca i32*, align 8
  store i32 -559038737, i32* %3, align 4
  %6 = call i32 @GdipCreateMatrix(i32** %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @Ok, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = call i32 @GdipCreateRegion(i32** %2)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @Ok, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @CombineModeExclude, align 4
  %16 = call i32 @GdipCombineRegionRect(i32* %14, %struct.TYPE_5__* @test_excludeinfinite.rect_exclude, i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @GdipGetRegionScansCount(i32* %20, i32* %3, i32* %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @Ok, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @expect(i32 4, i32 %26)
  store i32 4, i32* %3, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @GdipGetRegionScans(i32* %28, %struct.TYPE_6__* %29, i32* %3, i32* %30)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @expectf(double 0xC150000000000000, i32 %37)
  %39 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @expectf(double 0xC150000000000000, i32 %41)
  %43 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @expectf(double 0x4160000000000000, i32 %45)
  %47 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 16
  %50 = call i32 @expectf(double 0x4150000000000000, i32 %49)
  %51 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @expectf(double 0xC150000000000000, i32 %53)
  %55 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @expectf(double 0.000000e+00, i32 %57)
  %59 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @expectf(double 0x4150000000000000, i32 %61)
  %63 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 16
  %66 = call i32 @expectf(double 1.000000e+00, i32 %65)
  %67 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @expectf(double 1.000000e+00, i32 %69)
  %71 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @expectf(double 0.000000e+00, i32 %73)
  %75 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @expectf(double 0x414FFFFF80000000, i32 %77)
  %79 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 16
  %82 = call i32 @expectf(double 1.000000e+00, i32 %81)
  %83 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @expectf(double 0xC150000000000000, i32 %85)
  %87 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @expectf(double 1.000000e+00, i32 %89)
  %91 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @expectf(double 0x4160000000000000, i32 %93)
  %95 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 16
  %98 = call i32 @expectf(double 0x414FFFFF80000000, i32 %97)
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @GdipDeleteRegion(i32* %99)
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @GdipDeleteMatrix(i32* %101)
  ret void
}

declare dso_local i32 @GdipCreateMatrix(i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateRegion(i32**) #1

declare dso_local i32 @GdipCombineRegionRect(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @GdipGetRegionScansCount(i32*, i32*, i32*) #1

declare dso_local i32 @GdipGetRegionScans(i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
