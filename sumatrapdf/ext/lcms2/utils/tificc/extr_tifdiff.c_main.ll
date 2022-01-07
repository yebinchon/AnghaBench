; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, i64 }

@TiffDiff = common dso_local global i32* null, align 8
@Tiff2 = common dso_local global i32* null, align 8
@Tiff1 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"tiffdiff\00", align 1
@xoptind = common dso_local global i32 0, align 4
@ConsoleErrorHandler = common dso_local global i32 0, align 4
@ConsoleWarningHandler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unable to open '%s'\00", align 1
@TiffDiffFilename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Unable to create '%s'\00", align 1
@TIFFTAG_PLANARCONFIG = common dso_local global i32 0, align 4
@PLANARCONFIG_CONTIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Planar Config\00", align 1
@TIFFTAG_BITSPERSAMPLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"8 bit per sample\00", align 1
@TIFFTAG_IMAGEWIDTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"Image width\00", align 1
@TIFFTAG_IMAGELENGTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Image length\00", align 1
@TIFFTAG_SAMPLESPERPIXEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Samples per pixel\00", align 1
@hLab = common dso_local global i64 0, align 8
@EuclideanStat = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ColorantStat = common dso_local global %struct.TYPE_7__* null, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"Error comparing images\00", align 1
@CGATSout = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [61 x i8] c"Digital counts  %g%% equal. mean %g, min %g, max %g, Std %g\0A\00", align 1
@ColorimetricStat = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [61 x i8] c"dE Colorimetric %g%% equal. mean %g, min %g, max %g, Std %g\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** @TiffDiff, align 8
  store i32* null, i32** @Tiff2, align 8
  store i32* null, i32** @Tiff1, align 8
  %8 = call i32 @InitUtils(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @HandleSwitches(i32 %9, i8** %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @xoptind, align 4
  %14 = sub nsw i32 %12, %13
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @Help()
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* @ConsoleErrorHandler, align 4
  %20 = call i32 @TIFFSetErrorHandler(i32 %19)
  %21 = load i32, i32* @ConsoleWarningHandler, align 4
  %22 = call i32 @TIFFSetWarningHandler(i32 %21)
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* @xoptind, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32* @TIFFOpen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** @Tiff1, align 8
  %29 = load i32*, i32** @Tiff1, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* @xoptind, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %31, %18
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* @xoptind, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32* @TIFFOpen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %45, i32** @Tiff2, align 8
  %46 = load i32*, i32** @Tiff2, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @xoptind, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %48, %38
  %57 = load i8*, i8** @TiffDiffFilename, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i8*, i8** @TiffDiffFilename, align 8
  %61 = call i32* @TIFFOpen(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %61, i32** @TiffDiff, align 8
  %62 = load i32*, i32** @TiffDiff, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** @TiffDiffFilename, align 8
  %66 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32*, i32** @Tiff1, align 8
  %70 = load i32*, i32** @Tiff2, align 8
  %71 = load i32, i32* @TIFFTAG_PLANARCONFIG, align 4
  %72 = load i32, i32* @PLANARCONFIG_CONTIG, align 4
  %73 = call i32 @AssureShortTagIs(i32* %69, i32* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32*, i32** @Tiff1, align 8
  %75 = load i32*, i32** @Tiff2, align 8
  %76 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %77 = call i32 @AssureShortTagIs(i32* %74, i32* %75, i32 %76, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32*, i32** @Tiff1, align 8
  %79 = load i32*, i32** @Tiff2, align 8
  %80 = load i32, i32* @TIFFTAG_IMAGEWIDTH, align 4
  %81 = call i32 @EqualLongTag(i32* %78, i32* %79, i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i32*, i32** @Tiff1, align 8
  %83 = load i32*, i32** @Tiff2, align 8
  %84 = load i32, i32* @TIFFTAG_IMAGELENGTH, align 4
  %85 = call i32 @EqualLongTag(i32* %82, i32* %83, i32 %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %86 = load i32*, i32** @Tiff1, align 8
  %87 = load i32*, i32** @Tiff2, align 8
  %88 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %89 = call i32 @EqualShortTag(i32* %86, i32* %87, i32 %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %90 = call i64 @cmsCreateLab4Profile(i32* null)
  store i64 %90, i64* @hLab, align 8
  %91 = call i32 @ClearStatistics(%struct.TYPE_7__* @EuclideanStat)
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %101, %68
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ColorantStat, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = call i32 @ClearStatistics(%struct.TYPE_7__* %99)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %92

104:                                              ; preds = %92
  %105 = load i32*, i32** @Tiff1, align 8
  %106 = load i32*, i32** @Tiff2, align 8
  %107 = load i32*, i32** @TiffDiff, align 8
  %108 = call i32 @CmpImages(i32* %105, i32* %106, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %104
  %113 = load i64, i64* @CGATSout, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* @xoptind, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* @xoptind, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @CreateCGATS(i8* %120, i8* %126)
  br label %153

128:                                              ; preds = %112
  %129 = call double @Mean(%struct.TYPE_7__* @EuclideanStat)
  %130 = fsub double 2.550000e+02, %129
  %131 = fdiv double %130, 2.550000e+02
  %132 = fmul double 1.000000e+02, %131
  store double %132, double* %7, align 8
  %133 = load double, double* %7, align 8
  %134 = call double @Mean(%struct.TYPE_7__* @EuclideanStat)
  %135 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @EuclideanStat, i32 0, i32 0), align 8
  %136 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @EuclideanStat, i32 0, i32 1), align 8
  %137 = call double @Std(%struct.TYPE_7__* @EuclideanStat)
  %138 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), double %133, double %134, double %135, double %136, double %137)
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ColorimetricStat, i32 0, i32 2), align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %128
  %142 = call double @Mean(%struct.TYPE_7__* @ColorimetricStat)
  %143 = fsub double 2.550000e+02, %142
  %144 = fdiv double %143, 2.550000e+02
  %145 = fmul double 1.000000e+02, %144
  store double %145, double* %7, align 8
  %146 = load double, double* %7, align 8
  %147 = call double @Mean(%struct.TYPE_7__* @ColorimetricStat)
  %148 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ColorimetricStat, i32 0, i32 0), align 8
  %149 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ColorimetricStat, i32 0, i32 1), align 8
  %150 = call double @Std(%struct.TYPE_7__* @ColorimetricStat)
  %151 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), double %146, double %147, double %148, double %149, double %150)
  br label %152

