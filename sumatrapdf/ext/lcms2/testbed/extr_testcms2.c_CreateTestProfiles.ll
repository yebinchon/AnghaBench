; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CreateTestProfiles.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CreateTestProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"sRGB profile\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sRGBlcms2.icc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"aRGB profile\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"aRGBlcms2.icc\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Gray profile\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"graylcms2.icc\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Gray 3.0 profile\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gray3lcms2.icc\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Gray Lab profile\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"glablcms2.icc\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Linearization profile\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"linlcms2.icc\00", align 1
@cmsSigCmykData = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"Ink-limiting profile\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"limitlcms2.icc\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Lab 2 identity profile\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"labv2lcms2.icc\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Lab 4 identity profile\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"labv4lcms2.icc\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"XYZ identity profile\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"xyzlcms2.icc\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"NULL profile\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"nullcms2.icc\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"BCHS profile\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"bchslcms2.icc\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"Fake CMYK profile\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"lcms2cmyk.icc\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"brightness.icc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CreateTestProfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateTestProfiles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @DbgThread()
  %4 = call i32* @cmsCreate_sRGBProfile(i32 %3)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @OneVirtual(i32* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %101

9:                                                ; preds = %0
  %10 = call i32* (...) @Create_AboveRGB()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @OneVirtual(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %101

15:                                               ; preds = %9
  %16 = call i32* (...) @Create_Gray22()
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @OneVirtual(i32* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %101

21:                                               ; preds = %15
  %22 = call i32* (...) @Create_Gray30()
  store i32* %22, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @OneVirtual(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %101

27:                                               ; preds = %21
  %28 = call i32* (...) @Create_GrayLab()
  store i32* %28, i32** %2, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @OneVirtual(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %101

33:                                               ; preds = %27
  %34 = call i32* (...) @Create_CMYK_DeviceLink()
  store i32* %34, i32** %2, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @OneVirtual(i32* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %101

39:                                               ; preds = %33
  %40 = call i32 (...) @DbgThread()
  %41 = load i32, i32* @cmsSigCmykData, align 4
  %42 = call i32* @cmsCreateInkLimitingDeviceLink(i32 %40, i32 %41, i32 150)
  store i32* %42, i32** %2, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %101

46:                                               ; preds = %39
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @OneVirtual(i32* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %101

51:                                               ; preds = %46
  %52 = call i32 (...) @DbgThread()
  %53 = call i32* @cmsCreateLab2Profile(i32 %52, i32* null)
  store i32* %53, i32** %2, align 8
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @OneVirtual(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %1, align 4
  br label %101

58:                                               ; preds = %51
  %59 = call i32 (...) @DbgThread()
  %60 = call i32* @cmsCreateLab4Profile(i32 %59, i32* null)
  store i32* %60, i32** %2, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @OneVirtual(i32* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 0, i32* %1, align 4
  br label %101

65:                                               ; preds = %58
  %66 = call i32 (...) @DbgThread()
  %67 = call i32* @cmsCreateXYZProfile(i32 %66)
  store i32* %67, i32** %2, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @OneVirtual(i32* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i32 0, i32* %1, align 4
  br label %101

72:                                               ; preds = %65
  %73 = call i32 (...) @DbgThread()
  %74 = call i32* @cmsCreateNULLProfile(i32 %73)
  store i32* %74, i32** %2, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @OneVirtual(i32* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  store i32 0, i32* %1, align 4
  br label %101

79:                                               ; preds = %72
  %80 = call i32 (...) @DbgThread()
  %81 = call i32* @cmsCreateBCHSWabstractProfile(i32 %80, i32 17, i32 0, double 0.000000e+00, i32 0, i32 0, i32 5000, i32 6000)
  store i32* %81, i32** %2, align 8
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @OneVirtual(i32* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 0, i32* %1, align 4
  br label %101

86:                                               ; preds = %79
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32* @CreateFakeCMYK(i32 300, i32 %87)
  store i32* %88, i32** %2, align 8
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @OneVirtual(i32* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  store i32 0, i32* %1, align 4
  br label %101

93:                                               ; preds = %86
  %94 = call i32 (...) @DbgThread()
  %95 = call i32* @cmsCreateBCHSWabstractProfile(i32 %94, i32 17, i32 0, double 1.200000e+00, i32 0, i32 3, i32 5000, i32 5000)
  store i32* %95, i32** %2, align 8
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @OneVirtual(i32* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  store i32 0, i32* %1, align 4
  br label %101

100:                                              ; preds = %93
  store i32 1, i32* %1, align 4
  br label %101

101:                                              ; preds = %100, %99, %92, %85, %78, %71, %64, %57, %50, %45, %38, %32, %26, %20, %14, %8
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

declare dso_local i32* @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @OneVirtual(i32*, i8*, i8*) #1

declare dso_local i32* @Create_AboveRGB(...) #1

declare dso_local i32* @Create_Gray22(...) #1

declare dso_local i32* @Create_Gray30(...) #1

declare dso_local i32* @Create_GrayLab(...) #1

declare dso_local i32* @Create_CMYK_DeviceLink(...) #1

declare dso_local i32* @cmsCreateInkLimitingDeviceLink(i32, i32, i32) #1

declare dso_local i32* @cmsCreateLab2Profile(i32, i32*) #1

declare dso_local i32* @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32* @cmsCreateXYZProfile(i32) #1

declare dso_local i32* @cmsCreateNULLProfile(i32) #1

declare dso_local i32* @cmsCreateBCHSWabstractProfile(i32, i32, i32, double, i32, i32, i32, i32) #1

declare dso_local i32* @CreateFakeCMYK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
