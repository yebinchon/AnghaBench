; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_GetInputPixelType.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_GetInputPixelType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFFTAG_PHOTOMETRIC = common dso_local global i32 0, align 4
@TIFFTAG_BITSPERSAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Sorry, bilevel TIFFs has nothig to do with ICC profiles\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Sorry, 8 or 16 bits per sample only\00", align 1
@TIFFTAG_SAMPLESPERPIXEL = common dso_local global i32 0, align 4
@TIFFTAG_PLANARCONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Planar TIFF are not supported\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Unsupported planar configuration (=%d) \00", align 1
@TIFFTAG_EXTRASAMPLES = common dso_local global i32 0, align 4
@PT_GRAY = common dso_local global i32 0, align 4
@PT_RGB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"Sorry, palette images not supported (at least on this version)\00", align 1
@TIFFTAG_COMPRESSION = common dso_local global i32 0, align 4
@PT_YCbCr = common dso_local global i32 0, align 4
@TIFFTAG_YCBCRSUBSAMPLING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Sorry, subsampled images not supported\00", align 1
@PT_Lab = common dso_local global i32 0, align 4
@TIFFTAG_SGILOGDATAFMT = common dso_local global i32 0, align 4
@SGILOGDATAFMT_16BIT = common dso_local global i32 0, align 4
@PT_YUV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Unsupported TIFF color space (Photometric %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @GetInputPixelType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetInputPixelType(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %18 = call i32 @TIFFGetField(i32* %16, i32 %17, i32* %3)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %21 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %19, i32 %20, i32* %4)
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 8
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 16
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29, %26
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %37 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %35, i32 %36, i32* %5)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @TIFFTAG_PLANARCONFIG, align 4
  %40 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %38, i32 %39, i32* %7)
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %45 [
    i32 129, label %42
    i32 128, label %43
  ]

42:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %48

43:                                               ; preds = %34
  %44 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %34, %43
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @TIFFTAG_EXTRASAMPLES, align 4
  %55 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %53, i32 %54, i32* %6, i32** %8)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %3, align 4
  switch i32 %59, label %94 [
    i32 134, label %60
    i32 135, label %61
    i32 132, label %63
    i32 133, label %65
    i32 131, label %67
    i32 130, label %70
    i32 9, label %86
    i32 137, label %86
    i32 136, label %88
  ]

60:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %52, %60
  %62 = load i32, i32* @PT_GRAY, align 4
  store i32 %62, i32* %13, align 4
  br label %97

63:                                               ; preds = %52
  %64 = load i32, i32* @PT_RGB, align 4
  store i32 %64, i32* %13, align 4
  br label %97

65:                                               ; preds = %52
  %66 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %52, %65
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @PixelTypeFromChanCount(i32 %68)
  store i32 %69, i32* %13, align 4
  br label %97

70:                                               ; preds = %52
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* @TIFFTAG_COMPRESSION, align 4
  %73 = call i32 @TIFFGetField(i32* %71, i32 %72, i32* %9)
  %74 = load i32, i32* @PT_YCbCr, align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* @TIFFTAG_YCBCRSUBSAMPLING, align 4
  %77 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %75, i32 %76, i32* %14, i32* %15)
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %70
  %84 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  br label %97

86:                                               ; preds = %52, %52
  %87 = load i32, i32* @PT_Lab, align 4
  store i32 %87, i32* %13, align 4
  br label %97

88:                                               ; preds = %52
  %89 = load i32*, i32** %2, align 8
  %90 = load i32, i32* @TIFFTAG_SGILOGDATAFMT, align 4
  %91 = load i32, i32* @SGILOGDATAFMT_16BIT, align 4
  %92 = call i32 @TIFFSetField(i32* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @PT_YUV, align 4
  store i32 %93, i32* %13, align 4
  store i32 16, i32* %4, align 4
  br label %97

94:                                               ; preds = %52
  %95 = load i32, i32* %3, align 4
  %96 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %88, %86, %85, %67, %63, %61
  %98 = load i32, i32* %4, align 4
  %99 = ashr i32 %98, 3
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @COLORSPACE_SH(i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @PLANAR_SH(i32 %102)
  %104 = or i32 %101, %103
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @EXTRA_SH(i32 %105)
  %107 = or i32 %104, %106
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @CHANNELS_SH(i32 %108)
  %110 = or i32 %107, %109
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @BYTES_SH(i32 %111)
  %113 = or i32 %110, %112
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @FLAVOR_SH(i32 %114)
  %116 = or i32 %113, %115
  ret i32 %116
}

declare dso_local i32 @TIFFGetField(i32*, i32, i32*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(i32*, i32, i32*, ...) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i32 @PixelTypeFromChanCount(i32) #1

declare dso_local i32 @TIFFSetField(i32*, i32, i32) #1

declare dso_local i32 @COLORSPACE_SH(i32) #1

declare dso_local i32 @PLANAR_SH(i32) #1

declare dso_local i32 @EXTRA_SH(i32) #1

declare dso_local i32 @CHANNELS_SH(i32) #1

declare dso_local i32 @BYTES_SH(i32) #1

declare dso_local i32 @FLAVOR_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
