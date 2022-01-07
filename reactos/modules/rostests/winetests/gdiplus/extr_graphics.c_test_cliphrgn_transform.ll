; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_cliphrgn_transform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_cliphrgn_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@CombineModeReplace = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cliphrgn_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cliphrgn_transform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @hwnd, align 4
  %8 = call i32 @GetDC(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @SetViewportOrgEx(i32 %9, i32 10, i32 10, i32* null)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @GdipCreateFromHDC(i32 %11, i32** %3)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = call i32 @CreateRectRgn(i32 0, i32 0, i32 100, i32 100)
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CombineModeReplace, align 4
  %20 = call i32 @GdipSetClipHrgn(i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @Ok, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @GdipGetVisibleClipBounds(i32* %24, %struct.TYPE_3__* %5)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* @Ok, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @expect(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @expectf(double -1.000000e+01, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @expectf(double -1.000000e+01, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @expectf(double 1.000000e+02, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @expectf(double 1.000000e+02, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @GdipIsVisiblePoint(i32* %41, i32 95, i32 95, i32* %6)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @GdipIsVisiblePoint(i32* %49, i32 -5, i32 -5, i32* %6)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @DeleteObject(i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @GdipDeleteGraphics(i32* %59)
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @SetViewportOrgEx(i32 %61, i32 0, i32 0, i32* null)
  %63 = load i32, i32* @hwnd, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @ReleaseDC(i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SetViewportOrgEx(i32, i32, i32, i32*) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @GdipSetClipHrgn(i32*, i32, i32) #1

declare dso_local i32 @GdipGetVisibleClipBounds(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @GdipIsVisiblePoint(i32*, i32, i32, i32*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
