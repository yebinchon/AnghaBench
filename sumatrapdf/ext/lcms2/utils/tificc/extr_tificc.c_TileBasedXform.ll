; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_TileBasedXform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_TileBasedXform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFFTAG_TILEWIDTH = common dso_local global i32 0, align 4
@TIFFTAG_TILELENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32)* @TileBasedXform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TileBasedXform(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @TIFFTileSize(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @TIFFTileSize(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @TIFFNumberOfTiles(i32* %24)
  %26 = load i32, i32* %9, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @TIFFTAG_TILEWIDTH, align 4
  %30 = call i32 @TIFFGetFieldDefaulted(i32* %28, i32 %29, i32* %16)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @TIFFTAG_TILELENGTH, align 4
  %33 = call i32 @TIFFGetFieldDefaulted(i32* %31, i32 %32, i32* %17)
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i64 @_TIFFmalloc(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 @OutOfMem(i32 %47)
  br label %49

49:                                               ; preds = %44, %4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i64 @_TIFFmalloc(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i32 @OutOfMem(i32 %60)
  br label %62

62:                                               ; preds = %57, %49
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %125, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %128

67:                                               ; preds = %63
  store i32 0, i32* %19, align 4
  br label %68

68:                                               ; preds = %90, %67
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %15, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %74, %77
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @TIFFReadEncodedTile(i32* %73, i32 %78, i8* %84, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %133

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %68

93:                                               ; preds = %68
  %94 = load i32, i32* %6, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @cmsDoTransform(i32* null, i32 %94, i8* %95, i8* %96, i32 %97)
  store i32 0, i32* %19, align 4
  br label %99

99:                                               ; preds = %121, %93
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %15, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = load i8*, i8** %13, align 8
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i32, i32* %11, align 4
  %117 = call i64 @TIFFWriteEncodedTile(i32* %104, i32 %109, i8* %115, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %133

120:                                              ; preds = %103
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %99

124:                                              ; preds = %99
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %63

128:                                              ; preds = %63
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @_TIFFfree(i8* %129)
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @_TIFFfree(i8* %131)
  store i32 1, i32* %5, align 4
  br label %138

133:                                              ; preds = %119, %88
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 @_TIFFfree(i8* %134)
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 @_TIFFfree(i8* %136)
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @TIFFTileSize(i32*) #1

declare dso_local i32 @TIFFNumberOfTiles(i32*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(i32*, i32, i32*) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @OutOfMem(i32) #1

declare dso_local i64 @TIFFReadEncodedTile(i32*, i32, i8*, i32) #1

declare dso_local i32 @cmsDoTransform(i32*, i32, i8*, i8*, i32) #1

declare dso_local i64 @TIFFWriteEncodedTile(i32*, i32, i8*, i32) #1

declare dso_local i32 @_TIFFfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
