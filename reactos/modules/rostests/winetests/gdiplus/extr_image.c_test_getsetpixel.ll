; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_getsetpixel.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_getsetpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PixelFormat32bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@InvalidParameter = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Expected InvalidParameter, got %.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getsetpixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getsetpixel() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [16 x i32], align 16
  %5 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 64, i1 false)
  %6 = bitcast i8* %5 to [16 x i32]*
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 5
  store i32 255, i32* %7, align 4
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 6
  store i32 255, i32* %8, align 8
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 8
  store i32 255, i32* %9, align 16
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 12
  store i32 255, i32* %10, align 16
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 13
  store i32 255, i32* %11, align 4
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 14
  store i32 255, i32* %12, align 8
  %13 = load i32, i32* @PixelFormat32bppRGB, align 4
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %15 = call i64 @GdipCreateBitmapFromScan0(i32 2, i32 2, i32 8, i32 %13, i32* %14, i32** %2)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* @Ok, align 8
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @expect(i64 %16, i64 %17)
  %19 = call i64 @GdipBitmapGetPixel(i32* null, i32 1, i32 1, i64* %3)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* @InvalidParameter, align 8
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @expect(i64 %20, i64 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @GdipBitmapGetPixel(i32* %23, i32 1, i32 1, i64* null)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* @InvalidParameter, align 8
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @expect(i64 %25, i64 %26)
  %28 = call i64 @GdipBitmapSetPixel(i32* null, i32 1, i32 1, i32 0)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* @InvalidParameter, align 8
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @expect(i64 %29, i64 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i64 @GdipBitmapGetPixel(i32* %32, i32 -1, i32 1, i64* %3)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* @InvalidParameter, align 8
  %35 = load i64, i64* %1, align 8
  %36 = call i32 @expect(i64 %34, i64 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i64 @GdipBitmapSetPixel(i32* %37, i32 -1, i32 1, i32 0)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* @InvalidParameter, align 8
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @expect(i64 %39, i64 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @GdipBitmapGetPixel(i32* %42, i32 1, i32 -1, i64* %3)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @InvalidParameter, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %0
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @Ok, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @broken(i32 %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %47, %0
  %55 = phi i1 [ true, %0 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @GdipBitmapGetPixel(i32* %59, i32 2, i32 1, i64* %3)
  store i64 %60, i64* %1, align 8
  %61 = load i64, i64* @InvalidParameter, align 8
  %62 = load i64, i64* %1, align 8
  %63 = call i32 @expect(i64 %61, i64 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i64 @GdipBitmapSetPixel(i32* %64, i32 2, i32 1, i32 0)
  store i64 %65, i64* %1, align 8
  %66 = load i64, i64* @InvalidParameter, align 8
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @expect(i64 %66, i64 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i64 @GdipBitmapGetPixel(i32* %69, i32 1, i32 2, i64* %3)
  store i64 %70, i64* %1, align 8
  %71 = load i64, i64* @InvalidParameter, align 8
  %72 = load i64, i64* %1, align 8
  %73 = call i32 @expect(i64 %71, i64 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i64 @GdipBitmapSetPixel(i32* %74, i32 1, i32 2, i32 0)
  store i64 %75, i64* %1, align 8
  %76 = load i64, i64* @InvalidParameter, align 8
  %77 = load i64, i64* %1, align 8
  %78 = call i32 @expect(i64 %76, i64 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i64 @GdipBitmapGetPixel(i32* %79, i32 1, i32 1, i64* %3)
  store i64 %80, i64* %1, align 8
  %81 = load i64, i64* @Ok, align 8
  %82 = load i64, i64* %1, align 8
  %83 = call i32 @expect(i64 %81, i64 %82)
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @expect(i64 4294967295, i64 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i64 @GdipBitmapGetPixel(i32* %86, i32 0, i32 1, i64* %3)
  store i64 %87, i64* %1, align 8
  %88 = load i64, i64* @Ok, align 8
  %89 = load i64, i64* %1, align 8
  %90 = call i32 @expect(i64 %88, i64 %89)
  %91 = load i64, i64* %3, align 8
  %92 = call i32 @expect(i64 4278190335, i64 %91)
  %93 = load i32*, i32** %2, align 8
  %94 = call i64 @GdipBitmapSetPixel(i32* %93, i32 1, i32 1, i32 -10000279)
  store i64 %94, i64* %1, align 8
  %95 = load i64, i64* @Ok, align 8
  %96 = load i64, i64* %1, align 8
  %97 = call i32 @expect(i64 %95, i64 %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i64 @GdipBitmapSetPixel(i32* %98, i32 0, i32 0, i32 -12105655)
  store i64 %99, i64* %1, align 8
  %100 = load i64, i64* @Ok, align 8
  %101 = load i64, i64* %1, align 8
  %102 = call i32 @expect(i64 %100, i64 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i64 @GdipBitmapGetPixel(i32* %103, i32 1, i32 1, i64* %3)
  store i64 %104, i64* %1, align 8
  %105 = load i64, i64* @Ok, align 8
  %106 = load i64, i64* %1, align 8
  %107 = call i32 @expect(i64 %105, i64 %106)
  %108 = load i64, i64* %3, align 8
  %109 = call i32 @expect(i64 4284967017, i64 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call i64 @GdipBitmapGetPixel(i32* %110, i32 0, i32 0, i64* %3)
  store i64 %111, i64* %1, align 8
  %112 = load i64, i64* @Ok, align 8
  %113 = load i64, i64* %1, align 8
  %114 = call i32 @expect(i64 %112, i64 %113)
  %115 = load i64, i64* %3, align 8
  %116 = call i32 @expect(i64 4282861641, i64 %115)
  %117 = load i32*, i32** %2, align 8
  %118 = call i64 @GdipDisposeImage(i32* %117)
  store i64 %118, i64* %1, align 8
  %119 = load i64, i64* @Ok, align 8
  %120 = load i64, i64* %1, align 8
  %121 = call i32 @expect(i64 %119, i64 %120)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #2

declare dso_local i32 @expect(i64, i64) #2

declare dso_local i64 @GdipBitmapGetPixel(i32*, i32, i32, i64*) #2

declare dso_local i64 @GdipBitmapSetPixel(i32*, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i64 @GdipDisposeImage(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
