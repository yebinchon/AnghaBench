; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_DrawImage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_DrawImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32* }

@__const.test_DrawImage.white_2x2 = private unnamed_addr constant [16 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InterpolationModeNearestNeighbor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"data should match\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DrawImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DrawImage() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = bitcast [16 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([16 x i32]* @__const.test_DrawImage.white_2x2 to i8*), i64 64, i1 false)
  %14 = bitcast [16 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 64, i1 false)
  %15 = bitcast i8* %14 to [16 x i32]*
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i32 0, i32 6
  store i32 255, i32* %16, align 8
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i32 0, i32 7
  store i32 255, i32* %17, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i32 0, i32 14
  store i32 255, i32* %18, align 8
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i32 0, i32 15
  store i32 255, i32* %19, align 4
  %20 = load i32, i32* @PixelFormat24bppRGB, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %22 = bitcast %union.anon* %5 to i32**
  %23 = call i32 @GdipCreateBitmapFromScan0(i32 1, i32 1, i32 4, i32 %20, i32* %21, i32** %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = bitcast %union.anon* %5 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @GdipBitmapSetResolution(i32* %28, double 1.000000e+02, double 1.000000e+02)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32, i32* @PixelFormat24bppRGB, align 4
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %35 = bitcast %union.anon* %6 to i32**
  %36 = call i32 @GdipCreateBitmapFromScan0(i32 2, i32 2, i32 8, i32 %33, i32* %34, i32** %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @Ok, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  %40 = bitcast %union.anon* %6 to i32**
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @GdipBitmapSetResolution(i32* %41, double 3.000000e+02, double 3.000000e+02)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = bitcast %union.anon* %6 to i32**
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @GdipGetImageGraphicsContext(i32* %47, i32** %7)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @Ok, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @expect(i32 %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @InterpolationModeNearestNeighbor, align 4
  %54 = call i32 @GdipSetInterpolationMode(i32* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = bitcast %union.anon* %5 to i32**
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @GdipDrawImageI(i32* %58, i32* %60, i32 0, i32 0)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @Ok, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @expect(i32 %62, i32 %63)
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %67 = call i64 @memcmp(i32* %65, i32* %66, i32 64)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %0
  store i64 64, i64* %10, align 8
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  store i32* %75, i32** %11, align 8
  store i64 0, i64* %9, align 8
  br label %76

76:                                               ; preds = %86, %74
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32*, i32** %11, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %76

89:                                               ; preds = %76
  %90 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %0
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @GdipDeleteGraphics(i32* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @Ok, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @expect(i32 %94, i32 %95)
  %97 = bitcast %union.anon* %5 to i32**
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @GdipDisposeImage(i32* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* @Ok, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @expect(i32 %100, i32 %101)
  %103 = bitcast %union.anon* %6 to i32**
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @GdipDisposeImage(i32* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* @Ok, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @expect(i32 %106, i32 %107)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipBitmapSetResolution(i32*, double, double) #2

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #2

declare dso_local i32 @GdipSetInterpolationMode(i32*, i32) #2

declare dso_local i32 @GdipDrawImageI(i32*, i32*, i32, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @trace(i8*, ...) #2

declare dso_local i32 @GdipDeleteGraphics(i32*) #2

declare dso_local i32 @GdipDisposeImage(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
