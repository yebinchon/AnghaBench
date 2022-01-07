; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_WriteOutputTags.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_WriteOutputTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTRASAMPLE_UNASSALPHA = common dso_local global i32 0, align 4
@TIFFTAG_PHOTOMETRIC = common dso_local global i32 0, align 4
@PHOTOMETRIC_MINISBLACK = common dso_local global i32 0, align 4
@TIFFTAG_SAMPLESPERPIXEL = common dso_local global i32 0, align 4
@TIFFTAG_BITSPERSAMPLE = common dso_local global i32 0, align 4
@PHOTOMETRIC_RGB = common dso_local global i32 0, align 4
@PHOTOMETRIC_SEPARATED = common dso_local global i32 0, align 4
@TIFFTAG_INKSET = common dso_local global i32 0, align 4
@INKSET_CMYK = common dso_local global i32 0, align 4
@PHOTOMETRIC_CIELAB = common dso_local global i32 0, align 4
@StoreAsAlpha = common dso_local global i32 0, align 4
@TIFFTAG_EXTRASAMPLES = common dso_local global i32 0, align 4
@TIFFTAG_NUMBEROFINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported output colorspace\00", align 1
@Width = common dso_local global i32 0, align 4
@TIFFTAG_SAMPLEFORMAT = common dso_local global i32 0, align 4
@SAMPLEFORMAT_IEEEFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @WriteOutputTags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteOutputTags(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [11 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 8, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ChanCountFromPixelType(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 0
  %15 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @EXTRASAMPLE_UNASSALPHA, align 4
  store i32 %35, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %152 [
    i32 144, label %37
    i32 128, label %49
    i32 146, label %61
    i32 145, label %76
    i32 143, label %92
    i32 136, label %112
    i32 135, label %112
    i32 134, label %112
    i32 133, label %112
    i32 132, label %112
    i32 131, label %112
    i32 130, label %112
    i32 129, label %112
    i32 142, label %112
    i32 141, label %112
    i32 140, label %112
    i32 139, label %112
    i32 138, label %112
    i32 137, label %112
  ]

37:                                               ; preds = %3
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %40 = load i32, i32* @PHOTOMETRIC_MINISBLACK, align 4
  %41 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %44 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %42, i32 %43, i32 1)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %45, i32 %46, i32 %47)
  br label %154

49:                                               ; preds = %3
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %52 = load i32, i32* @PHOTOMETRIC_RGB, align 4
  %53 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %56 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %54, i32 %55, i32 3)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %57, i32 %58, i32 %59)
  br label %154

61:                                               ; preds = %3
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %64 = load i32, i32* @PHOTOMETRIC_SEPARATED, align 4
  %65 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %68 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %66, i32 %67, i32 3)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @TIFFTAG_INKSET, align 4
  %71 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %69, i32 %70, i32 2)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %72, i32 %73, i32 %74)
  br label %154

76:                                               ; preds = %3
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %79 = load i32, i32* @PHOTOMETRIC_SEPARATED, align 4
  %80 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %77, i32 %78, i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %83 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %81, i32 %82, i32 4)
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @TIFFTAG_INKSET, align 4
  %86 = load i32, i32* @INKSET_CMYK, align 4
  %87 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %84, i32 %85, i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %88, i32 %89, i32 %90)
  br label %154

92:                                               ; preds = %3
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 16
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %98 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %96, i32 %97, i32 9)
  br label %104

99:                                               ; preds = %92
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %102 = load i32, i32* @PHOTOMETRIC_CIELAB, align 4
  %103 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %107 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %105, i32 %106, i32 3)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %108, i32 %109, i32 %110)
  br label %154

112:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %115 = load i32, i32* @PHOTOMETRIC_SEPARATED, align 4
  %116 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %113, i32 %114, i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %117, i32 %118, i32 %119)
  %121 = load i32, i32* @StoreAsAlpha, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %112
  %124 = load i32, i32* %8, align 4
  %125 = icmp sge i32 %124, 4
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* @TIFFTAG_EXTRASAMPLES, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sub nsw i32 %129, 4
  %131 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 0
  %132 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %127, i32 %128, i32 %130, i32* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* @TIFFTAG_INKSET, align 4
  %135 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %133, i32 %134, i32 1)
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @TIFFTAG_NUMBEROFINKS, align 4
  %138 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %136, i32 %137, i32 4)
  br label %147

139:                                              ; preds = %123, %112
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* @TIFFTAG_INKSET, align 4
  %142 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %140, i32 %141, i32 2)
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* @TIFFTAG_NUMBEROFINKS, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %126
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %148, i32 %149, i32 %150)
  br label %154

152:                                              ; preds = %3
  %153 = call i32 @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %147, %104, %76, %61, %49, %37
  %155 = load i32, i32* @Width, align 4
  %156 = icmp eq i32 %155, 32
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* @TIFFTAG_SAMPLEFORMAT, align 4
  %160 = load i32, i32* @SAMPLEFORMAT_IEEEFP, align 4
  %161 = call i32 (i32*, i32, i32, ...) @TIFFSetField(i32* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %154
  ret void
}

declare dso_local i32 @ChanCountFromPixelType(i32) #1

declare dso_local i32 @TIFFSetField(i32*, i32, i32, ...) #1

declare dso_local i32 @FatalError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
