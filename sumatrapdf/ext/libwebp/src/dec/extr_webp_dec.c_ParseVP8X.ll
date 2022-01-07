; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseVP8X.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseVP8X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8X_CHUNK_SIZE = common dso_local global i64 0, align 8
@VP8_STATUS_NOT_ENOUGH_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"VP8X\00", align 1
@TAG_SIZE = common dso_local global i32 0, align 4
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i32 0, align 4
@MAX_IMAGE_AREA = common dso_local global i32 0, align 4
@VP8_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i32*, i32*, i32*, i64*)* @ParseVP8X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseVP8X(i32** %0, i64* %1, i32* %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %20 = load i64, i64* @VP8X_CHUNK_SIZE, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %14, align 8
  %22 = load i32**, i32*** %8, align 8
  %23 = icmp ne i32** %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ne i64* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %10, align 8
  store i32 0, i32* %34, align 4
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32, i32* @VP8_STATUS_NOT_ENOUGH_DATA, align 4
  store i32 %40, i32* %7, align 4
  br label %120

41:                                               ; preds = %6
  %42 = load i32**, i32*** %8, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @TAG_SIZE, align 4
  %45 = call i32 @memcmp(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %118, label %47

47:                                               ; preds = %41
  %48 = load i32**, i32*** %8, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @TAG_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i8* @GetLE32(i32* %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* %18, align 8
  %56 = load i64, i64* @VP8X_CHUNK_SIZE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  store i32 %59, i32* %7, align 4
  br label %120

60:                                               ; preds = %47
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @VP8_STATUS_NOT_ENOUGH_DATA, align 4
  store i32 %66, i32* %7, align 4
  br label %120

67:                                               ; preds = %60
  %68 = load i32**, i32*** %8, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = call i8* @GetLE32(i32* %70)
  %72 = ptrtoint i8* %71 to i64
  store i64 %72, i64* %17, align 8
  %73 = load i32**, i32*** %8, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 12
  %76 = call i32 @GetLE24(i32* %75)
  %77 = add nsw i32 1, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32**, i32*** %8, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 15
  %81 = call i32 @GetLE24(i32* %80)
  %82 = add nsw i32 1, %81
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* @MAX_IMAGE_AREA, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %67
  %89 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  store i32 %89, i32* %7, align 4
  br label %120

90:                                               ; preds = %67
  %91 = load i64*, i64** %13, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %17, align 8
  %95 = load i64*, i64** %13, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %11, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32*, i32** %12, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %16, align 4
  %107 = load i32*, i32** %12, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i64, i64* %14, align 8
  %110 = load i32**, i32*** %8, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 %109
  store i32* %112, i32** %110, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %115, %113
  store i64 %116, i64* %114, align 8
  %117 = load i32*, i32** %10, align 8
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %108, %41
  %119 = load i32, i32* @VP8_STATUS_OK, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %88, %65, %58, %39
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i8* @GetLE32(i32*) #1

declare dso_local i32 @GetLE24(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
