; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_LockBits_UserBuf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_LockBits_UserBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32, i32 }

@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@ImageLockModeRead = common dso_local global i32 0, align 4
@ImageLockModeUserInputBuf = common dso_local global i32 0, align 4
@ImageLockModeWrite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LockBits_UserBuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LockBits_UserBuf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [200 x i32], align 16
  %8 = alloca i32, align 4
  store i32 10, i32* %5, align 4
  store i32 20, i32* %6, align 4
  store i32* null, i32** %2, align 8
  %9 = load i32, i32* @PixelFormat32bppARGB, align 4
  %10 = call i32 @GdipCreateBitmapFromScan0(i32 10, i32 20, i32 0, i32 %9, i32* null, i32** %2)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @Ok, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 170, i32 800)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 2, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 3, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 4, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 5, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 6, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 40, i32* %22, align 8
  %23 = load i32, i32* @PixelFormat32bppARGB, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 32
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  store i32* %25, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  store i32 -1431655766, i32* %27, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @ImageLockModeRead, align 4
  %30 = load i32, i32* @ImageLockModeUserInputBuf, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PixelFormat32bppARGB, align 4
  %33 = call i32 @GdipBitmapLockBits(i32* %28, %struct.TYPE_6__* %3, i32 %31, i32 %32, %struct.TYPE_7__* %4)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @Ok, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = call i32 @expect(i32 -1431655766, i32 %38)
  %40 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 32
  %41 = load i32, i32* %40, align 16
  %42 = call i32 @expect(i32 0, i32 %41)
  %43 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 32
  store i32 -559038737, i32* %43, align 16
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @Ok, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %0
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @GdipBitmapUnlockBits(i32* %48, %struct.TYPE_7__* %4)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %0
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @GdipBitmapGetPixel(i32* %54, i32 2, i32 3, i32* %8)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* @Ok, align 4
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @expect(i32 0, i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* @ImageLockModeWrite, align 4
  %63 = load i32, i32* @ImageLockModeUserInputBuf, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PixelFormat32bppARGB, align 4
  %66 = call i32 @GdipBitmapLockBits(i32* %61, %struct.TYPE_6__* %3, i32 %64, i32 %65, %struct.TYPE_7__* %4)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* @Ok, align 4
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 32
  %71 = load i32, i32* %70, align 16
  %72 = call i32 @expect(i32 -559038737, i32 %71)
  %73 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 32
  store i32 305419896, i32* %73, align 16
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* @Ok, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %53
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @GdipBitmapUnlockBits(i32* %78, %struct.TYPE_7__* %4)
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* @Ok, align 4
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @expect(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %53
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @GdipBitmapGetPixel(i32* %84, i32 2, i32 3, i32* %8)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* @Ok, align 4
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @expect(i32 %86, i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @expect(i32 305419896, i32 %89)
  %91 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 32
  store i32 0, i32* %91, align 16
  %92 = load i32*, i32** %2, align 8
  %93 = load i32, i32* @ImageLockModeRead, align 4
  %94 = load i32, i32* @ImageLockModeWrite, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @ImageLockModeUserInputBuf, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @PixelFormat32bppARGB, align 4
  %99 = call i32 @GdipBitmapLockBits(i32* %92, %struct.TYPE_6__* %3, i32 %97, i32 %98, %struct.TYPE_7__* %4)
  store i32 %99, i32* %1, align 4
  %100 = load i32, i32* @Ok, align 4
  %101 = load i32, i32* %1, align 4
  %102 = call i32 @expect(i32 %100, i32 %101)
  %103 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 32
  %104 = load i32, i32* %103, align 16
  %105 = call i32 @expect(i32 305419896, i32 %104)
  %106 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 32
  store i32 -559038737, i32* %106, align 16
  %107 = load i32, i32* %1, align 4
  %108 = load i32, i32* @Ok, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %83
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @GdipBitmapUnlockBits(i32* %111, %struct.TYPE_7__* %4)
  store i32 %112, i32* %1, align 4
  %113 = load i32, i32* @Ok, align 4
  %114 = load i32, i32* %1, align 4
  %115 = call i32 @expect(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %83
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @GdipBitmapGetPixel(i32* %117, i32 2, i32 3, i32* %8)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* @Ok, align 4
  %120 = load i32, i32* %1, align 4
  %121 = call i32 @expect(i32 %119, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @expect(i32 -559038737, i32 %122)
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @GdipDisposeImage(i32* %124)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* @Ok, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i32 @expect(i32 %126, i32 %127)
  ret void
}

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GdipBitmapLockBits(i32*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GdipBitmapUnlockBits(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
