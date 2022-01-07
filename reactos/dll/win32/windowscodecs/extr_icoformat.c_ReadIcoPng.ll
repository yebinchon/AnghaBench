; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_icoformat.c_ReadIcoPng.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_icoformat.c_ReadIcoPng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@IID_IWICBitmapDecoder = common dso_local global i32 0, align 4
@WICDecodeMetadataCacheOnLoad = common dso_local global i32 0, align 4
@GUID_WICPixelFormat32bppBGRA = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @ReadIcoPng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadIcoPng(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = bitcast i32** %5 to i8**
  %11 = call i32 @PngDecoder_CreateInstance(i32* @IID_IWICBitmapDecoder, i8** %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @FAILED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %108

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @WICDecodeMetadataCacheOnLoad, align 4
  %20 = call i32 @IWICBitmapDecoder_Initialize(i32* %17, i32* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %108

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @IWICBitmapDecoder_GetFrame(i32* %26, i32 0, i32** %6)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %108

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @WICConvertBitmapSource(i32* @GUID_WICPixelFormat32bppBGRA, i32* %33, i32** %7)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %108

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @IWICBitmapFrameDecode_GetSize(i32* %40, i32* %42, i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %108

50:                                               ; preds = %39
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = call i32 @IWICBitmapFrameDecode_GetResolution(i32* %51, i32* %53, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %108

61:                                               ; preds = %50
  %62 = call i32 (...) @GetProcessHeap()
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 4, %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = call i32* @HeapAlloc(i32 %62, i32 0, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %79, i32* %9, align 4
  br label %108

80:                                               ; preds = %61
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 4, %94
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 4, %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @IWICBitmapSource_CopyPixels(i32* %91, %struct.TYPE_5__* %8, i32 %95, i32 %103, i32* %106)
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %80, %78, %60, %49, %38, %31, %24, %15
  %109 = load i32*, i32** %5, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @IWICBitmapDecoder_Release(i32* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32*, i32** %6, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @IWICBitmapFrameDecode_Release(i32* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32*, i32** %7, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @IWICBitmapSource_Release(i32* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i32 @PngDecoder_CreateInstance(i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IWICBitmapDecoder_Initialize(i32*, i32*, i32) #1

declare dso_local i32 @IWICBitmapDecoder_GetFrame(i32*, i32, i32**) #1

declare dso_local i32 @WICConvertBitmapSource(i32*, i32*, i32**) #1

declare dso_local i32 @IWICBitmapFrameDecode_GetSize(i32*, i32*, i32*) #1

declare dso_local i32 @IWICBitmapFrameDecode_GetResolution(i32*, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IWICBitmapSource_CopyPixels(i32*, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @IWICBitmapDecoder_Release(i32*) #1

declare dso_local i32 @IWICBitmapFrameDecode_Release(i32*) #1

declare dso_local i32 @IWICBitmapSource_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
