; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseAlphaHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseAlphaHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@ALPHA_HEADER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Truncated ALPH chunk.\00", align 1
@WEBP_INFO_TRUNCATED_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"  Parsing ALPH chunk...\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"  Compression:      %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  Filter:           %s (%d)\0A\00", align 1
@kAlphaFilterMethods = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"  Pre-processing:   %d\0A\00", align 1
@ALPHA_LOSSLESS_COMPRESSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid Alpha compression method.\00", align 1
@WEBP_INFO_BITSTREAM_ERROR = common dso_local global i64 0, align 8
@ALPHA_PREPROCESSED_LEVELS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Invalid Alpha pre-processing method.\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Reserved bits in ALPH chunk header are not all 0.\00", align 1
@WEBP_INFO_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*)* @ParseAlphaHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseAlphaHeader(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @ALPHA_HEADER_LEN, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @WEBP_INFO_TRUNCATED_DATA, align 8
  store i64 %27, i64* %3, align 8
  br label %102

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 0
  %34 = and i32 %33, 3
  store i32 %34, i32* %8, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 2
  %39 = and i32 %38, 3
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 3
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 6
  %49 = and i32 %48, 3
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i8**, i8*** @kAlphaFilterMethods, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @ALPHA_LOSSLESS_COMPRESSION, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %28
  %65 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %66, i64* %3, align 8
  br label %102

67:                                               ; preds = %28
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ALPHA_PREPROCESSED_LEVELS, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %73, i64* %3, align 8
  br label %102

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @LOG_WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i64, i64* @ALPHA_HEADER_LEN, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 %80
  store i32* %82, i32** %6, align 8
  %83 = load i64, i64* @ALPHA_HEADER_LEN, align 8
  %84 = load i64, i64* %7, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @ALPHA_LOSSLESS_COMPRESSION, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i64 @ParseLosslessTransform(i32* %90, i32* %91, i64 %92, i32* %12)
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* @WEBP_INFO_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i64, i64* %13, align 8
  store i64 %98, i64* %3, align 8
  br label %102

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i64, i64* @WEBP_INFO_OK, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %100, %97, %71, %64, %25
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LOG_WARN(i8*) #1

declare dso_local i64 @ParseLosslessTransform(i32*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
