; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_resolution.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@LOGPIXELSX = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_resolution() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 -1, i32* %4, align 4
  %8 = load i32, i32* @PixelFormat24bppRGB, align 4
  %9 = call i32 @GdipCreateBitmapFromScan0(i32 1, i32 1, i32 32, i32 %8, i32* null, i32** %2)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @Ok, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = call i32 @GdipGetImageHorizontalResolution(i32* null, i32* %4)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @InvalidParameter, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @GdipGetImageHorizontalResolution(i32* %17, i32* null)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @InvalidParameter, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = call i32 @GdipGetImageVerticalResolution(i32* null, i32* %4)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @InvalidParameter, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipGetImageVerticalResolution(i32* %26, i32* null)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = call i32 @GdipBitmapSetResolution(i32* null, i32 96, i32 96)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @InvalidParameter, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @GdipBitmapSetResolution(i32* %35, i32 0, i32 0)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* @InvalidParameter, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  %40 = call i32 @GetDC(i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @LOGPIXELSX, align 4
  %43 = call i32 @GetDeviceCaps(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @LOGPIXELSY, align 4
  %46 = call i32 @GetDeviceCaps(i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ReleaseDC(i32 0, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @GdipGetImageHorizontalResolution(i32* %49, i32* %4)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @expectf(i32 %54, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @GdipGetImageVerticalResolution(i32* %57, i32* %4)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* @Ok, align 4
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @expectf(i32 %62, i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @GdipGetImageGraphicsContext(i32* %65, i32** %3)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* @Ok, align 4
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @GdipGetDpiX(i32* %70, i32* %4)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* @Ok, align 4
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @expectf(i32 %75, i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @GdipGetDpiY(i32* %78, i32* %4)
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* @Ok, align 4
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @expect(i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @expectf(i32 %83, i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sitofp i32 %87 to double
  %89 = fmul double %88, 2.000000e+00
  %90 = fptosi double %89 to i32
  %91 = load i32, i32* %7, align 4
  %92 = sitofp i32 %91 to double
  %93 = fmul double %92, 3.000000e+00
  %94 = fptosi double %93 to i32
  %95 = call i32 @GdipBitmapSetResolution(i32* %86, i32 %90, i32 %94)
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* @Ok, align 4
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @expect(i32 %96, i32 %97)
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @GdipGetImageHorizontalResolution(i32* %99, i32* %4)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* @Ok, align 4
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @expect(i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = sitofp i32 %104 to double
  %106 = fmul double %105, 2.000000e+00
  %107 = fptosi double %106 to i32
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @expectf(i32 %107, i32 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 @GdipGetImageVerticalResolution(i32* %110, i32* %4)
  store i32 %111, i32* %1, align 4
  %112 = load i32, i32* @Ok, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @expect(i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = sitofp i32 %115 to double
  %117 = fmul double %116, 3.000000e+00
  %118 = fptosi double %117 to i32
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @expectf(i32 %118, i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @GdipGetDpiX(i32* %121, i32* %4)
  store i32 %122, i32* %1, align 4
  %123 = load i32, i32* @Ok, align 4
  %124 = load i32, i32* %1, align 4
  %125 = call i32 @expect(i32 %123, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @expectf(i32 %126, i32 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @GdipGetDpiY(i32* %129, i32* %4)
  store i32 %130, i32* %1, align 4
  %131 = load i32, i32* @Ok, align 4
  %132 = load i32, i32* %1, align 4
  %133 = call i32 @expect(i32 %131, i32 %132)
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @expectf(i32 %134, i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @GdipDeleteGraphics(i32* %137)
  store i32 %138, i32* %1, align 4
  %139 = load i32, i32* @Ok, align 4
  %140 = load i32, i32* %1, align 4
  %141 = call i32 @expect(i32 %139, i32 %140)
  %142 = load i32*, i32** %2, align 8
  %143 = call i32 @GdipGetImageGraphicsContext(i32* %142, i32** %3)
  store i32 %143, i32* %1, align 4
  %144 = load i32, i32* @Ok, align 4
  %145 = load i32, i32* %1, align 4
  %146 = call i32 @expect(i32 %144, i32 %145)
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @GdipGetDpiX(i32* %147, i32* %4)
  store i32 %148, i32* %1, align 4
  %149 = load i32, i32* @Ok, align 4
  %150 = load i32, i32* %1, align 4
  %151 = call i32 @expect(i32 %149, i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = sitofp i32 %152 to double
  %154 = fmul double %153, 2.000000e+00
  %155 = fptosi double %154 to i32
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @expectf(i32 %155, i32 %156)
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @GdipGetDpiY(i32* %158, i32* %4)
  store i32 %159, i32* %1, align 4
  %160 = load i32, i32* @Ok, align 4
  %161 = load i32, i32* %1, align 4
  %162 = call i32 @expect(i32 %160, i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = sitofp i32 %163 to double
  %165 = fmul double %164, 3.000000e+00
  %166 = fptosi double %165 to i32
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @expectf(i32 %166, i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @GdipDeleteGraphics(i32* %169)
  store i32 %170, i32* %1, align 4
  %171 = load i32, i32* @Ok, align 4
  %172 = load i32, i32* %1, align 4
  %173 = call i32 @expect(i32 %171, i32 %172)
  %174 = load i32*, i32** %2, align 8
  %175 = call i32 @GdipDisposeImage(i32* %174)
  store i32 %175, i32* %1, align 4
  %176 = load i32, i32* @Ok, align 4
  %177 = load i32, i32* %1, align 4
  %178 = call i32 @expect(i32 %176, i32 %177)
  ret void
}

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetImageHorizontalResolution(i32*, i32*) #1

declare dso_local i32 @GdipGetImageVerticalResolution(i32*, i32*) #1

declare dso_local i32 @GdipBitmapSetResolution(i32*, i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @expectf(i32, i32) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipGetDpiX(i32*, i32*) #1

declare dso_local i32 @GdipGetDpiY(i32*, i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
