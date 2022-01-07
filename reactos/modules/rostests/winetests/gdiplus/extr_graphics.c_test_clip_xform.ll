; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_clip_xform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_clip_xform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@CombineModeReplace = common dso_local global i32 0, align 4
@MatrixOrderAppend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_clip_xform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_clip_xform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.anon, align 4
  store i32* null, i32** %2, align 8
  %8 = load i32, i32* @hwnd, align 4
  %9 = call i32 @GetDC(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @GdipCreateFromHDC(i32 %10, i32** %2)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = call i32 @GdipCreateRegion(i32** %4)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @Ok, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GdipGraphicsClear(i32* %19, i32 -16777216)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @Ok, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @CombineModeReplace, align 4
  %26 = call i32 @GdipSetClipRect(i32* %24, i32 10, i32 10, i32 -10, i32 -10, i32 %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @Ok, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @GdipGetClip(i32* %30, i32* %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @Ok, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = bitcast %struct.anon* %7 to i32*
  %38 = call i32 @GdipGetRegionData(i32* %36, i32* %37, i32 36, i32* %6)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @Ok, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @expect(i32 36, i32 %42)
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @expect(i32 28, i32 %45)
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @expect(i32 0, i32 %48)
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @expect(i32 268435456, i32 %51)
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @expectf(double 0.000000e+00, i32 %54)
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @expectf(double 0.000000e+00, i32 %57)
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @expectf(double 1.000000e+01, i32 %60)
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @expectf(double 1.000000e+01, i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @GdipGraphicsClear(i32* %65, i32 -65536)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* @Ok, align 4
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @GetPixel(i32 %70, i32 5, i32 5)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @expect(i32 0, i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = load i32, i32* @MatrixOrderAppend, align 4
  %76 = call i32 @GdipScaleWorldTransform(i32* %74, double 2.000000e+00, double 2.000000e+00, i32 %75)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @GdipGraphicsClear(i32* %80, i32 -65536)
  store i32 %81, i32* %1, align 4
  %82 = load i32, i32* @Ok, align 4
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @expect(i32 %82, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @GetPixel(i32 %85, i32 5, i32 5)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @expect(i32 0, i32 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @GdipResetClip(i32* %89)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* @Ok, align 4
  %92 = load i32, i32* %1, align 4
  %93 = call i32 @expect(i32 %91, i32 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @GdipResetWorldTransform(i32* %94)
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* @Ok, align 4
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @expect(i32 %96, i32 %97)
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @GdipGraphicsClear(i32* %99, i32 -16777216)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* @Ok, align 4
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @expect(i32 %101, i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = load i32, i32* @MatrixOrderAppend, align 4
  %106 = call i32 @GdipScaleWorldTransform(i32* %104, double 2.000000e+00, double 2.000000e+00, i32 %105)
  store i32 %106, i32* %1, align 4
  %107 = load i32, i32* @Ok, align 4
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @expect(i32 %107, i32 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = load i32, i32* @CombineModeReplace, align 4
  %112 = call i32 @GdipSetClipRect(i32* %110, i32 5, i32 5, i32 -5, i32 -5, i32 %111)
  store i32 %112, i32* %1, align 4
  %113 = load i32, i32* @Ok, align 4
  %114 = load i32, i32* %1, align 4
  %115 = call i32 @expect(i32 %113, i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @GdipGetClip(i32* %116, i32* %117)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* @Ok, align 4
  %120 = load i32, i32* %1, align 4
  %121 = call i32 @expect(i32 %119, i32 %120)
  %122 = load i32*, i32** %4, align 8
  %123 = bitcast %struct.anon* %7 to i32*
  %124 = call i32 @GdipGetRegionData(i32* %122, i32* %123, i32 36, i32* %6)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* @Ok, align 4
  %126 = load i32, i32* %1, align 4
  %127 = call i32 @expect(i32 %125, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @expect(i32 36, i32 %128)
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @expect(i32 28, i32 %131)
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @expect(i32 0, i32 %134)
  %136 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @expect(i32 268435456, i32 %137)
  %139 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @expectf(double 0.000000e+00, i32 %140)
  %142 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @expectf(double 0.000000e+00, i32 %143)
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @expectf(double 5.000000e+00, i32 %146)
  %148 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @expectf(double 5.000000e+00, i32 %149)
  %151 = load i32*, i32** %2, align 8
  %152 = call i32 @GdipGraphicsClear(i32* %151, i32 -65536)
  store i32 %152, i32* %1, align 4
  %153 = load i32, i32* @Ok, align 4
  %154 = load i32, i32* %1, align 4
  %155 = call i32 @expect(i32 %153, i32 %154)
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @GetPixel(i32 %156, i32 5, i32 5)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @expect(i32 255, i32 %158)
  %160 = load i32*, i32** %2, align 8
  %161 = call i32 @GdipDeleteGraphics(i32* %160)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @GdipDeleteRegion(i32* %162)
  %164 = load i32, i32* @hwnd, align 4
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @ReleaseDC(i32 %164, i32 %165)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateRegion(i32**) #1

declare dso_local i32 @GdipGraphicsClear(i32*, i32) #1

declare dso_local i32 @GdipSetClipRect(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GdipGetClip(i32*, i32*) #1

declare dso_local i32 @GdipGetRegionData(i32*, i32*, i32, i32*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @GdipScaleWorldTransform(i32*, double, double, i32) #1

declare dso_local i32 @GdipResetClip(i32*) #1

declare dso_local i32 @GdipResetWorldTransform(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
