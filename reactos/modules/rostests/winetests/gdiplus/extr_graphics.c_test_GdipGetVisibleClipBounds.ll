; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipGetVisibleClipBounds.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipGetVisibleClipBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipGetVisibleClipBounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipGetVisibleClipBounds() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %6 = load i32, i32* @hwnd, align 4
  %7 = call i32 @GetDC(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GdipCreateFromHDC(i32 %8, i32** %1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @Ok, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @GdipGetVisibleClipBounds(i32* %17, i32* null)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @InvalidParameter, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = call i32 @GdipGetVisibleClipBounds(i32* null, i32* %2)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @InvalidParameter, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @GdipGetVisibleClipBoundsI(i32* %26, i32* null)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = call i32 @GdipGetVisibleClipBoundsI(i32* null, i32* %3)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @InvalidParameter, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @GdipDeleteGraphics(i32* %35)
  %37 = load i32, i32* @hwnd, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ReleaseDC(i32 %37, i32 %38)
  %40 = call i32 (...) @test_GdipGetVisibleClipBounds_screen()
  %41 = call i32 (...) @test_GdipGetVisibleClipBounds_window()
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipGetVisibleClipBounds(i32*, i32*) #1

declare dso_local i32 @GdipGetVisibleClipBoundsI(i32*, i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @test_GdipGetVisibleClipBounds_screen(...) #1

declare dso_local i32 @test_GdipGetVisibleClipBounds_window(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
