; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckProofingXFORMFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckProofingXFORMFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_RGB_FLT = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsFLAGS_SOFTPROOFING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckProofingXFORMFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckProofingXFORMFloat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @Create_AboveRGB()
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @DbgThread()
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @TYPE_RGB_FLT, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @TYPE_RGB_FLT, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %12 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %13 = load i32, i32* @cmsFLAGS_SOFTPROOFING, align 4
  %14 = call i32 @cmsCreateProofingTransform(i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = call i32 (...) @DbgThread()
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @cmsCloseProfile(i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @CheckFloatlinearXFORM(i32 %18, i32 3)
  store i32 %19, i32* %3, align 4
  %20 = call i32 (...) @DbgThread()
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cmsDeleteTransform(i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @Create_AboveRGB(...) #1

declare dso_local i32 @cmsCreateProofingTransform(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @CheckFloatlinearXFORM(i32, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
