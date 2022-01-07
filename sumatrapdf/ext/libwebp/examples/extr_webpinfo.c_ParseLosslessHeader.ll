; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseLosslessHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseLosslessHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64 }

@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"  Parsing lossless bitstream...\0A\00", align 1
@VP8L_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Truncated lossless bitstream.\00", align 1
@WEBP_INFO_TRUNCATED_DATA = common dso_local global i64 0, align 8
@VP8L_MAGIC_BYTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid lossless bitstream signature.\00", align 1
@WEBP_INFO_BITSTREAM_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"  Width:            %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"  Height:           %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"  Alpha:            %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"  Version:          %d\0A\00", align 1
@WEBP_INFO_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*)* @ParseLosslessHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseLosslessHeader(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32* %8, i32** %9, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @VP8L_FRAME_HEADER_SIZE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* @WEBP_INFO_TRUNCATED_DATA, align 8
  store i64 %29, i64* %3, align 8
  br label %76

30:                                               ; preds = %2
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VP8L_MAGIC_BYTE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %38, i64* %3, align 8
  br label %76

39:                                               ; preds = %30
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64* %41, i64** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, 1
  store i64 %43, i64* %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @LL_GET_BITS(i32 %44, i32 14)
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @LL_GET_BITS(i32 %46, i32 14)
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @LL_GET_BITS(i32 %48, i32 1)
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @LL_GET_BITS(i32 %50, i32 3)
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i64 @ParseLosslessTransform(i32* %64, i64* %65, i64 %66, i32* %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @WEBP_INFO_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %39
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %3, align 8
  br label %76

74:                                               ; preds = %39
  %75 = load i64, i64* @WEBP_INFO_OK, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %74, %72, %36, %27
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @LL_GET_BITS(i32, i32) #1

declare dso_local i64 @ParseLosslessTransform(i32*, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
