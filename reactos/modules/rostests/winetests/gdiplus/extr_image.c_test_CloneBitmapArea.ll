; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_CloneBitmapArea.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_CloneBitmapArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@ImageLockModeRead = common dso_local global i32 0, align 4
@ImageLockModeWrite = common dso_local global i32 0, align 4
@WrongState = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CloneBitmapArea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CloneBitmapArea() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PixelFormat24bppRGB, align 4
  %7 = call i32 @GdipCreateBitmapFromScan0(i32 1, i32 1, i32 0, i32 %6, i32* null, i32** %2)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @Ok, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @expect(i32 %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @ImageLockModeRead, align 4
  %13 = load i32, i32* @ImageLockModeWrite, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PixelFormat24bppRGB, align 4
  %16 = call i32 @GdipBitmapLockBits(i32* %11, i32* null, i32 %14, i32 %15, i32* %4)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @ImageLockModeRead, align 4
  %22 = load i32, i32* @PixelFormat24bppRGB, align 4
  %23 = call i32 @GdipBitmapLockBits(i32* %20, i32* null, i32 %21, i32 %22, i32* %5)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @WrongState, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32, i32* @PixelFormat24bppRGB, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @GdipCloneBitmapAreaI(i32 0, i32 0, i32 1, i32 1, i32 %27, i32* %28, i32** %3)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @GdipBitmapUnlockBits(i32* %33, i32* %4)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @GdipDisposeImage(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @GdipDisposeImage(i32* %40)
  ret void
}

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipBitmapLockBits(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @GdipCloneBitmapAreaI(i32, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @GdipBitmapUnlockBits(i32*, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
