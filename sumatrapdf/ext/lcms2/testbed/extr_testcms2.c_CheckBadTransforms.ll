; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckBadTransforms.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckBadTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_RGB_8 = common dso_local global i32 0, align 4
@TYPE_CMYK_8 = common dso_local global i32 0, align 4
@TYPE_Lab_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"test1.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@TYPE_BGR_8 = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckBadTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckBadTransforms() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 (...) @DbgThread()
  %7 = call i32* @cmsCreate_sRGBProfile(i32 %6)
  store i32* %7, i32** %2, align 8
  %8 = call i32 (...) @DbgThread()
  %9 = call i32* @cmsCreateTransform(i32 %8, i32* null, i32 0, i32* null, i32 0, i32 0, i32 0)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = call i32 (...) @DbgThread()
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @cmsDeleteTransform(i32 %13, i32* %14)
  store i32 0, i32* %1, align 4
  br label %95

16:                                               ; preds = %0
  %17 = call i32 (...) @DbgThread()
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @TYPE_RGB_8, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @TYPE_RGB_8, align 4
  %22 = call i32* @cmsCreateTransform(i32 %17, i32* %18, i32 %19, i32* %20, i32 %21, i32 12345, i32 0)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @cmsDeleteTransform(i32 %26, i32* %27)
  store i32 0, i32* %1, align 4
  br label %95

29:                                               ; preds = %16
  %30 = call i32 (...) @DbgThread()
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @TYPE_CMYK_8, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @TYPE_RGB_8, align 4
  %35 = call i32* @cmsCreateTransform(i32 %30, i32* %31, i32 %32, i32* %33, i32 %34, i32 0, i32 0)
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = call i32 (...) @DbgThread()
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @cmsDeleteTransform(i32 %39, i32* %40)
  store i32 0, i32* %1, align 4
  br label %95

42:                                               ; preds = %29
  %43 = call i32 (...) @DbgThread()
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @TYPE_RGB_8, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @TYPE_CMYK_8, align 4
  %48 = call i32* @cmsCreateTransform(i32 %43, i32* %44, i32 %45, i32* %46, i32 %47, i32 1, i32 0)
  store i32* %48, i32** %3, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = call i32 (...) @DbgThread()
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @cmsDeleteTransform(i32 %52, i32* %53)
  store i32 0, i32* %1, align 4
  br label %95

55:                                               ; preds = %42
  %56 = call i32 (...) @DbgThread()
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @TYPE_RGB_8, align 4
  %59 = load i32, i32* @TYPE_Lab_8, align 4
  %60 = call i32* @cmsCreateTransform(i32 %56, i32* %57, i32 %58, i32* null, i32 %59, i32 1, i32 0)
  store i32* %60, i32** %3, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = call i32 (...) @DbgThread()
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @cmsDeleteTransform(i32 %64, i32* %65)
  store i32 0, i32* %1, align 4
  br label %95

67:                                               ; preds = %55
  %68 = call i32 (...) @DbgThread()
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @cmsCloseProfile(i32 %68, i32* %69)
  %71 = call i32 (...) @DbgThread()
  %72 = call i32* @cmsOpenProfileFromFile(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %72, i32** %4, align 8
  %73 = call i32 (...) @DbgThread()
  %74 = call i32* @cmsCreate_sRGBProfile(i32 %73)
  store i32* %74, i32** %5, align 8
  %75 = call i32 (...) @DbgThread()
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @TYPE_BGR_8, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @TYPE_BGR_8, align 4
  %80 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %81 = call i32* @cmsCreateTransform(i32 %75, i32* %76, i32 %77, i32* %78, i32 %79, i32 %80, i32 0)
  store i32* %81, i32** %3, align 8
  %82 = call i32 (...) @DbgThread()
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @cmsCloseProfile(i32 %82, i32* %83)
  %85 = call i32 (...) @DbgThread()
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @cmsCloseProfile(i32 %85, i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %67
  %91 = call i32 (...) @DbgThread()
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @cmsDeleteTransform(i32 %91, i32* %92)
  store i32 0, i32* %1, align 4
  br label %95

94:                                               ; preds = %67
  store i32 1, i32* %1, align 4
  br label %95

95:                                               ; preds = %94, %90, %63, %51, %38, %25, %12
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

declare dso_local i32* @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
