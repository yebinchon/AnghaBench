; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseRIFF.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseRIFF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RIFF_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@TAG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"WEBP\00", align 1
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i32 0, align 4
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@MAX_CHUNK_PAYLOAD = common dso_local global i32 0, align 4
@VP8_STATUS_NOT_ENOUGH_DATA = common dso_local global i32 0, align 4
@VP8_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i32, i64*)* @ParseRIFF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseRIFF(i32** %0, i64* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = icmp ne i32** %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64*, i64** %7, align 8
  %16 = icmp ne i64* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64*, i64** %9, align 8
  %20 = icmp ne i64* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64*, i64** %9, align 8
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RIFF_HEADER_SIZE, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %4
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @TAG_SIZE, align 4
  %32 = call i64 @memcmp(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %91, label %34

34:                                               ; preds = %28
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32, i32* @TAG_SIZE, align 4
  %39 = call i64 @memcmp(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  store i32 %42, i32* %5, align 4
  br label %93

43:                                               ; preds = %34
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @TAG_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @GetLE32(i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* @TAG_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %55 = add i64 %53, %54
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  store i32 %58, i32* %5, align 4
  br label %93

59:                                               ; preds = %43
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @MAX_CHUNK_PAYLOAD, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  store i32 %64, i32* %5, align 4
  br label %93

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64*, i64** %7, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %74 = sub i64 %72, %73
  %75 = icmp ugt i64 %70, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @VP8_STATUS_NOT_ENOUGH_DATA, align 4
  store i32 %77, i32* %5, align 4
  br label %93

78:                                               ; preds = %68, %65
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %9, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* @RIFF_HEADER_SIZE, align 8
  %83 = load i32**, i32*** %6, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %82
  store i32* %85, i32** %83, align 8
  %86 = load i64, i64* @RIFF_HEADER_SIZE, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %88, %86
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %28, %4
  %92 = load i32, i32* @VP8_STATUS_OK, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %76, %63, %57, %41
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @GetLE32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
