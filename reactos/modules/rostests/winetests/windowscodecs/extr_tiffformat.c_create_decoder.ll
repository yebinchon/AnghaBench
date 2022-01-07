; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_tiffformat.c_create_decoder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_tiffformat.c_create_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CreateStreamOnHGlobal error %#x\0A\00", align 1
@factory = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GetContainerFormat error %#x\0A\00", align 1
@GUID_ContainerFormatTiff = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"wrong container format %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"expected stream refcount > 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32**)* @create_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_decoder(i8* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32**, i32*** %6, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GlobalAlloc(i32 0, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @GlobalLock(i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @memcpy(i32* %18, i8* %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @GlobalUnlock(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i64 @CreateStreamOnHGlobal(i32 %24, i32 %25, i32** %10)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %9, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @factory, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32**, i32*** %6, align 8
  %36 = call i64 @IWICImagingFactory_CreateDecoderFromStream(i32 %33, i32* %34, i32* null, i32 0, i32** %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %3
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IWICBitmapDecoder_GetContainerFormat(i32* %42, i32* %11)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = call i32 @IsEqualGUID(i32* %11, i32* @GUID_ContainerFormatTiff)
  %51 = call i32 @wine_dbgstr_guid(i32* %11)
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @IStream_Release(i32* %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp sgt i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %40, %3
  %60 = load i64, i64* %9, align 8
  ret i64 %60
}

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i32* @GlobalLock(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IWICImagingFactory_CreateDecoderFromStream(i32, i32*, i32*, i32, i32**) #1

declare dso_local i64 @IWICBitmapDecoder_GetContainerFormat(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i64 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
