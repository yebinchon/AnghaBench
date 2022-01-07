; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_OpenProfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_OpenProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"*Lab2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"*Lab4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"*Lab\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"*LabD65\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"*XYZ\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"*Gray22\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"*Gray30\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"*srgb\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"*null\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"*Lin2222\00", align 1
@cmsSigCmykData = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @OpenProfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenProfile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32*], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @cmsCreate_sRGBProfileTHR(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %117

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @cmsstrcasecmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @cmsCreateLab2ProfileTHR(i32 %23, i32* null)
  store i32 %24, i32* %2, align 4
  br label %117

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @cmsstrcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @cmsCreateLab4ProfileTHR(i32 %30, i32* null)
  store i32 %31, i32* %2, align 4
  br label %117

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @cmsstrcasecmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @cmsCreateLab4ProfileTHR(i32 %37, i32* null)
  store i32 %38, i32* %2, align 4
  br label %117

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @cmsstrcasecmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call i32 @cmsWhitePointFromTemp(i32* %5, i32 6504)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @cmsCreateLab4ProfileTHR(i32 %45, i32* %5)
  store i32 %46, i32* %2, align 4
  br label %117

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = call i64 @cmsstrcasecmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @cmsCreateXYZProfileTHR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %117

54:                                               ; preds = %47
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @cmsstrcasecmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = call i32* @cmsBuildGamma(i32 %59, double 2.200000e+00)
  store i32* %60, i32** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (...) @cmsD50_xyY()
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @cmsCreateGrayProfileTHR(i32 %61, i32 %62, i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @cmsFreeToneCurve(i32* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %117

68:                                               ; preds = %54
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @cmsstrcasecmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = call i32* @cmsBuildGamma(i32 %73, double 3.000000e+00)
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (...) @cmsD50_xyY()
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @cmsCreateGrayProfileTHR(i32 %75, i32 %76, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @cmsFreeToneCurve(i32* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %117

82:                                               ; preds = %68
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @cmsstrcasecmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @cmsCreate_sRGBProfileTHR(i32 %87)
  store i32 %88, i32* %2, align 4
  br label %117

89:                                               ; preds = %82
  %90 = load i8*, i8** %3, align 8
  %91 = call i64 @cmsstrcasecmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @cmsCreateNULLProfileTHR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %117

96:                                               ; preds = %89
  %97 = load i8*, i8** %3, align 8
  %98 = call i64 @cmsstrcasecmp(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = call i32* @cmsBuildGamma(i32 0, double 2.200000e+00)
  store i32* %101, i32** %10, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 3
  store i32* %102, i32** %103, align 8
  %104 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 2
  store i32* %102, i32** %104, align 16
  %105 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 1
  store i32* %102, i32** %105, align 8
  %106 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  store i32* %102, i32** %106, align 16
  %107 = load i32, i32* @cmsSigCmykData, align 4
  %108 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %109 = call i32 @cmsCreateLinearizationDeviceLink(i32 %107, i32** %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @cmsFreeToneCurve(i32* %110)
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %2, align 4
  br label %117

113:                                              ; preds = %96
  %114 = load i32, i32* %4, align 4
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @cmsOpenProfileFromFileTHR(i32 %114, i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %100, %93, %86, %72, %58, %51, %43, %36, %29, %22, %15
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @cmsCreate_sRGBProfileTHR(i32) #1

declare dso_local i64 @cmsstrcasecmp(i8*, i8*) #1

declare dso_local i32 @cmsCreateLab2ProfileTHR(i32, i32*) #1

declare dso_local i32 @cmsCreateLab4ProfileTHR(i32, i32*) #1

declare dso_local i32 @cmsWhitePointFromTemp(i32*, i32) #1

declare dso_local i32 @cmsCreateXYZProfileTHR(i32) #1

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @cmsCreateGrayProfileTHR(i32, i32, i32*) #1

declare dso_local i32 @cmsD50_xyY(...) #1

declare dso_local i32 @cmsFreeToneCurve(i32*) #1

declare dso_local i32 @cmsCreateNULLProfileTHR(i32) #1

declare dso_local i32 @cmsCreateLinearizationDeviceLink(i32, i32**) #1

declare dso_local i32 @cmsOpenProfileFromFileTHR(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
