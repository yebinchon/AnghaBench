; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/common/extr_vprf.c_OpenStockProfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/common/extr_vprf.c_OpenStockProfile.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenStockProfile(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32*], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @cmsCreate_sRGBProfile(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %125

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @cmsstrcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @cmsCreateLab2Profile(i32 %24, i32* null)
  store i32 %25, i32* %3, align 4
  br label %125

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @cmsstrcasecmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @cmsCreateLab4Profile(i32 %31, i32* null)
  store i32 %32, i32* %3, align 4
  br label %125

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @cmsstrcasecmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @cmsCreateLab4Profile(i32 %38, i32* null)
  store i32 %39, i32* %3, align 4
  br label %125

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @cmsstrcasecmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @cmsWhitePointFromTemp(i32 %45, i32* %6, i32 6504)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @cmsCreateLab4Profile(i32 %47, i32* %6)
  store i32 %48, i32* %3, align 4
  br label %125

49:                                               ; preds = %40
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @cmsstrcasecmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @cmsCreateXYZProfile(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %125

56:                                               ; preds = %49
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @cmsstrcasecmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = call i32* @cmsBuildGamma(i32 %61, double 2.200000e+00)
  store i32* %62, i32** %7, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @cmsD50_xyY(i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @cmsCreateGrayProfile(i32 %63, i32 %65, i32* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @cmsFreeToneCurve(i32 %68, i32* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %125

72:                                               ; preds = %56
  %73 = load i8*, i8** %5, align 8
  %74 = call i64 @cmsstrcasecmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = call i32* @cmsBuildGamma(i32 %77, double 3.000000e+00)
  store i32* %78, i32** %9, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @cmsD50_xyY(i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @cmsCreateGrayProfile(i32 %79, i32 %81, i32* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @cmsFreeToneCurve(i32 %84, i32* %85)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  br label %125

88:                                               ; preds = %72
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @cmsstrcasecmp(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @cmsCreate_sRGBProfile(i32 %93)
  store i32 %94, i32* %3, align 4
  br label %125

95:                                               ; preds = %88
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 @cmsstrcasecmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @cmsCreateNULLProfile(i32 %100)
  store i32 %101, i32* %3, align 4
  br label %125

102:                                              ; preds = %95
  %103 = load i8*, i8** %5, align 8
  %104 = call i64 @cmsstrcasecmp(i8* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %102
  %107 = call i32* @cmsBuildGamma(i32 0, double 2.200000e+00)
  store i32* %107, i32** %11, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 3
  store i32* %108, i32** %109, align 8
  %110 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 2
  store i32* %108, i32** %110, align 16
  %111 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 1
  store i32* %108, i32** %111, align 8
  %112 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  store i32* %108, i32** %112, align 16
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @cmsSigCmykData, align 4
  %115 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %116 = call i32 @cmsCreateLinearizationDeviceLink(i32 %113, i32 %114, i32** %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @cmsFreeToneCurve(i32 %117, i32* %118)
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %3, align 4
  br label %125

121:                                              ; preds = %102
  %122 = load i32, i32* %4, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @cmsOpenProfileFromFile(i32 %122, i8* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %106, %99, %92, %76, %60, %53, %44, %37, %30, %23, %16
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i64 @cmsstrcasecmp(i8*, i8*) #1

declare dso_local i32 @cmsCreateLab2Profile(i32, i32*) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @cmsWhitePointFromTemp(i32, i32*, i32) #1

declare dso_local i32 @cmsCreateXYZProfile(i32) #1

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @cmsCreateGrayProfile(i32, i32, i32*) #1

declare dso_local i32 @cmsD50_xyY(i32) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @cmsCreateNULLProfile(i32) #1

declare dso_local i32 @cmsCreateLinearizationDeviceLink(i32, i32, i32**) #1

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
