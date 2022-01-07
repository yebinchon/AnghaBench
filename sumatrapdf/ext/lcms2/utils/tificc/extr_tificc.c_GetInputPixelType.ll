; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_GetInputPixelType.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_GetInputPixelType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TIFFTAG_PHOTOMETRIC = common dso_local global i32 0, align 4
@TIFFTAG_BITSPERSAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Sorry, bilevel TIFFs has nothing to do with ICC profiles\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Sorry, 8, 16 or 32 bits per sample only\00", align 1
@TIFFTAG_SAMPLESPERPIXEL = common dso_local global i32 0, align 4
@TIFFTAG_PLANARCONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unsupported planar configuration (=%d) \00", align 1
@TIFFTAG_EXTRASAMPLES = common dso_local global i32 0, align 4
@StoreAsAlpha = common dso_local global i64 0, align 8
@PT_GRAY = common dso_local global i32 0, align 4
@PT_RGB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Sorry, palette images not supported\00", align 1
@TIFFTAG_COMPRESSION = common dso_local global i32 0, align 4
@PT_YCbCr = common dso_local global i32 0, align 4
@TIFFTAG_YCBCRSUBSAMPLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Sorry, subsampled images not supported\00", align 1
@PT_LabV2 = common dso_local global i32 0, align 4
@PT_Lab = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TIFFTAG_SGILOGDATAFMT = common dso_local global i32 0, align 4
@SGILOGDATAFMT_16BIT = common dso_local global i32 0, align 4
@PT_YUV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Unsupported TIFF color space (Photometric %d)\00", align 1
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %21 = call i32 @TIFFGetField(i32* %19, i32 %20, i32* %3)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %24 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %22, i32 %23, i32* %4)
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %1
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 8
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 16
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35, %32, %29
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %43 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %41, i32 %42, i32* %5)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @TIFFTAG_PLANARCONFIG, align 4
  %46 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %44, i32 %45, i32* %7)
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %50 [
    i32 129, label %48
    i32 128, label %49
  ]

48:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %53

49:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %49, %48
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @TIFFTAG_EXTRASAMPLES, align 4
  %60 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %58, i32 %59, i32* %6, i32** %8)
  %61 = load i64, i64* @StoreAsAlpha, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %63
  %70 = load i32, i32* %3, align 4
  switch i32 %70, label %108 [
    i32 134, label %71
    i32 135, label %72
    i32 132, label %74
    i32 133, label %76
    i32 131, label %78
    i32 130, label %81
    i32 137, label %97
    i32 138, label %99
    i32 136, label %102
  ]

71:                                               ; preds = %69
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %71
  %73 = load i32, i32* @PT_GRAY, align 4
  store i32 %73, i32* %13, align 4
  br label %111

74:                                               ; preds = %69
  %75 = load i32, i32* @PT_RGB, align 4
  store i32 %75, i32* %13, align 4
  br label %111

76:                                               ; preds = %69
  %77 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %111

78:                                               ; preds = %69
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @PixelTypeFromChanCount(i32 %79)
  store i32 %80, i32* %13, align 4
  br label %111

81:                                               ; preds = %69
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* @TIFFTAG_COMPRESSION, align 4
  %84 = call i32 @TIFFGetField(i32* %82, i32 %83, i32* %9)
  %85 = load i32, i32* @PT_YCbCr, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i32*, i32** %2, align 8
  %87 = load i32, i32* @TIFFTAG_YCBCRSUBSAMPLING, align 4
  %88 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %86, i32 %87, i32* %16, i32* %17)
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %91, %81
  %95 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  br label %111

97:                                               ; preds = %69
  %98 = load i32, i32* @PT_LabV2, align 4
  store i32 %98, i32* %13, align 4
  br label %111

99:                                               ; preds = %69
  %100 = load i32, i32* @PT_Lab, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %15, align 4
  br label %111

102:                                              ; preds = %69
  %103 = load i32*, i32** %2, align 8
  %104 = load i32, i32* @TIFFTAG_SGILOGDATAFMT, align 4
  %105 = load i32, i32* @SGILOGDATAFMT_16BIT, align 4
  %106 = call i32 @TIFFSetField(i32* %103, i32 %104, i32 %105)
  %107 = load i32, i32* @PT_YUV, align 4
  store i32 %107, i32* %13, align 4
  store i32 16, i32* %4, align 4
  br label %111

108:                                              ; preds = %69
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %102, %99, %97, %96, %78, %76, %74, %72
  %112 = load i32, i32* %4, align 4
  %113 = ashr i32 %112, 3
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %4, align 4
  %118 = icmp eq i32 %117, 4
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi i1 [ true, %111 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @FLOAT_SH(i32 %122)
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @COLORSPACE_SH(i32 %124)
  %126 = or i32 %123, %125
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @PLANAR_SH(i32 %127)
  %129 = or i32 %126, %128
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @EXTRA_SH(i32 %130)
  %132 = or i32 %129, %131
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @CHANNELS_SH(i32 %133)
  %135 = or i32 %132, %134
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @BYTES_SH(i32 %136)
  %138 = or i32 %135, %137
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @FLAVOR_SH(i32 %139)
  %141 = or i32 %138, %140
  %142 = load i32, i32* %15, align 4
  %143 = shl i32 %142, 23
  %144 = or i32 %141, %143
  ret i32 %144
}

declare dso_local i32 @TIFFGetField(i32*, i32, i32*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(i32*, i32, i32*, ...) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i32 @PixelTypeFromChanCount(i32) #1

declare dso_local i32 @TIFFSetField(i32*, i32, i32) #1

declare dso_local i32 @FLOAT_SH(i32) #1

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
