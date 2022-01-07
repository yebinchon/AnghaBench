; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_get_set_clip.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_get_set_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

@hwnd = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@CombineModeReplace = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_set_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_set_clip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @hwnd, align 4
  %8 = call i32 @GetDC(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GdipCreateFromHDC(i32 %9, i32** %2)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @Ok, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store double 0.000000e+00, double* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store double 0.000000e+00, double* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store double 1.000000e+02, double* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store double 1.000000e+02, double* %17, align 8
  %18 = call i32 @GdipCreateRegionRect(%struct.TYPE_3__* %5, i32** %4)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @Ok, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = call i32 @GdipGetClip(i32* null, i32* null)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @InvalidParameter, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipGetClip(i32* %26, i32* null)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @GdipGetClip(i32* null, i32* %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @InvalidParameter, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32, i32* @CombineModeReplace, align 4
  %37 = call i32 @GdipSetClipRegion(i32* null, i32* null, i32 %36)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @InvalidParameter, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @CombineModeReplace, align 4
  %43 = call i32 @GdipSetClipRegion(i32* %41, i32* null, i32 %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @InvalidParameter, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32, i32* @CombineModeReplace, align 4
  %48 = call i32 @GdipSetClipPath(i32* null, i32* null, i32 %47)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* @InvalidParameter, align 4
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @expect(i32 %49, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @CombineModeReplace, align 4
  %54 = call i32 @GdipSetClipPath(i32* %52, i32* null, i32 %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* @InvalidParameter, align 4
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @GdipGetClip(i32* %59, i32* %60)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* @Ok, align 4
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @expect(i32 %62, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @GdipIsInfiniteRegion(i32* %65, i32* %66, i32* %6)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* @Ok, align 4
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @expect(i32 %68, i32 %69)
  %71 = load i32, i32* @TRUE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %6, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @GdipResetClip(i32* %75)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @GdipGetClip(i32* %80, i32* %81)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @GdipIsInfiniteRegion(i32* %86, i32* %87, i32* %6)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* @Ok, align 4
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @expect(i32 %89, i32 %90)
  %92 = load i32, i32* @TRUE, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @expect(i32 %92, i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @GdipSetEmpty(i32* %95)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* @Ok, align 4
  %98 = load i32, i32* %1, align 4
  %99 = call i32 @expect(i32 %97, i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @CombineModeReplace, align 4
  %103 = call i32 @GdipSetClipRegion(i32* %100, i32* %101, i32 %102)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* @Ok, align 4
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @expect(i32 %104, i32 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @GdipGetClip(i32* %107, i32* %108)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* @Ok, align 4
  %111 = load i32, i32* %1, align 4
  %112 = call i32 @expect(i32 %110, i32 %111)
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %6, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @GdipIsEmptyRegion(i32* %114, i32* %115, i32* %6)
  store i32 %116, i32* %1, align 4
  %117 = load i32, i32* @Ok, align 4
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @expect(i32 %117, i32 %118)
  %120 = load i32, i32* @TRUE, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @expect(i32 %120, i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @GdipResetClip(i32* %123)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* @Ok, align 4
  %126 = load i32, i32* %1, align 4
  %127 = call i32 @expect(i32 %125, i32 %126)
  %128 = load i32*, i32** %2, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @GdipGetClip(i32* %128, i32* %129)
  store i32 %130, i32* %1, align 4
  %131 = load i32, i32* @Ok, align 4
  %132 = load i32, i32* %1, align 4
  %133 = call i32 @expect(i32 %131, i32 %132)
  %134 = load i32, i32* @FALSE, align 4
  store i32 %134, i32* %6, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = load i32*, i32** %2, align 8
  %137 = call i32 @GdipIsInfiniteRegion(i32* %135, i32* %136, i32* %6)
  store i32 %137, i32* %1, align 4
  %138 = load i32, i32* @Ok, align 4
  %139 = load i32, i32* %1, align 4
  %140 = call i32 @expect(i32 %138, i32 %139)
  %141 = load i32, i32* @TRUE, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @expect(i32 %141, i32 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @GdipDeleteRegion(i32* %144)
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 @GdipDeleteGraphics(i32* %146)
  %148 = load i32, i32* @hwnd, align 4
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @ReleaseDC(i32 %148, i32 %149)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateRegionRect(%struct.TYPE_3__*, i32**) #1

declare dso_local i32 @GdipGetClip(i32*, i32*) #1

declare dso_local i32 @GdipSetClipRegion(i32*, i32*, i32) #1

declare dso_local i32 @GdipSetClipPath(i32*, i32*, i32) #1

declare dso_local i32 @GdipIsInfiniteRegion(i32*, i32*, i32*) #1

declare dso_local i32 @GdipResetClip(i32*) #1

declare dso_local i32 @GdipSetEmpty(i32*) #1

declare dso_local i32 @GdipIsEmptyRegion(i32*, i32*, i32*) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
