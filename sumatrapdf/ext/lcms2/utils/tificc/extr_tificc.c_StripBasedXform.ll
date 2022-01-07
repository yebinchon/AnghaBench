; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_StripBasedXform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_StripBasedXform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFFTAG_IMAGEWIDTH = common dso_local global i32 0, align 4
@TIFFTAG_ROWSPERSTRIP = common dso_local global i32 0, align 4
@TIFFTAG_IMAGELENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32)* @StripBasedXform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StripBasedXform(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
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
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @TIFFStripSize(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @TIFFStripSize(i32* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @TIFFNumberOfStrips(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %15, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @TIFFTAG_IMAGEWIDTH, align 4
  %31 = call i32 @TIFFGetFieldDefaulted(i32* %29, i32 %30, i32* %16)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @TIFFTAG_ROWSPERSTRIP, align 4
  %34 = call i32 @TIFFGetFieldDefaulted(i32* %32, i32 %33, i32* %17)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @TIFFTAG_IMAGELENGTH, align 4
  %37 = call i32 @TIFFGetFieldDefaulted(i32* %35, i32 %36, i32* %18)
  %38 = load i32, i32* %17, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %4
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i64 @_TIFFmalloc(i32 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %55, %56
  %58 = call i32 @OutOfMem(i32 %57)
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i64 @_TIFFmalloc(i32 %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  %71 = call i32 @OutOfMem(i32 %70)
  br label %72

72:                                               ; preds = %67, %59
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %149, %72
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %152

77:                                               ; preds = %73
  store i32 0, i32* %19, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @TIFFReadEncodedStrip(i32* %83, i32 %88, i8* %94, i32 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  br label %157

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %19, align 4
  br label %78

103:                                              ; preds = %78
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %18, align 4
  br label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %17, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = mul nsw i32 %104, %113
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %18, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @cmsDoTransform(i32* null, i32 %118, i8* %119, i8* %120, i32 %121)
  store i32 0, i32* %19, align 4
  br label %123

123:                                              ; preds = %145, %112
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %123
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %15, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %129, %132
  %134 = load i8*, i8** %13, align 8
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  %140 = load i32, i32* %11, align 4
  %141 = call i64 @TIFFWriteEncodedStrip(i32* %128, i32 %133, i8* %139, i32 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %127
  br label %157

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %123

148:                                              ; preds = %123
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %73

152:                                              ; preds = %73
  %153 = load i8*, i8** %12, align 8
  %154 = call i32 @_TIFFfree(i8* %153)
  %155 = load i8*, i8** %13, align 8
  %156 = call i32 @_TIFFfree(i8* %155)
  store i32 1, i32* %5, align 4
  br label %162

157:                                              ; preds = %143, %98
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @_TIFFfree(i8* %158)
  %160 = load i8*, i8** %13, align 8
  %161 = call i32 @_TIFFfree(i8* %160)
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @TIFFStripSize(i32*) #1

declare dso_local i32 @TIFFNumberOfStrips(i32*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(i32*, i32, i32*) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @OutOfMem(i32) #1

declare dso_local i64 @TIFFReadEncodedStrip(i32*, i32, i8*, i32) #1

declare dso_local i32 @cmsDoTransform(i32*, i32, i8*, i8*, i32) #1

declare dso_local i64 @TIFFWriteEncodedStrip(i32*, i32, i8*, i32) #1

declare dso_local i32 @_TIFFfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
