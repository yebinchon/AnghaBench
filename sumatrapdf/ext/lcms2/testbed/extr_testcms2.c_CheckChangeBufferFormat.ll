; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckChangeBufferFormat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckChangeBufferFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_RGB_16 = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@TYPE_BGR_16 = common dso_local global i32 0, align 4
@TYPE_RGB_DBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckChangeBufferFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckChangeBufferFormat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 (...) @DbgThread()
  %6 = call i32 @cmsCreate_sRGBProfile(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @DbgThread()
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @TYPE_RGB_16, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @TYPE_RGB_16, align 4
  %12 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %13 = call i32* @cmsCreateTransform(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 0)
  store i32* %13, i32** %3, align 8
  %14 = call i32 (...) @DbgThread()
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @cmsCloseProfile(i32 %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %83

20:                                               ; preds = %0
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @CheckOneRGB(i32* %21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %83

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @CheckOneRGB(i32* %26, i32 120, i32 0, i32 0, i32 120, i32 0, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %83

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @CheckOneRGB(i32* %31, i32 0, i32 222, i32 255, i32 0, i32 222, i32 255)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %83

35:                                               ; preds = %30
  %36 = call i32 (...) @DbgThread()
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @TYPE_BGR_16, align 4
  %39 = load i32, i32* @TYPE_RGB_16, align 4
  %40 = call i32* @cmsCloneTransformChangingFormats(i32 %36, i32* %37, i32 %38, i32 %39)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %83

44:                                               ; preds = %35
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @CheckOneRGB(i32* %45, i32 0, i32 0, i32 123, i32 123, i32 0, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %1, align 4
  br label %83

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @CheckOneRGB(i32* %50, i32 154, i32 234, i32 0, i32 0, i32 234, i32 154)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %83

54:                                               ; preds = %49
  %55 = call i32 (...) @DbgThread()
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @cmsDeleteTransform(i32 %55, i32* %56)
  %58 = call i32 (...) @DbgThread()
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @TYPE_RGB_DBL, align 4
  %61 = load i32, i32* @TYPE_RGB_DBL, align 4
  %62 = call i32* @cmsCloneTransformChangingFormats(i32 %58, i32* %59, i32 %60, i32 %61)
  store i32* %62, i32** %4, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %83

66:                                               ; preds = %54
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @CheckOneRGB_double(i32* %67, double 2.000000e-01, double 0.000000e+00, i32 0, double 2.000000e-01, double 0.000000e+00, i32 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 0, i32* %1, align 4
  br label %83

71:                                               ; preds = %66
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @CheckOneRGB_double(i32* %72, double 0.000000e+00, double 9.000000e-01, i32 1, double 0.000000e+00, double 9.000000e-01, i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 0, i32* %1, align 4
  br label %83

76:                                               ; preds = %71
  %77 = call i32 (...) @DbgThread()
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @cmsDeleteTransform(i32 %77, i32* %78)
  %80 = call i32 (...) @DbgThread()
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @cmsDeleteTransform(i32 %80, i32* %81)
  store i32 1, i32* %1, align 4
  br label %83

83:                                               ; preds = %76, %75, %70, %65, %53, %48, %43, %34, %29, %24, %19
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @CheckOneRGB(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @cmsCloneTransformChangingFormats(i32, i32*, i32, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

declare dso_local i32 @CheckOneRGB_double(i32*, double, double, i32, double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
