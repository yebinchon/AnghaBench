; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjbench.c_usage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjbench.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"USAGE: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"       <Inputfile (BMP|PPM)> <Quality> [options]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"       %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"       <Inputfile (JPG)> [options]\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Options:\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"-alloc = Dynamically allocate JPEG image buffers\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"-bmp = Generate output images in Windows Bitmap format (default=PPM)\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"-bottomup = Test bottom-up compression/decompression\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"-tile = Test performance of the codec when the image is encoded as separate\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"     tiles of varying sizes.\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"-forcemmx, -forcesse, -forcesse2, -forcesse3 =\0A\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"     Force MMX, SSE, SSE2, or SSE3 code paths in the underlying codec\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"-rgb, -bgr, -rgbx, -bgrx, -xbgr, -xrgb =\0A\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c"     Test the specified color conversion path in the codec (default: BGR)\0A\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"-fastupsample = Use the fastest chrominance upsampling algorithm available in\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"     the underlying codec\0A\00", align 1
@.str.16 = private unnamed_addr constant [76 x i8] c"-fastdct = Use the fastest DCT/IDCT algorithms available in the underlying\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"     codec\0A\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"-accuratedct = Use the most accurate DCT/IDCT algorithms available in the\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"     underlying codec\0A\00", align 1
@.str.20 = private unnamed_addr constant [79 x i8] c"-subsamp <s> = When testing JPEG compression, this option specifies the level\0A\00", align 1
@.str.21 = private unnamed_addr constant [77 x i8] c"     of chrominance subsampling to use (<s> = 444, 422, 440, 420, or GRAY).\0A\00", align 1
@.str.22 = private unnamed_addr constant [77 x i8] c"     The default is to test Grayscale, 4:2:0, 4:2:2, and 4:4:4 in sequence.\0A\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"-quiet = Output results in tabular rather than verbose format\0A\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"-yuvencode = Encode RGB input as planar YUV rather than compressing as JPEG\0A\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"-yuvdecode = Decode JPEG image to planar YUV rather than RGB\0A\00", align 1
@.str.26 = private unnamed_addr constant [78 x i8] c"-scale M/N = scale down the width/height of the decompressed JPEG image by a\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"     factor of M/N (M/N = \00", align 1
@nsf = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@scalingfactors = common dso_local global %struct.TYPE_2__* null, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"or \00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"\0A     \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"-hflip, -vflip, -transpose, -transverse, -rot90, -rot180, -rot270 =\0A\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"     Perform the corresponding lossless transform prior to\0A\00", align 1
@.str.36 = private unnamed_addr constant [59 x i8] c"     decompression (these options are mutually exclusive)\0A\00", align 1
@.str.37 = private unnamed_addr constant [75 x i8] c"-grayscale = Perform lossless grayscale conversion prior to decompression\0A\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"     test (can be combined with the other transforms above)\0A\00", align 1
@.str.39 = private unnamed_addr constant [79 x i8] c"-benchtime <t> = Run each benchmark for at least <t> seconds (default = 5.0)\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"NOTE:  If the quality is specified as a range (e.g. 90-100), a separate\0A\00", align 1
@.str.41 = private unnamed_addr constant [62 x i8] c"test will be performed for all quality values in the range.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %7)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.14, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.20, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.21, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.22, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.24, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.26, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %90, %1
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @nsf, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scalingfactors, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scalingfactors, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 %44, i32 %50)
  %52 = load i32, i32* @nsf, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @nsf, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  br label %80

61:                                               ; preds = %54, %38
  %62 = load i32, i32* @nsf, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @nsf, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @nsf, align 4
  %74 = sub nsw i32 %73, 2
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* %3, align 4
  %82 = srem i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84, %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %34

93:                                               ; preds = %34
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.36, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.37, i64 0, i64 0))
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0))
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.39, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0))
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.41, i64 0, i64 0))
  %103 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
