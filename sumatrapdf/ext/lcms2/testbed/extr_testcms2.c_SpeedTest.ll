; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"\0A\0AP E R F O R M A N C E   T E S T S\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"=================================\0A\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"8 bits on CLUT profiles\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"test5.icc\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"test3.icc\00", align 1
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"16 bits on CLUT profiles\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"32 bits on CLUT profiles\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"8 bits on Matrix-Shaper profiles\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"aRGBlcms2.icc\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"16 bits on Matrix-Shaper profiles\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"32 bits on Matrix-Shaper profiles\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"8 bits on SAME Matrix-Shaper profiles\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"16 bits on SAME Matrix-Shaper profiles\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"32 bits on SAME Matrix-Shaper profiles\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"8 bits on Matrix-Shaper profiles (AbsCol)\00", align 1
@INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"16 bits on Matrix-Shaper profiles (AbsCol)\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"32 bits on Matrix-Shaper profiles (AbsCol)\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"8 bits on curves\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"16 bits on curves\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"32 bits on curves\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"8 bits on CMYK profiles\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"test1.icc\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"test2.icc\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"16 bits on CMYK profiles\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"32 bits on CMYK profiles\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"8 bits on gray-to gray\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"gray3lcms2.icc\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"graylcms2.icc\00", align 1
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [24 x i8] c"16 bits on gray-to gray\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"32 bits on gray-to gray\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"8 bits on gray-to-lab gray\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"glablcms2.icc\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"16 bits on gray-to-lab gray\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"32 bits on gray-to-lab gray\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"8 bits on SAME gray-to-gray\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"16 bits on SAME gray-to-gray\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"32 bits on SAME gray-to-gray\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SpeedTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpeedTest() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @fflush(i32 %3)
  %5 = call i32 (...) @DbgThread()
  %6 = call i32 @cmsOpenProfileFromFile(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 (...) @DbgThread()
  %8 = call i32 @cmsOpenProfileFromFile(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %9 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %10 = call i32 @SpeedTest8bits(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %6, i32 %8, i32 %9)
  %11 = call i32 (...) @DbgThread()
  %12 = call i32 @cmsOpenProfileFromFile(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32 (...) @DbgThread()
  %14 = call i32 @cmsOpenProfileFromFile(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %16 = call i32 @SpeedTest16bits(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %12, i32 %14, i32 %15)
  %17 = call i32 (...) @DbgThread()
  %18 = call i32 @cmsOpenProfileFromFile(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 (...) @DbgThread()
  %20 = call i32 @cmsOpenProfileFromFile(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %22 = call i32 @SpeedTest32bits(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %18, i32 %20, i32 %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %24 = call i32 (...) @DbgThread()
  %25 = call i32 @cmsOpenProfileFromFile(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 (...) @DbgThread()
  %27 = call i32 @cmsOpenProfileFromFile(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %29 = call i32 @SpeedTest8bits(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %25, i32 %27, i32 %28)
  %30 = call i32 (...) @DbgThread()
  %31 = call i32 @cmsOpenProfileFromFile(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 (...) @DbgThread()
  %33 = call i32 @cmsOpenProfileFromFile(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %35 = call i32 @SpeedTest16bits(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %31, i32 %33, i32 %34)
  %36 = call i32 (...) @DbgThread()
  %37 = call i32 @cmsOpenProfileFromFile(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %38 = call i32 (...) @DbgThread()
  %39 = call i32 @cmsOpenProfileFromFile(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %41 = call i32 @SpeedTest32bits(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %37, i32 %39, i32 %40)
  %42 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %43 = call i32 (...) @DbgThread()
  %44 = call i32 @cmsOpenProfileFromFile(i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 (...) @DbgThread()
  %46 = call i32 @cmsOpenProfileFromFile(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %48 = call i32 @SpeedTest8bits(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %44, i32 %46, i32 %47)
  %49 = call i32 (...) @DbgThread()
  %50 = call i32 @cmsOpenProfileFromFile(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 (...) @DbgThread()
  %52 = call i32 @cmsOpenProfileFromFile(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %54 = call i32 @SpeedTest16bits(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %50, i32 %52, i32 %53)
  %55 = call i32 (...) @DbgThread()
  %56 = call i32 @cmsOpenProfileFromFile(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 (...) @DbgThread()
  %58 = call i32 @cmsOpenProfileFromFile(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %60 = call i32 @SpeedTest32bits(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %56, i32 %58, i32 %59)
  %61 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %62 = call i32 (...) @DbgThread()
  %63 = call i32 @cmsOpenProfileFromFile(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %64 = call i32 (...) @DbgThread()
  %65 = call i32 @cmsOpenProfileFromFile(i32 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @INTENT_ABSOLUTE_COLORIMETRIC, align 4
  %67 = call i32 @SpeedTest8bits(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i32 %63, i32 %65, i32 %66)
  %68 = call i32 (...) @DbgThread()
  %69 = call i32 @cmsOpenProfileFromFile(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 (...) @DbgThread()
  %71 = call i32 @cmsOpenProfileFromFile(i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @INTENT_ABSOLUTE_COLORIMETRIC, align 4
  %73 = call i32 @SpeedTest16bits(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %69, i32 %71, i32 %72)
  %74 = call i32 (...) @DbgThread()
  %75 = call i32 @cmsOpenProfileFromFile(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %76 = call i32 (...) @DbgThread()
  %77 = call i32 @cmsOpenProfileFromFile(i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @INTENT_ABSOLUTE_COLORIMETRIC, align 4
  %79 = call i32 @SpeedTest32bits(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i32 %75, i32 %77, i32 %78)
  %80 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %81 = call i32 (...) @CreateCurves()
  %82 = call i32 (...) @CreateCurves()
  %83 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %84 = call i32 @SpeedTest8bits(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  %85 = call i32 (...) @CreateCurves()
  %86 = call i32 (...) @CreateCurves()
  %87 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %88 = call i32 @SpeedTest16bits(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = call i32 (...) @CreateCurves()
  %90 = call i32 (...) @CreateCurves()
  %91 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %92 = call i32 @SpeedTest32bits(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %94 = call i32 (...) @DbgThread()
  %95 = call i32 @cmsOpenProfileFromFile(i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %96 = call i32 (...) @DbgThread()
  %97 = call i32 @cmsOpenProfileFromFile(i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %98 = call i32 @SpeedTest8bitsCMYK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %95, i32 %97)
  %99 = call i32 (...) @DbgThread()
  %100 = call i32 @cmsOpenProfileFromFile(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %101 = call i32 (...) @DbgThread()
  %102 = call i32 @cmsOpenProfileFromFile(i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %103 = call i32 @SpeedTest16bitsCMYK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 %100, i32 %102)
  %104 = call i32 (...) @DbgThread()
  %105 = call i32 @cmsOpenProfileFromFile(i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %106 = call i32 (...) @DbgThread()
  %107 = call i32 @cmsOpenProfileFromFile(i32 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %108 = call i32 @SpeedTest32bitsCMYK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %105, i32 %107)
  %109 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %110 = call i32 (...) @DbgThread()
  %111 = call i32 @cmsOpenProfileFromFile(i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %112 = call i32 (...) @DbgThread()
  %113 = call i32 @cmsOpenProfileFromFile(i32 %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %115 = call i32 @SpeedTest8bitsGray(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 %111, i32 %113, i32 %114)
  %116 = call i32 (...) @DbgThread()
  %117 = call i32 @cmsOpenProfileFromFile(i32 %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %118 = call i32 (...) @DbgThread()
  %119 = call i32 @cmsOpenProfileFromFile(i32 %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %121 = call i32 @SpeedTest16bitsGray(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 %117, i32 %119, i32 %120)
  %122 = call i32 (...) @DbgThread()
  %123 = call i32 @cmsOpenProfileFromFile(i32 %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %124 = call i32 (...) @DbgThread()
  %125 = call i32 @cmsOpenProfileFromFile(i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %127 = call i32 @SpeedTest32bitsGray(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 %123, i32 %125, i32 %126)
  %128 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %129 = call i32 (...) @DbgThread()
  %130 = call i32 @cmsOpenProfileFromFile(i32 %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %131 = call i32 (...) @DbgThread()
  %132 = call i32 @cmsOpenProfileFromFile(i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %134 = call i32 @SpeedTest8bitsGray(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 %130, i32 %132, i32 %133)
  %135 = call i32 (...) @DbgThread()
  %136 = call i32 @cmsOpenProfileFromFile(i32 %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %137 = call i32 (...) @DbgThread()
  %138 = call i32 @cmsOpenProfileFromFile(i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %140 = call i32 @SpeedTest16bitsGray(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0), i32 %136, i32 %138, i32 %139)
  %141 = call i32 (...) @DbgThread()
  %142 = call i32 @cmsOpenProfileFromFile(i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %143 = call i32 (...) @DbgThread()
  %144 = call i32 @cmsOpenProfileFromFile(i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %146 = call i32 @SpeedTest32bitsGray(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i32 %142, i32 %144, i32 %145)
  %147 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %148 = call i32 (...) @DbgThread()
  %149 = call i32 @cmsOpenProfileFromFile(i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %150 = call i32 (...) @DbgThread()
  %151 = call i32 @cmsOpenProfileFromFile(i32 %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %152 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %153 = call i32 @SpeedTest8bitsGray(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i32 %149, i32 %151, i32 %152)
  %154 = call i32 (...) @DbgThread()
  %155 = call i32 @cmsOpenProfileFromFile(i32 %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %156 = call i32 (...) @DbgThread()
  %157 = call i32 @cmsOpenProfileFromFile(i32 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %159 = call i32 @SpeedTest16bitsGray(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0), i32 %155, i32 %157, i32 %158)
  %160 = call i32 (...) @DbgThread()
  %161 = call i32 @cmsOpenProfileFromFile(i32 %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %162 = call i32 (...) @DbgThread()
  %163 = call i32 @cmsOpenProfileFromFile(i32 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %165 = call i32 @SpeedTest32bitsGray(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i32 %161, i32 %163, i32 %164)
  %166 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @SpeedTest8bits(i8*, i32, i32, i32) #1

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @SpeedTest16bits(i8*, i32, i32, i32) #1

declare dso_local i32 @SpeedTest32bits(i8*, i32, i32, i32) #1

declare dso_local i32 @CreateCurves(...) #1

declare dso_local i32 @SpeedTest8bitsCMYK(i8*, i32, i32) #1

declare dso_local i32 @SpeedTest16bitsCMYK(i8*, i32, i32) #1

declare dso_local i32 @SpeedTest32bitsCMYK(i8*, i32, i32) #1

declare dso_local i32 @SpeedTest8bitsGray(i8*, i32, i32, i32) #1

declare dso_local i32 @SpeedTest16bitsGray(i8*, i32, i32, i32) #1

declare dso_local i32 @SpeedTest32bitsGray(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