152:                                              ; preds = %141, %128
  br label %153

153:                                              ; preds = %152, %115
  %154 = load i64, i64* @hLab, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i64, i64* @hLab, align 8
  %158 = call i32 @cmsCloseProfile(i32* null, i64 %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32*, i32** @Tiff1, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32*, i32** @Tiff1, align 8
  %164 = call i32 @TIFFClose(i32* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32*, i32** @Tiff2, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32*, i32** @Tiff2, align 8
  %170 = call i32 @TIFFClose(i32* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32*, i32** @TiffDiff, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32*, i32** @TiffDiff, align 8
  %176 = call i32 @TIFFClose(i32* %175)
  br label %177

177:                                              ; preds = %174, %171
  ret i32 0
}

declare dso_local i32 @InitUtils(i32*, i8*) #1

declare dso_local i32 @HandleSwitches(i32, i8**) #1

declare dso_local i32 @Help(...) #1

declare dso_local i32 @TIFFSetErrorHandler(i32) #1

declare dso_local i32 @TIFFSetWarningHandler(i32) #1

declare dso_local i32* @TIFFOpen(i8*, i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i32 @AssureShortTagIs(i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @EqualLongTag(i32*, i32*, i32, i8*) #1

declare dso_local i32 @EqualShortTag(i32*, i32*, i32, i8*) #1

declare dso_local i64 @cmsCreateLab4Profile(i32*) #1

declare dso_local i32 @ClearStatistics(%struct.TYPE_7__*) #1

declare dso_local i32 @CmpImages(i32*, i32*, i32*) #1

declare dso_local i32 @CreateCGATS(i8*, i8*) #1

declare dso_local double @Mean(%struct.TYPE_7__*) #1

declare dso_local i32 @printf(i8*, double, double, double, double, double) #1

declare dso_local double @Std(%struct.TYPE_7__*) #1

declare dso_local i32 @cmsCloseProfile(i32*, i64) #1

declare dso_local i32 @TIFFClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
