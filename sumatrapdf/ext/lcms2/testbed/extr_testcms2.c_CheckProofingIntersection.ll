; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckProofingIntersection.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckProofingIntersection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_RGB_FLT = common dso_local global i32 0, align 4
@TYPE_GRAY_FLT = common dso_local global i32 0, align 4
@INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsFLAGS_GAMUTCHECK = common dso_local global i32 0, align 4
@cmsFLAGS_SOFTPROOFING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckProofingIntersection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckProofingIntersection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = call i32 (...) @DbgThread()
  %7 = call i32 @cmsCreate_sRGBProfile(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = call i32 (...) @Create_AboveRGB()
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @DbgThread()
  %10 = call i32 @cmsCreateNULLProfile(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = call i32 (...) @DbgThread()
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TYPE_RGB_FLT, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @INTENT_ABSOLUTE_COLORIMETRIC, align 4
  %18 = load i32, i32* @INTENT_ABSOLUTE_COLORIMETRIC, align 4
  %19 = load i32, i32* @cmsFLAGS_GAMUTCHECK, align 4
  %20 = load i32, i32* @cmsFLAGS_SOFTPROOFING, align 4
  %21 = or i32 %19, %20
  %22 = call i32* @cmsCreateProofingTransform(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = call i32 (...) @DbgThread()
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @cmsCloseProfile(i32 %23, i32 %24)
  %26 = call i32 (...) @DbgThread()
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cmsCloseProfile(i32 %26, i32 %27)
  %29 = call i32 (...) @DbgThread()
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @cmsCloseProfile(i32 %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

35:                                               ; preds = %0
  %36 = call i32 (...) @DbgThread()
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @cmsDeleteTransform(i32 %36, i32* %37)
  store i32 1, i32* %1, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @Create_AboveRGB(...) #1

declare dso_local i32 @cmsCreateNULLProfile(i32) #1

declare dso_local i32* @cmsCreateProofingTransform(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
