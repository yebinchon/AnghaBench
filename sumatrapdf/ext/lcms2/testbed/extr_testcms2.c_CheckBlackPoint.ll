; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckBlackPoint.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckBlackPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"test5.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"test1.icc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"lcms2cmyk.icc\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"test2.icc\00", align 1
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckBlackPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckBlackPoint() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @DbgThread()
  %5 = call i32 @cmsOpenProfileFromFile(i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @DbgThread()
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %9 = call i32 @cmsDetectDestinationBlackPoint(i32 %6, i32* %2, i32 %7, i32 %8, i32 0)
  %10 = call i32 (...) @DbgThread()
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @cmsCloseProfile(i32 %10, i32 %11)
  %13 = call i32 (...) @DbgThread()
  %14 = call i32 @cmsOpenProfileFromFile(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %1, align 4
  %15 = call i32 (...) @DbgThread()
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %18 = call i32 @cmsDetectDestinationBlackPoint(i32 %15, i32* %2, i32 %16, i32 %17, i32 0)
  %19 = call i32 (...) @DbgThread()
  %20 = call i32 @cmsXYZ2Lab(i32 %19, i32* null, i32* %3, i32* %2)
  %21 = call i32 (...) @DbgThread()
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @cmsCloseProfile(i32 %21, i32 %22)
  %24 = call i32 (...) @DbgThread()
  %25 = call i32 @cmsOpenProfileFromFile(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %1, align 4
  %26 = call i32 (...) @DbgThread()
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %29 = call i32 @cmsDetectDestinationBlackPoint(i32 %26, i32* %2, i32 %27, i32 %28, i32 0)
  %30 = call i32 (...) @DbgThread()
  %31 = call i32 @cmsXYZ2Lab(i32 %30, i32* null, i32* %3, i32* %2)
  %32 = call i32 (...) @DbgThread()
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @cmsCloseProfile(i32 %32, i32 %33)
  %35 = call i32 (...) @DbgThread()
  %36 = call i32 @cmsOpenProfileFromFile(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %1, align 4
  %37 = call i32 (...) @DbgThread()
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %40 = call i32 @cmsDetectDestinationBlackPoint(i32 %37, i32* %2, i32 %38, i32 %39, i32 0)
  %41 = call i32 (...) @DbgThread()
  %42 = call i32 @cmsXYZ2Lab(i32 %41, i32* null, i32* %3, i32* %2)
  %43 = call i32 (...) @DbgThread()
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @cmsCloseProfile(i32 %43, i32 %44)
  %46 = call i32 (...) @DbgThread()
  %47 = call i32 @cmsOpenProfileFromFile(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %1, align 4
  %48 = call i32 (...) @DbgThread()
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %51 = call i32 @cmsDetectDestinationBlackPoint(i32 %48, i32* %2, i32 %49, i32 %50, i32 0)
  %52 = call i32 (...) @DbgThread()
  %53 = call i32 @cmsXYZ2Lab(i32 %52, i32* null, i32* %3, i32* %2)
  %54 = call i32 (...) @DbgThread()
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @cmsCloseProfile(i32 %54, i32 %55)
  ret i32 1
}

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsDetectDestinationBlackPoint(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @cmsXYZ2Lab(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
