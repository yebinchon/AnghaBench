; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_tiffformat.c_get_pixelformat_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_tiffformat.c_get_pixelformat_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@factory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"CreateComponentInfo(%s) error %#x\0A\00", align 1
@IID_IWICPixelFormatInfo2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"SupportsTransparency error %#x\0A\00", align 1
@IID_IWICPixelFormatInfo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"GetBitsPerPixel error %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"GetChannelCount error %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*)* @get_pixelformat_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_pixelformat_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @factory, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @IWICImagingFactory_CreateComponentInfo(i32 %12, i32* %13, i32** %10)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @wine_dbgstr_guid(i32* %19)
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %9, align 8
  %23 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %4
  %28 = load i32*, i32** %10, align 8
  %29 = bitcast i32** %11 to i8**
  %30 = call i64 @IWICComponentInfo_QueryInterface(i32* %28, i32* @IID_IWICPixelFormatInfo2, i8** %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @IWICPixelFormatInfo2_SupportsTransparency(i32* %35, i32* %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %9, align 8
  %43 = call i32 (i32, i8*, i64, ...) @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @IWICPixelFormatInfo2_Release(i32* %44)
  br label %46

46:                                               ; preds = %34, %27
  %47 = load i32*, i32** %10, align 8
  %48 = bitcast i32** %11 to i8**
  %49 = call i64 @IWICComponentInfo_QueryInterface(i32* %47, i32* @IID_IWICPixelFormatInfo, i8** %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @IWICPixelFormatInfo2_GetBitsPerPixel(i32* %54, i32* %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %9, align 8
  %62 = call i32 (i32, i8*, i64, ...) @ok(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @IWICPixelFormatInfo2_GetChannelCount(i32* %63, i32* %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %9, align 8
  %71 = call i32 (i32, i8*, i64, ...) @ok(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @IWICPixelFormatInfo2_Release(i32* %72)
  br label %74

74:                                               ; preds = %53, %46
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @IWICComponentInfo_Release(i32* %75)
  br label %77

77:                                               ; preds = %74, %4
  %78 = load i64, i64* %9, align 8
  ret i64 %78
}

declare dso_local i64 @IWICImagingFactory_CreateComponentInfo(i32, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i64 @IWICComponentInfo_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IWICPixelFormatInfo2_SupportsTransparency(i32*, i32*) #1

declare dso_local i32 @IWICPixelFormatInfo2_Release(i32*) #1

declare dso_local i64 @IWICPixelFormatInfo2_GetBitsPerPixel(i32*, i32*) #1

declare dso_local i64 @IWICPixelFormatInfo2_GetChannelCount(i32*, i32*) #1

declare dso_local i32 @IWICComponentInfo_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
