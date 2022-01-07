; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_default_converter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_default_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@testdata_32bppBGRA = common dso_local global i32 0, align 4
@CLSID_WICDefaultFormatConverter = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IWICFormatConverter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CoCreateInstance failed, hr=%x\0A\00", align 1
@GUID_WICPixelFormat32bppBGRA = common dso_local global i32 0, align 4
@GUID_WICPixelFormat32bppBGR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CanConvert returned %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"expected TRUE, got %i\0A\00", align 1
@WICBitmapDitherTypeNone = common dso_local global i32 0, align 4
@WICBitmapPaletteTypeCustom = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Initialize returned %x\0A\00", align 1
@testdata_32bppBGR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"default converter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_default_converter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_default_converter() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @TRUE, align 8
  store i64 %5, i64* %3, align 8
  %6 = call i32 @CreateTestBitmap(i32* @testdata_32bppBGRA, %struct.TYPE_4__** %1)
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = bitcast i32** %2 to i8**
  %9 = call i64 @CoCreateInstance(i32* @CLSID_WICDefaultFormatConverter, i32* null, i32 %7, i32* @IID_IWICFormatConverter, i8** %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @SUCCEEDED(i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @ok(i64 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @SUCCEEDED(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %0
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @IWICFormatConverter_CanConvert(i32* %18, i32* @GUID_WICPixelFormat32bppBGRA, i32* @GUID_WICPixelFormat32bppBGR, i64* %3)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @SUCCEEDED(i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ok(i64 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @ok(i64 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* @WICBitmapDitherTypeNone, align 4
  %31 = load i32, i32* @WICBitmapPaletteTypeCustom, align 4
  %32 = call i64 @IWICFormatConverter_Initialize(i32* %27, i32* %29, i32* @GUID_WICPixelFormat32bppBGR, i32 %30, i32* null, double 0.000000e+00, i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @SUCCEEDED(i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @ok(i64 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @SUCCEEDED(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %17
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @compare_bitmap_data(i32* @testdata_32bppBGRA, i32* @testdata_32bppBGR, i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %17
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @IWICFormatConverter_Release(i32* %44)
  br label %46

46:                                               ; preds = %43, %0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %48 = call i32 @DeleteTestBitmap(%struct.TYPE_4__* %47)
  ret void
}

declare dso_local i32 @CreateTestBitmap(i32*, %struct.TYPE_4__**) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i64, i8*, i64) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IWICFormatConverter_CanConvert(i32*, i32*, i32*, i64*) #1

declare dso_local i64 @IWICFormatConverter_Initialize(i32*, i32*, i32*, i32, i32*, double, i32) #1

declare dso_local i32 @compare_bitmap_data(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @IWICFormatConverter_Release(i32*) #1

declare dso_local i32 @DeleteTestBitmap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
