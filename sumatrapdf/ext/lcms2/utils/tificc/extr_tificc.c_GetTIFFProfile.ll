; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_GetTIFFProfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_GetTIFFProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { double, i8*, i8* }
%struct.TYPE_9__ = type { double, i8*, i8* }
%struct.TYPE_8__ = type { double, i8*, i8* }
%struct.TYPE_12__ = type { double, i8*, i8* }

@IgnoreEmbedded = common dso_local global i64 0, align 8
@TIFFTAG_ICCPROFILE = common dso_local global i32 0, align 4
@Verbose = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\0A[Embedded profile]\0A\00", align 1
@SaveEmbedded = common dso_local global i32* null, align 8
@TIFFTAG_PRIMARYCHROMATICITIES = common dso_local global i32 0, align 4
@TIFFTAG_WHITEPOINT = common dso_local global i32 0, align 4
@TIFFTAG_TRANSFERFUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"\0A[Colorimetric TIFF]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @GetTIFFProfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetTIFFProfile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32*], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %16 = load i64, i64* @IgnoreEmbedded, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %150

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @TIFFTAG_ICCPROFILE, align 4
  %22 = bitcast i32* %14 to i8***
  %23 = call i64 (i32*, i32, i8***, ...) @TIFFGetField(i32* %20, i32 %21, i8*** %22, i32** %15)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32* @cmsOpenProfileFromMem(i32* %26, i32 %27)
  store i32* %28, i32** %13, align 8
  %29 = load i64, i64* @Verbose, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @PrintProfileInformation(i32* null, i32* %37)
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fflush(i32 %39)
  br label %41

41:                                               ; preds = %34, %31, %25
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32*, i32** @SaveEmbedded, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** @SaveEmbedded, align 8
  %51 = call i32 @SaveMemoryBlock(i32* %48, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %47, %44, %41
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32*, i32** %13, align 8
  store i32* %56, i32** %2, align 8
  br label %150

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %19
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @TIFFTAG_PRIMARYCHROMATICITIES, align 4
  %61 = call i64 (i32*, i32, i8***, ...) @TIFFGetField(i32* %59, i32 %60, i8*** %5)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %149

63:                                               ; preds = %58
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 3
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 4
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 5
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store double 1.000000e+00, double* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store double 1.000000e+00, double* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store double 1.000000e+00, double* %99, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* @TIFFTAG_WHITEPOINT, align 4
  %102 = call i64 (i32*, i32, i8***, ...) @TIFFGetField(i32* %100, i32 %101, i8*** %7)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %148

104:                                              ; preds = %63
  %105 = load i8**, i8*** %7, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  store i8* %107, i8** %108, align 8
  %109 = load i8**, i8*** %7, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  store i8* %111, i8** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store double 1.000000e+00, double* %113, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = load i32, i32* @TIFFTAG_TRANSFERFUNCTION, align 4
  %116 = call i32 @TIFFGetFieldDefaulted(i32* %114, i32 %115, i32** %10, i32** %11, i32** %12)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32* @cmsBuildTabulatedToneCurve16(i32* null, i32 256, i32* %117)
  %119 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  store i32* %118, i32** %119, align 16
  %120 = load i32*, i32** %11, align 8
  %121 = call i32* @cmsBuildTabulatedToneCurve16(i32* null, i32 256, i32* %120)
  %122 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  store i32* %121, i32** %122, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32* @cmsBuildTabulatedToneCurve16(i32* null, i32 256, i32* %123)
  %125 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  store i32* %124, i32** %125, align 16
  %126 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %127 = call i32* @cmsCreateRGBProfileTHR(i32* null, %struct.TYPE_12__* %6, %struct.TYPE_11__* %4, i32** %126)
  store i32* %127, i32** %13, align 8
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %137, %104
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 3
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @cmsFreeToneCurve(i32* null, i32* %135)
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %128

140:                                              ; preds = %128
  %141 = load i64, i64* @Verbose, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @stdout, align 4
  %145 = call i32 @fprintf(i32 %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32*, i32** %13, align 8
  store i32* %147, i32** %2, align 8
  br label %150

148:                                              ; preds = %63
  br label %149

149:                                              ; preds = %148, %58
  store i32* null, i32** %2, align 8
  br label %150

150:                                              ; preds = %149, %146, %55, %18
  %151 = load i32*, i32** %2, align 8
  ret i32* %151
}

declare dso_local i64 @TIFFGetField(i32*, i32, i8***, ...) #1

declare dso_local i32* @cmsOpenProfileFromMem(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @PrintProfileInformation(i32*, i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @SaveMemoryBlock(i32*, i32, i32*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(i32*, i32, i32**, i32**, i32**) #1

declare dso_local i32* @cmsBuildTabulatedToneCurve16(i32*, i32, i32*) #1

declare dso_local i32* @cmsCreateRGBProfileTHR(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32**) #1

declare dso_local i32 @cmsFreeToneCurve(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
