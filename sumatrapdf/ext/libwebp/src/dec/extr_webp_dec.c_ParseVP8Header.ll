; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseVP8Header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseVP8Header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"VP8 \00", align 1
@TAG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"VP8L\00", align 1
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8_STATUS_NOT_ENOUGH_DATA = common dso_local global i32 0, align 4
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i32 0, align 4
@VP8_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i32, i64, i64*, i32*)* @ParseVP8Header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseVP8Header(i32** %0, i64* %1, i32 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32**, i32*** %8, align 8
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i32, i32* @TAG_SIZE, align 4
  %23 = call i32 @memcmp(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* @TAG_SIZE, align 4
  %29 = call i32 @memcmp(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* @TAG_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %17, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64*, i64** %9, align 8
  %42 = icmp ne i64* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i64*, i64** %12, align 8
  %46 = icmp ne i64* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %6
  %58 = load i32, i32* @VP8_STATUS_NOT_ENOUGH_DATA, align 4
  store i32 %58, i32* %7, align 4
  br label %118

59:                                               ; preds = %6
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %62, %59
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* @TAG_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i64 @GetLE32(i32* %69)
  store i64 %70, i64* %18, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %17, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %17, align 8
  %78 = sub i64 %76, %77
  %79 = icmp ugt i64 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  store i32 %81, i32* %7, align 4
  br label %118

82:                                               ; preds = %74, %65
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i64, i64* %18, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %90 = sub i64 %88, %89
  %91 = icmp ugt i64 %86, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @VP8_STATUS_NOT_ENOUGH_DATA, align 4
  store i32 %93, i32* %7, align 4
  br label %118

94:                                               ; preds = %85, %82
  %95 = load i64, i64* %18, align 8
  %96 = load i64*, i64** %12, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %98 = load i32**, i32*** %8, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 %97
  store i32* %100, i32** %98, align 8
  %101 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %103, %101
  store i64 %104, i64* %102, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load i32*, i32** %13, align 8
  store i32 %105, i32* %106, align 4
  br label %116

107:                                              ; preds = %62
  %108 = load i32*, i32** %14, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @VP8LCheckSignature(i32* %108, i64 %110)
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i64*, i64** %9, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %12, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %107, %94
  %117 = load i32, i32* @VP8_STATUS_OK, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %116, %92, %80, %57
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GetLE32(i32*) #1

declare dso_local i32 @VP8LCheckSignature(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
