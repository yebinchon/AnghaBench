; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseOptionalChunks.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseOptionalChunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_SIZE = common dso_local global i32 0, align 4
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8X_CHUNK_SIZE = common dso_local global i32 0, align 4
@VP8_STATUS_NOT_ENOUGH_DATA = common dso_local global i32 0, align 4
@MAX_CHUNK_PAYLOAD = common dso_local global i64 0, align 8
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"VP8 \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"VP8L\00", align 1
@VP8_STATUS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ALPH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i64, i32**, i64*)* @ParseOptionalChunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseOptionalChunks(i32** %0, i64* %1, i64 %2, i32** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i32, i32* @TAG_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %20 = add i64 %18, %19
  %21 = load i32, i32* @VP8X_CHUNK_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  store i64 %23, i64* %14, align 8
  %24 = load i32**, i32*** %7, align 8
  %25 = icmp ne i32** %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64*, i64** %8, align 8
  %29 = icmp ne i64* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i32**, i32*** %10, align 8
  %37 = icmp ne i32** %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i64*, i64** %11, align 8
  %41 = icmp ne i64* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32**, i32*** %10, align 8
  store i32* null, i32** %44, align 8
  %45 = load i64*, i64** %11, align 8
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %5, %114
  %47 = load i32*, i32** %12, align 8
  %48 = load i32**, i32*** %7, align 8
  store i32* %47, i32** %48, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64*, i64** %8, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @VP8_STATUS_NOT_ENOUGH_DATA, align 4
  store i32 %55, i32* %6, align 4
  br label %121

56:                                               ; preds = %46
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* @TAG_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i64 @GetLE32(i32* %60)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @MAX_CHUNK_PAYLOAD, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  store i32 %66, i32* %6, align 4
  br label %121

67:                                               ; preds = %56
  %68 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %68, %69
  %71 = add i64 %70, 1
  %72 = and i64 %71, -2
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  store i32 %83, i32* %6, align 4
  br label %121

84:                                               ; preds = %78, %67
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* @TAG_SIZE, align 4
  %87 = call i32 @memcmp(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* @TAG_SIZE, align 4
  %92 = call i32 @memcmp(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @VP8_STATUS_OK, align 4
  store i32 %95, i32* %6, align 4
  br label %121

96:                                               ; preds = %89
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %16, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @VP8_STATUS_NOT_ENOUGH_DATA, align 4
  store i32 %101, i32* %6, align 4
  br label %121

102:                                              ; preds = %96
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* @TAG_SIZE, align 4
  %105 = call i32 @memcmp(i32* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %12, align 8
  %109 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32**, i32*** %10, align 8
  store i32* %110, i32** %111, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64*, i64** %11, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %107, %102
  %115 = load i64, i64* %16, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 %115
  store i32* %117, i32** %12, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %13, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %13, align 8
  br label %46

121:                                              ; preds = %100, %94, %82, %65, %54
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GetLE32(i32*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
